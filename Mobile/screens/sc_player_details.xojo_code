#tag MobileScreen
Begin MobileScreen sc_player_details
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   False
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "<handle>"
   Top             =   0
   Begin MobileLabel l_firstName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   l_firstName, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   l_firstName, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   l_firstName, 3, <Parent>, 3, False, +1.00, 4, 1, 178, , True
      AutoLayout      =   l_firstName, 7, , 0, False, +1.00, 4, 1, 87, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "First Name"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   178
      Visible         =   True
      Width           =   87
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 79, , True
      AutoLayout      =   Label2, 3, f_aboutme, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
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
      Top             =   535
      Visible         =   True
      Width           =   79
   End
   Begin MobileTextField first_name
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   1
      AutoLayout      =   first_name, 1, <Parent>, 1, False, +1.00, 4, 1, 115, , True
      AutoLayout      =   first_name, 7, , 0, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   first_name, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   first_name, 11, l_firstName, 11, False, +1.00, 4, 1, 0, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "First Name"
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
      Top             =   177
      Visible         =   True
      Width           =   168
   End
   Begin MobileLabel l_lastName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   l_lastName, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   l_lastName, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   l_lastName, 3, l_firstName, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   l_lastName, 7, , 0, False, +1.00, 4, 1, 87, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Last Name"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   216
      Visible         =   True
      Width           =   87
   End
   Begin MobileLabel l_handle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   l_handle, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   l_handle, 1, l_lastName, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   l_handle, 3, l_lastName, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   l_handle, 7, , 0, False, +1.00, 4, 1, 87, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Handle"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   254
      Visible         =   True
      Width           =   87
   End
   Begin MobileLabel l_aboutme
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   l_aboutme, 1, l_handle, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   l_aboutme, 7, , 0, False, +1.00, 4, 1, 87, , True
      AutoLayout      =   l_aboutme, 3, l_handle, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   l_aboutme, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "About Me"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   292
      Visible         =   True
      Width           =   87
   End
   Begin yomlyImageView theImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   theImage, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   theImage, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theImage, 3, TopLayoutGuide, 4, False, +1.10, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   theImage, 8, , 0, False, +1.00, 4, 1, 100, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   2
      Enabled         =   True
      Height          =   100
      Image           =   1315069951
      Left            =   137
      LockedInPosition=   False
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   79
      url             =   ""
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField last_name
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   1
      AutoLayout      =   last_name, 1, l_aboutme, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   last_name, 7, , 0, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   last_name, 11, l_lastName, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   last_name, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Last Name"
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
      Top             =   215
      Visible         =   True
      Width           =   168
   End
   Begin MobileTextField f_handle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   f_handle, 1, last_name, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   f_handle, 7, , 0, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   f_handle, 3, last_name, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   f_handle, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Handle"
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
      Top             =   254
      Visible         =   True
      Width           =   168
   End
   Begin MobileTextArea f_aboutme
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   True
      AllowSpellChecking=   True
      AutoCapitalizationType=   2
      AutoLayout      =   f_aboutme, 8, , 0, False, +1.00, 4, 1, 197, , True
      AutoLayout      =   f_aboutme, 1, l_aboutme, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   f_aboutme, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   f_aboutme, 3, l_aboutme, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   2
      ControlCount    =   0
      Enabled         =   True
      Height          =   197
      Left            =   20
      LockedInPosition=   False
      ReadOnly        =   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   330
      Visible         =   True
      Width           =   335
   End
   Begin MobileButton b_save
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   b_save, 2, emailAddress3, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   b_save, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   b_save, 3, <Parent>, 3, False, +1.00, 4, 1, 562, , True
      AutoLayout      =   b_save, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Save"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   7
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   562
      Visible         =   True
      Width           =   100
   End
   Begin MobileTextField emailAddress3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   emailAddress3, 1, f_handle, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   emailAddress3, 7, , 0, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   emailAddress3, 11, Label2, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   emailAddress3, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Password"
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
      Top             =   534
      Visible         =   True
      Width           =   168
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  first_Name.text = app.player.value("first_name")
		  last_Name.text = app.player.value("last_name")
		  f_handle.text = app.player.value("handle")
		  f_aboutme.text = app.player.value("aboutme")
		  'theImage.Image=app.player.value("avatar")
		  'theImage.clipImageToCircle()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  first_Name.text = app.player.value("first_name")
		  last_Name.text = app.player.value("last_name")
		  f_handle.text = app.player.value("handle")
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events f_aboutme
	#tag Event
		Sub TextChanged()
		  app.player.value("aboutme") = me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events b_save
	#tag Event
		Sub Pressed()
		  ' So we will copy any changes into the player record
		  ' then call the update API to save in the server.
		  app.player.value("first_name") = first_Name.text
		  app.player.value("last_name") = last_Name.text 
		  app.player.value("handle") = f_handle.text 
		  app.player.value("aboutme") = f_aboutme.text
		  '
		  ' now update the player record
		  '
		  playerApi.updatePlayer(app.player)
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
