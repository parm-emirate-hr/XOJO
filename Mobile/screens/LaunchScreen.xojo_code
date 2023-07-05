#tag IOSLaunchScreen
Begin iosView LaunchScreen
   BackButtonTitle =   ""
   BackgroundColor =   &cEBEBEB00
   Compatibility   =   ""
   Device = 9
   LargeTitleMode  =   2
   Left            =   0
   NavigationBarVisible=   False
   Orientation = 0
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Untitled"
   Top             =   0
   Begin MobileImageViewer ImageViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageViewer1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ImageViewer1, 8, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   ImageViewer1, 10, <Parent>, 10, False, +1.00, 4, 1, -100, , True
      AutoLayout      =   ImageViewer1, 7, , 0, False, +1.00, 4, 1, 250, , True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   250
      Image           =   727472127
      Left            =   89
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   238
      Visible         =   True
      Width           =   250
      Begin MobileLabel Label1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alignment       =   1
         AutoLayout      =   Label1, 1, ImageViewer1, 1, False, +1.00, 4, 1, -39, , True
         AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 351, , True
         AutoLayout      =   Label1, 3, ImageViewer1, 3, False, +1.00, 4, 1, 372, , True
         AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 72, , True
         ControlCount    =   0
         Enabled         =   True
         Height          =   72
         Left            =   50
         LineBreakMode   =   0
         LockedInPosition=   False
         PanelIndex      =   -1
         Parent          =   "ImageViewer1"
         Scope           =   0
         Text            =   "Challenges"
         TextColor       =   Title_text
         TextFont        =   "System Bold		"
         TextSize        =   60
         TintColor       =   &c000000
         Top             =   610
         Visible         =   True
         Width           =   351
      End
   End
End
#tag EndIOSLaunchScreen

#tag WindowCode
#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
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
	#tag ViewProperty
		Name="BackButtonTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="iOSImage"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
