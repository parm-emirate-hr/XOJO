#tag IOSContainerControl
Begin MobileTableCustomCell Overview
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   AllowDynamicHeight=   False
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   Enabled         =   True
   Height          =   289
   Left            =   0
   Orientation = 0
   TintColor       =   &c00000000
   Top             =   0
   Visible         =   True
   Width           =   450
   Begin dashBoardStatus dashBoardStatus1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   dashBoardStatus1, 8, , 0, False, +1.00, 4, 1, 264, , True
      AutoLayout      =   dashBoardStatus1, 1, <Parent>, 1, False, +1.00, 4, 1, 81, , True
      AutoLayout      =   dashBoardStatus1, 2, <Parent>, 2, False, +1.00, 4, 1, -83, , True
      AutoLayout      =   dashBoardStatus1, 3, <Parent>, 3, False, +1.00, 4, 1, 10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   264
      Left            =   81
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   10
      Visible         =   True
      Width           =   286
   End
End
#tag EndIOSContainerControl

#tag WindowCode
#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="UI Control"
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue="MobileTableCustomCell"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowDynamicHeight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="320"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="480"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
