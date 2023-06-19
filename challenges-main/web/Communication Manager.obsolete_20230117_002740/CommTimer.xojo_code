#tag Class
Protected Class CommTimer
Inherits Timer
	#tag Event
		Sub Action()
		  Select Case CycleCount
		  Case 0 ' Minute 0
		    TeamBuild
		  Case 1 ' minute 5
		    TeamBuild
		  Case 2 ' minute 10
		    TeamBuild
		  Case 3 ' minute 15
		    TeamBuild
		    StatusUpdate
		  Case 4 ' minute 20
		    TeamBuild
		  Case 5 ' minute 25
		    TeamBuild
		  Else ' minute 30
		    TeamBuild
		    StatusUpdate
		    CycleCount = -1
		  End Select
		  '
		  ' Increment for next cycle
		  '
		  CycleCount = CycleCount+1
		  Dim TheCommMgr As New Commmgr
		  TheCommMgr.Run
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub StatusUpdate()
		  '
		  ' Sending Teambuilder messages
		  '
		  Dim rs As recordset
		  rs = incident.ListWithCriteria("RecoveryStatus <> 'Complete'")
		  While Not rs.eof
		    Dim theIncident As New incident(rs.field("ID").value)
		    Dim theAction As new Dictionary
		    Theaction.value("Action") = "Status"
		    Theaction.value("Incident") = theIncident
		    app.actions.append(TheAction)
		    rs.movenext
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TeamBuild()
		  '
		  ' Sending Teambuilder messages
		  '
		  Dim rs As recordset
		  rs = incident.ListWithCriteria("RecoveryStatus <> 'Complete'")
		  While Not rs.eof
		    Dim theIncident As New incident(rs.field("ID").value)
		    Dim theAction As new Dictionary
		    Theaction.value("Action") = "TeamBuild"
		    Theaction.value("Incident") = theIncident
		    app.actions.append(TheAction)
		    rs.movenext
		  wend
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CycleCount As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
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
		#tag ViewProperty
			Name="RunMode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="RunModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
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
			InitialValue=""
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
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CycleCount"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
