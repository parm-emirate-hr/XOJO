#tag Interface
Protected Interface ARMobileTableSectionHeaderSource
	#tag CompatibilityFlags = API2Only and ( ( TargetIOS and ( Target64Bit ) ) )
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function HeaderForSection(table as iosMobileTableExtended, section as Integer) As MobileTableCustomCell
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub HeaderHeightForSection(table as iosMobileTableExtended, section as Integer, byRef height as single)
		  
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
End Interface
#tag EndInterface
