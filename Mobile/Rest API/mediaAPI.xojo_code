#tag Module
Protected Module mediaAPI
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
		Function getUrl(objectType as string, key as integer, fileName as string) As string
		  var theURL as string
		  theURL = app.mediaHost+"/challenges/"+objectType+"/"+key.ToString+"/"+EncodeURLComponent(fileName)
		  return theURL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function iconForMetric(metric_type as string) As picture
		  select case metric_type
		  case "numberOfSteps"
		    return icon_shoe2x
		  case "distance"
		    return icon_location3x
		  case"floorsAscended"
		    return icon_stairsAscen3x
		  case "floorsDescended"
		    return icon_stairsDesc3x
		  else 
		    return steps
		  end select
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
		    
		  else
		    ' it was an error
		  end if
		  
		  return theResult
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
