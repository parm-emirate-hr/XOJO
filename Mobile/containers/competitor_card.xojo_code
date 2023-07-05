#tag MobileContainer
Begin MobileContainer competitor_card
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   80
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   62
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 41, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, 4, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 41, , True
      clipToCircle    =   True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   41
      Image           =   0
      Left            =   10
      LockedInPosition=   False
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   4
      url             =   ""
      Visible         =   True
      Width           =   41
   End
   Begin MobileLabel metric_value
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   metric_value, 9, <Parent>, 9, False, +1.00, 4, 1, -4, , True
      AutoLayout      =   metric_value, 8, , 0, False, +1.00, 4, 1, 18, , True
      AutoLayout      =   metric_value, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   metric_value, 3, player_handle, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   metric_value, 7, , 0, False, +1.00, 4, 1, 54, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   18
      Left            =   0
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   63
      Visible         =   True
      Width           =   54
   End
   Begin MobileLabel player_handle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   player_handle, 8, , 0, False, +1.00, 4, 1, 18, , True
      AutoLayout      =   player_handle, 1, metric_value, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   player_handle, 3, yomlyImageView1, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   player_handle, 7, , 0, False, +1.00, 4, 1, 54, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   18
      Left            =   0
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   45
      Visible         =   True
      Width           =   54
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub redraw()
		  yomlyImageView1.url =  player.value("url")
		  yomlyImageView1.loadImageforObject("players", player.value("id"), player.value("avatar"))
		  player_handle.text = player.value("handle")
		  player_handle.TextFont=font.ItalicSystemFont(10)
		  metric_value.textFont = font.SystemFont(font.SmallSystemFontSize)
		  if player.value("steps") = nil or player.value("steps") = "" then
		    player.value("steps") = "0"
		  end if
		  metric_value.text = player.value("steps")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		player As dictionary
	#tag EndProperty


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
