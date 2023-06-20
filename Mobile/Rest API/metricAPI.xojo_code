#tag Module
Protected Module metricAPI
	#tag Method, Flags = &h0
		Sub getMetrics()
		  Var content As String
		  if app.player <> nil then
		    var MyConnection as new URLConnection
		    var query as string = App.hostname  +"/"+ "metrics"+"?player='"+app.player.value("id")+"'"
		    content = MyConnection.SendSync("GET",query , 30)
		    '
		    ' Now we need to decode the response
		    '
		    var theResult as Dictionary = ParseJSON(content)
		    '
		    if theResult.HasKey("metrics") then ' Request was successful
		      ' now we are going to get each metric record and update or insert
		      '
		      var theRows() as dictionary = theResult.value("metrics")
		      var rs as RowSet
		      for each theRow as dictionary in theRows
		        rs = app.db.SelectSQL("select * from metrics where player = ? and date = ?", app.player.value("id"), theRow.value("date"))
		        if rs = nil then
		          var dbRow as DatabaseRow = new databaseRow
		          dbrow.Column("numberOfSteps").IntegerValue = theRow.value("numberOfSteps")
		          dbrow.Column("distance").IntegerValue = theRow.value("distance")
		          dbrow.Column("floorsAscended").IntegerValue = theRow.value("floorsAscended")
		          dbrow.Column("floorsDescended").IntegerValue = theRow.value("floorsDescended")
		          dbrow.Column("currentCadence").IntegerValue = theRow.value("currentCadence")
		          dbrow.Column("﻿averageActivePace").IntegerValue = theRow.value("averageActivePace")
		          dbrow.Column("currentPace").IntegerValue = theRow.value("currentPace")
		          
		          app.DB.AddRow("activity_history",dbRow)
		        else
		          rs.EditRow
		          rs.column("numberOfSteps").IntegerValue = theRow.value("numberOfSteps")
		          rs.column("distance").IntegerValue = theRow.value("distance")
		          rs.column("floorsAscended").IntegerValue = theRow.value("floorsAscended")
		          rs.column("floorsDescended").IntegerValue = theRow.value("floorsDescended")
		          rs.column("currentCadence").IntegerValue = theRow.value("currentCadence")
		          rs.column("averageActivePace").IntegerValue = theRow.value("averageActivePace")
		          rs.column("currentPace").IntegerValue = theRow.value("currentPace")
		          rs.SaveRow
		        end if
		      next
		    else
		      ' it was an error
		    end if
		  end if
		  'return theResult
		  
		  
		  
		  'REPLACE INTO table(column_list)
		  'VALUES(value_list);
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub syncMetrics()
		  ' we want to get the metrics records available on the server
		  '
		  Try
		    
		    'app.DB.BeginTransaction
		    'getMetrics ' gets and inserts all the metrics records
		    'app.DB.CommitTransaction
		  Catch error As DatabaseException
		    MessageBox("Error: " + error.Message)
		    app.DB.RollbackTransaction
		  End Try
		  '
		  ' now we are going to get all the activity_history records and sync them with the server
		  '
		  var rs as rowset = app.DB.SelectSQL("Select * from activity_history")
		  var theEvents() as dictionary
		  for each a as databaserow in rs
		    ' we convert each row to a dictionary and add it to the array of dictionaries
		    '
		    var theRow as new dictionary
		    
		    var i as integer = 0
		    for i = 0 to a.ColumnCount-1
		      var theColumn as databaseColumn = a.columnat(i)
		      select case  theColumn.Type
		      case 18 ' string
		        theRow.value(theColumn.name) = TheColumn.StringValue.DefineEncoding(Encodings.UTF8)
		      case 3 ' integer
		        theRow.value(theColumn.name) =  TheColumn.IntegerValue
		      case 10 ' timestamp
		        theRow.value(theColumn.name) =  TheColumn.DateTimeValue
		      case 7 ' double
		        theRow.value(theColumn.name) =  TheColumn.DoubleValue
		      case 16 ' blob
		        theRow.value(theColumn.name) =  TheColumn.PictureValue
		      case 12 ' boolean
		        theRow.value(theColumn.name) =  TheColumn.BooleanValue
		      else
		        theRow.value(theColumn.name) =  TheColumn.Value
		      end select
		    next i
		    theRow.value("player") = app.player.value("id")
		    theEvents.addrow(theRow)
		  next
		  
		  var success as boolean = metricAPI.updateMetric(theEvents)
		  
		  if success then
		    'activityEventQueue.RemoveAt(0)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function updateMetric(theRecord() as Dictionary) As Boolean
		  ' essentially we will send a metric record to the server
		  ' the server will decide whether to perform an insert or update
		  '
		  Var content As String
		  var MyConnection as new URLConnection
		  var body as dictionary = new dictionary
		  body.value("player") = app.player.value("id")
		  body.value("metrics") = theRecord
		  var query as string = App.hostname  +"/"+ "metric"
		  try
		    var a as string = GenerateJson(body)
		    MyConnection.SetRequestContent(a, "application/json")
		    content = MyConnection.SendSync("POST",query , 60)
		    if MyConnection.HTTPStatusCode<> 200 then
		      msgbox("error")
		    end if
		  catch
		    msgbox("error")
		  end try
		  '
		  ' Now we need to decode the response
		  '
		  if myConnection.HTTPStatusCode =200 then ' All ok
		    return true
		  else 
		    return false
		  end if
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
