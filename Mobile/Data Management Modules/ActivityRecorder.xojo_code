#tag Module
Protected Module ActivityRecorder
	#tag Method, Flags = &h0
		Sub addToQueue(entryType as string, theData as CMPedometerData)
		  ' This method is called on the main thread to allow the callback handlers to add data to a queue
		  ' in order for the background task to process and update the database with the information
		  '
		  ' all we want to do in this block is to build a dictionary and pass to the queue
		  '
		  app.db.BeginTransaction
		  var theRow as new DatabaseRow()
		  var theDate as DateTime
		  var thequery as string
		  var rs as RowSet
		  replaceMetric("numberOfSteps", theData.numberOfSteps, theData)
		  replaceMetric("averageActivePace", theData.averageActivePace, theData)
		  replaceMetric("currentCadence", theData.currentCadence, theData)
		  replaceMetric("currentPace", theData.currentPace, theData)
		  replaceMetric("distance", theData.distance, theData)
		  replaceMetric("floorsAscended", theData.floorsAscended, theData)
		  replaceMetric("floorsDescended", theData.floorsDescended, theData)
		  app.db.CommitTransaction
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub replaceMetric(metric_type as string, theValue as double, theData as CMPedometerData)
		  var theRow as new DatabaseRow()
		  var theDate as DateTime
		  var thequery as string
		  var rs as RowSet
		  theQuery = "select * from activity_history where date=? and source = ? and metric_type=?"
		  theRow.Column("endDate") = new DateTime(theData.endDate)
		  theRow.Column("startDate") = new DateTime(theData.startDate)
		  theDate = theData.startDate
		  theDate = thedate.SubtractInterval(0,0,0,thedate.hour, thedate.Minute,thedate.Second,thedate.Nanosecond)
		  rs = app.db.SelectSQL(theQuery,  theDate.SQLDate, "iPhone", metric_type)
		  if rs.RowCount = 0 then
		    theRow.Column("date") = theDate.SQLDate
		    theRow.Column("source") = "iPhone"
		    theRow.Column("metric_type") = metric_type
		    theRow.Column("metric_value") =theValue
		    '
		    app.DB.addrow("activity_history", theRow)
		  else
		    updateMetric(rs,theValue)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateMetric(rs as rowset, theValue as double)
		  rs.MoveToFirstRow
		  rs.EditRow
		  rs.Column("metric_value").value = theValue
		  rs.SaveRow
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		activityEventQueue() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		queryEventQueue() As Dictionary
	#tag EndProperty


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
