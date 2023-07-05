#tag Interface
Protected Interface ARMobileTableSelection
	#tag CompatibilityFlags = API2Only and ( ( TargetIOS and ( Target64Bit ) ) )
	#tag Method, Flags = &h0
		Function refuseRowHighlight(table as iosMobileTableExtended, section as integer, row as integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function refuseRowSelection(table as iosMobileTableExtended, section as integer, row as integer) As Boolean
		  
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
End Interface
#tag EndInterface
