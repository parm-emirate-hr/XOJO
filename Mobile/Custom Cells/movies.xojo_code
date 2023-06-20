#tag MobileContainer
Begin MobileContainer movies
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   138
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   706
   Begin MobileMoviePlayer MoviePlayer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MoviePlayer1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MoviePlayer1, 7, , 0, False, +1.00, 4, 1, 231, , True
      AutoLayout      =   MoviePlayer1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MoviePlayer1, 8, , 0, False, +1.00, 4, 1, 138, , True
      ControlCount    =   0
      Duration        =   0.0
      Enabled         =   True
      HasController   =   True
      Height          =   138
      Left            =   0
      LockedInPosition=   False
      Movie           =   1801230335
      Position        =   0.0
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Volume          =   100
      Width           =   231
   End
   Begin MobileMoviePlayer MoviePlayer2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MoviePlayer2, 1, MoviePlayer1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   MoviePlayer2, 7, , 0, False, +1.00, 4, 1, 226, , True
      AutoLayout      =   MoviePlayer2, 3, MoviePlayer1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MoviePlayer2, 8, , 0, False, +1.00, 4, 1, 138, , True
      ControlCount    =   0
      Duration        =   0.0
      Enabled         =   True
      HasController   =   True
      Height          =   138
      Left            =   239
      LockedInPosition=   False
      Movie           =   70664191
      Position        =   0.0
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Volume          =   100
      Width           =   226
   End
   Begin MobileMoviePlayer MoviePlayer3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MoviePlayer3, 1, MoviePlayer2, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   MoviePlayer3, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MoviePlayer3, 3, MoviePlayer2, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MoviePlayer3, 8, , 0, False, +1.00, 4, 1, 138, , True
      ControlCount    =   0
      Duration        =   0.0
      Enabled         =   True
      HasController   =   True
      Height          =   138
      Left            =   473
      LockedInPosition=   False
      Movie           =   668348415
      Position        =   0.0
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Volume          =   100
      Width           =   233
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
