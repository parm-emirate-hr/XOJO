#tag MobileContainer
Begin MobileContainer challenge_target_card
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   48
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   102
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   yomlyImageView1, 1, , 0, False, +1.00, 4, 1, 7, , True
      AutoLayout      =   yomlyImageView1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 30, , True
      clipToCircle    =   True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   30
      Image           =   0
      Left            =   7
      LockedInPosition=   False
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   9
      url             =   ""
      Visible         =   True
      Width           =   30
   End
   Begin MobileLabel achievement
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   achievement, 1, yomlyImageView1, 2, False, +1.00, 4, 1, 5, , True
      AutoLayout      =   achievement, 7, , 0, False, +1.00, 4, 1, 55, , True
      AutoLayout      =   achievement, 3, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   achievement, 8, , 0, False, +1.00, 4, 1, 20, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   20
      Left            =   42
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   12
      TintColor       =   &c000000
      Top             =   24
      Visible         =   True
      Width           =   55
   End
   Begin MobileLabel units
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   units, 1, yomlyImageView1, 2, False, +1.00, 4, 1, 5, , True
      AutoLayout      =   units, 7, , 0, False, +1.00, 4, 1, 54, , True
      AutoLayout      =   units, 3, yomlyImageView1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   units, 8, , 0, False, +1.00, 4, 1, 19, , True
      AutoLayout      =   units, 10, <Parent>, 10, False, +1.00, 4, 1, -10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   19
      Left            =   42
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   "System Italic		"
      TextSize        =   8
      TintColor       =   &c000000
      Top             =   4
      Visible         =   True
      Width           =   54
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Method, Flags = &h0
		Sub redraw()
		  if metric <> nil then
		    units.text=metric.value("metric_type")
		    achievement.text=metric.value("target").StringValue
		    yomlyImageView1.Image = mediaApi.iconForMetric(metric.value("metric_type"))
		    me.Visible = true
		    
		  else
		    me.visible = false
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		metric As dictionary
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
