#tag Module
Protected Module challengeAPI
	#tag Method, Flags = &h0
		Sub getChallengeList()
		  Var content As String
		  if app.player <> nil then
		    var MyConnection as new URLConnection
		    var query as string = App.hostname  +"/"+ "challenges"+"?player="+app.player.value("id")+"&status=active"
		    try
		      content = MyConnection.SendSync("GET",query , 30)
		    catch e as RuntimeException
		      MessageBox(e.message)
		    end try
		    '
		    ' Now we need to decode the response
		    '
		    var theResult as Dictionary = ParseJSON(content)
		    '
		    if theResult.HasKey("challenges") then ' Request was successful
		      app.challengeSummary = theResult.value("challenges")
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getChallenges()
		  Var content As String
		  if app.player <> nil then
		    var MyConnection as new URLConnection
		    var query as string = App.hostname  +"/"+ "challenges"+"?player="+app.player.value("id")
		    try
		      content = MyConnection.SendSync("GET",query , 2)
		    catch e as RuntimeException
		      MessageBox(e.message)
		    end try
		    '
		    ' Now we need to decode the response
		    '
		    var theResult as Dictionary = ParseJSON(content)
		    '
		    if theResult.HasKey("challenges") then ' Request was successful
		      app.challenges = new dictionary
		      app.challenges.value("metrics") = theResult.value("challenges")
		    end if
		  end if
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
