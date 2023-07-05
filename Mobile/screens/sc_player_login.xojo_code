#tag MobileScreen
Begin MobileScreen sc_player_login
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   False
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Login or Signup"
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 120, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 87, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "User Name"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   120
      Visible         =   True
      Width           =   87
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 79, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Password"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   158
      Visible         =   True
      Width           =   79
   End
   Begin MobileTextField emailAddress
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   emailAddress, 1, Label1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   emailAddress, 7, , 0, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   emailAddress, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   emailAddress, 4, Label2, 3, False, +1.00, 4, 1, -*kStdControlGapV, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "email address"
      InputType       =   0
      Left            =   115
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   119
      Visible         =   True
      Width           =   168
   End
   Begin MobileTextField password
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   password, 1, emailAddress, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   password, 2, emailAddress, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   password, 3, emailAddress, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   password, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "password"
      InputType       =   0
      Left            =   115
      LockedInPosition=   False
      Password        =   True
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   158
      Visible         =   True
      Width           =   168
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, Label2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, Label2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Login"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   196
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 2, password, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button2, 11, Button1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Signup"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   183
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   196
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  var theResult as Dictionary = playerAPI.login(emailAddress.text,password.text)
		  if theResult.HasKey("player") then
		    app.player = theResult.value("player")
		    metricApi.syncMetrics
		    challengeAPI.getChallengeList
		    challengeAPI.getChallenges
		    self.close
		    IF APP.PLAYER.VALUE("avatar") = Nil then
		      app.player.value("avatar") = male_default
		    end if
		    Close
		  else
		    if theResult.HasKey("error") then
		      msgbox("Login failed")
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
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
#tag EndViewBehavior
