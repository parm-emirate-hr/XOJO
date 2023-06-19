#tag Module
Protected Module Communications
	#tag Method, Flags = &h0
		Function ParseString(TheIncident as Incident, TheString as string) As String
		  TheString = ReplaceAll(TheString,"%IncidentID", TheIncident.IncidentID)
		  TheString = ReplaceAll(TheString,"%Customer", TheIncident.customer.Name.StringValue)
		  TheString = ReplaceAll(TheString,"%RecoveryETA", theIncident.RecoveryETA.ShortTime)
		  TheString = ReplaceAll(TheString,"%RecoveryStatus",theIncident.RecoveryStatus)
		  return TheString
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
