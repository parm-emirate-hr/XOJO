#tag IOSContainerControl
Begin MobileTableCustomCell section_header_competitors
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   AllowDynamicHeight=   False
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   Enabled         =   True
   Height          =   46
   Left            =   0
   Orientation = 0
   TintColor       =   Section_Headers
   Top             =   0
   Visible         =   True
   Width           =   648
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 9, , True
      AutoLayout      =   Label1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 267, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   20
      Left            =   9
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "My Competitors"
      TextColor       =   &c000000
      TextFont        =   "System		"
      TextSize        =   18
      TintColor       =   &c000000
      Top             =   13
      Visible         =   True
      Width           =   267
   End
   Begin drillDown Container11
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Container11, 1, Label1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Container11, 7, , 0, False, +1.00, 4, 1, 66, , True
      AutoLayout      =   Container11, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Container11, 4, Label1, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   20
      Left            =   284
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   13
      Visible         =   True
      Width           =   66
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Label1.TextFont = font.BoldSystemFont(30)
		End Sub
	#tag EndEvent


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
