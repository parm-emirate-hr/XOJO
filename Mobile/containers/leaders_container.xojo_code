#tag MobileContainer
Begin MobileContainer leaders_container
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   208
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   376
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 90, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, 60, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 90, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   90
      Image           =   0
      Left            =   143
      LockedInPosition=   False
      Scope           =   2
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   60
      url             =   ""
      Visible         =   False
      Width           =   90
   End
   Begin yomlyImageView yomlyImageView2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView2, 4, <Parent>, 4, False, +1.00, 4, 1, -58, , True
      AutoLayout      =   yomlyImageView2, 8, , 0, False, +1.00, 4, 1, 70, , True
      AutoLayout      =   yomlyImageView2, 2, yomlyImageView1, 1, False, +1.00, 4, 1, -24, , True
      AutoLayout      =   yomlyImageView2, 7, , 0, False, +1.00, 4, 1, 70, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   70
      Image           =   0
      Left            =   49
      LockedInPosition=   False
      Scope           =   2
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   80
      url             =   ""
      Visible         =   False
      Width           =   70
   End
   Begin yomlyImageView yomlyImageView3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView3, 8, , 0, False, +1.00, 4, 1, 70, , True
      AutoLayout      =   yomlyImageView3, 1, yomlyImageView1, 2, False, +1.00, 4, 1, 24, , True
      AutoLayout      =   yomlyImageView3, 3, <Parent>, 3, False, +1.00, 4, 1, 80, , True
      AutoLayout      =   yomlyImageView3, 7, , 0, False, +1.00, 4, 1, 70, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   70
      Image           =   0
      Left            =   257
      LockedInPosition=   False
      Scope           =   2
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   80
      url             =   ""
      Visible         =   False
      Width           =   70
   End
   Begin MobileOval Oval1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Oval1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Oval1, 7, , 0, False, +1.00, 4, 1, 14, , True
      AutoLayout      =   Oval1, 3, <Parent>, 3, False, +1.00, 4, 1, 144, , True
      AutoLayout      =   Oval1, 8, , 0, False, +1.00, 4, 1, 14, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      Enabled         =   True
      FillColor       =   CGTest
      Height          =   14
      Left            =   181
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   144
      Visible         =   True
      Width           =   14
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 9, Oval1, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 10, , True
      AutoLayout      =   Label1, 10, Oval1, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   10
      Left            =   183
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "1"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   10
      TintColor       =   &c000000
      Top             =   146
      Visible         =   True
      Width           =   10
   End
End
#tag EndMobileContainer

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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="Visible"
		Visible=true
		Group="UI Control"
		InitialValue="True"
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
