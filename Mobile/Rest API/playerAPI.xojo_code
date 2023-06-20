#tag Module
Protected Module playerAPI
	#tag Method, Flags = &h0
		Sub getById(playerId as Integer)
		  Var json As New JSONItem
		  json.Value("ID") = 123456
		  
		  'mySocket.SetRequestContent(json.ToString, "application/json")
		  'mySocket.Send("POST", "http://127.0.0.1:8080/GetCustomer")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getListByChallenge(id as Integer) As Dictionary()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function login(user as string, password as string) As Dictionary
		  Var content As String
		  var MyConnection as new URLConnection
		  var query as string = App.hostname  +"/"+ "login"+"?user="+user+"&password="+password
		  content = MyConnection.SendSync("GET",query , 30)
		  '
		  ' Now we need to decode the response
		  '
		  var theResult as Dictionary = ParseJSON(content)
		  '
		  if theResult.HasKey("player") then ' Login was successful
		    ' lets add the preference record
		    var thePreference as databaseRow = new databaserow
		    thePreference.Column("key") = "playerid"
		    thePreference.column("value") = content
		    app.DB.AddRow("preferences", thepreference)
		    'syncMetrics ' lets sync the metrics
		  else
		    ' it was an error
		  end if
		  
		  return theResult
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function players(challenge as integer = 0) As dictionary
		  Var content As String
		  
		  var MyConnection as new URLConnection
		  var query as string = App.hostname  +"/"+ "players?challenge="+challenge.ToString
		  try
		    
		    'MyConnection.SetRequestContent(GenerateJson(body), "application/json")
		    content = MyConnection.SendSync("GET",query , 30)
		  catch
		    
		  end
		  '
		  ' Now we need to decode the response
		  '
		  if MyConnection.HTTPStatusCode = 200 then
		    var theResult as Dictionary = ParseJSON(content)
		    return theResult
		  else
		    MessageBox("Network Error "+ MyConnection.HTTPStatusCode.ToString + " " + content)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub put()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updatePlayer(player as dictionary)
		  Var content As String
		  var MyConnection as new URLConnection
		  var body as dictionary = new dictionary
		  body.value("player") = app.player
		  var query as string = App.hostname  +"/"+ "player"
		  try
		    MyConnection.SetRequestContent(GenerateJson(body), "application/json")
		    content = MyConnection.SendSync("POST",query , 30)
		  catch
		    
		  end
		  '
		  ' Now we need to decode the response
		  '
		  var theResult as Dictionary = ParseJSON(content)
		  
		End Sub
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
