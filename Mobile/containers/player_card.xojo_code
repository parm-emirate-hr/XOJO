#tag MobileContainer
Begin MobileContainer player_card
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   50
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   170
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 41, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 41, , True
      clipToCircle    =   True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   41
      Image           =   0
      Left            =   129
      LockedInPosition=   False
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   6
      url             =   ""
      Visible         =   True
      Width           =   41
   End
   Begin MobileLabel player_handle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   player_handle, 8, , 0, False, +1.00, 4, 1, 18, , True
      AutoLayout      =   player_handle, 2, yomlyImageView1, 1, False, +1.00, 4, 1, -5, , True
      AutoLayout      =   player_handle, 3, <Parent>, 3, False, +1.00, 4, 1, 13, , True
      AutoLayout      =   player_handle, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   18
      Left            =   0
      LineBreakMode   =   2
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   "System Italic		"
      TextSize        =   10
      TintColor       =   &c000000
      Top             =   19
      Visible         =   True
      Width           =   124
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, player_handle, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 2, yomlyImageView1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   44
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   6
      Visible         =   True
      Width           =   170
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  redraw
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub redraw()
		  if app.player <> nil then
		    yomlyImageView1.url =  mediaAPI.getUrl("players", app.player.value("id"), app.player.value("avatar"))
		    yomlyImageView1.loadImageforObject("players", app.player.value("id"), app.player.value("avatar"))
		    player_handle.text = app.player.value("handle")
		    player_handle.TextFont=font.ItalicSystemFont(10)
		  else
		    yomlyImageView1.Image = icon_avatar2x
		    player_handle.text = "Not Logged in"
		    player_handle.TextFont=font.ItalicSystemFont(10)
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		player As dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  if app.player = Nil then
		    Var newScreen As New sc_player_login
		    newScreen.Show(app.last_screen)
		  else
		    Var newScreen As New sc_player_details
		    newScreen.Show(app.last_screen)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
