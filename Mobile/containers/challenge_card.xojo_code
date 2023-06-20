#tag MobileContainer
Begin MobileContainer challenge_card
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   188
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   360
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 124, , True
      AutoLayout      =   yomlyImageView1, 1, , 0, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   2
      Enabled         =   True
      Height          =   124
      Image           =   17360895
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   0
      url             =   ""
      Visible         =   True
      Width           =   360
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 10, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 337, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 80, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 34, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Left            =   10
      LineBreakMode   =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      Text            =   "New Challenge"
      TextColor       =   Title_text
      TextFont        =   "System Bold		"
      TextSize        =   30
      TintColor       =   &c000000
      Top             =   80
      Visible         =   True
      Width           =   337
   End
   Begin challenge_target_card challenge_target_card1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   challenge_target_card1, 8, , 0, False, +1.00, 4, 1, 48, , True
      AutoLayout      =   challenge_target_card1, 1, yomlyImageView1, 1, False, +1.00, 4, 1, 5, , True
      AutoLayout      =   challenge_target_card1, 3, yomlyImageView1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   challenge_target_card1, 7, , 0, False, +1.00, 4, 1, 102, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   48
      Left            =   5
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   132
      Visible         =   True
      Width           =   102
   End
   Begin challenge_target_card challenge_target_card2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   challenge_target_card2, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   challenge_target_card2, 8, , 0, False, +1.00, 4, 1, 48, , True
      AutoLayout      =   challenge_target_card2, 3, yomlyImageView1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   challenge_target_card2, 7, , 0, False, +1.00, 4, 1, 102, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   48
      Left            =   129
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   132
      Visible         =   True
      Width           =   102
   End
   Begin challenge_target_card challenge_target_card3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   challenge_target_card3, 8, , 0, False, +1.00, 4, 1, 48, , True
      AutoLayout      =   challenge_target_card3, 2, <Parent>, 2, False, +1.00, 4, 1, -5, , True
      AutoLayout      =   challenge_target_card3, 3, yomlyImageView1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   challenge_target_card3, 7, , 0, False, +1.00, 4, 1, 102, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   48
      Left            =   253
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   132
      Visible         =   True
      Width           =   102
   End
   Begin MobileRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 1, challenge_target_card2, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Rectangle1, 7, , 0, False, +1.00, 4, 1, 4, , True
      AutoLayout      =   Rectangle1, 3, challenge_target_card3, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle1, 8, , 0, False, +1.00, 4, 1, 44, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   Section_Headers
      Height          =   44
      Left            =   239
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   132
      Visible         =   True
      Width           =   4
   End
   Begin MobileRectangle Rectangle2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle2, 1, <Parent>, 1, False, +1.00, 4, 1, 115, , True
      AutoLayout      =   Rectangle2, 7, , 0, False, +1.00, 4, 1, 4, , True
      AutoLayout      =   Rectangle2, 3, <Parent>, 3, False, +1.00, 4, 1, 132, , True
      AutoLayout      =   Rectangle2, 8, , 0, False, +1.00, 4, 1, 44, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   Section_Headers
      Height          =   44
      Left            =   115
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   132
      Visible         =   True
      Width           =   4
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, yomlyImageView1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 356, , True
      AutoLayout      =   Button1, 4, challenge_target_card3, 4, False, +1.00, 4, 1, 8, , True
      AutoLayout      =   Button1, 3, Rectangle2, 3, False, +1.00, 4, 1, -132, , True
      Caption         =   ""
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   188
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   356
      Begin MobileLabel accept
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alignment       =   0
         AutoLayout      =   accept, 1, Button1, 1, False, +1.00, 4, 1, 186, , True
         AutoLayout      =   accept, 7, , 0, False, +1.00, 4, 1, 163, , True
         AutoLayout      =   accept, 3, yomlyImageView1, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
         AutoLayout      =   accept, 8, , 0, False, +1.00, 4, 1, 30, , True
         ControlCount    =   0
         Enabled         =   True
         Height          =   30
         Left            =   186
         LineBreakMode   =   0
         LockedInPosition=   False
         PanelIndex      =   -1
         Parent          =   "Button1"
         Scope           =   0
         Text            =   "Accept Challenge"
         TextColor       =   metric_flightsAscended
         TextFont        =   "System Bold		"
         TextSize        =   18
         TintColor       =   &c000000
         Top             =   20
         Visible         =   True
         Width           =   163
      End
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  'redraw
		  me.SetCornerRadiusXC(10)
		  me.SetBorderWidthXC(0.5)
		  me.yomlyImageView1.SetCornerRadiusXC(10)
		  me.SetBorderColorXC(&c000000)
		  'me.themovie.SetCornerRadiusXC(10)
		  var offset as xojo.point = new point(1,1)
		  me.SetShadowXC(&C000000,5,offset,0.5)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub redraw()
		  
		  var metrics() as variant = dictionary(challenge).value("metrics")
		  var i as integer = 0
		  var cards() as challenge_target_card = array(challenge_target_card1,challenge_target_card2, challenge_target_card3)
		  for i = 0 to metrics.LastIndex
		    cards(i).metric = metrics(i)
		    cards(i).redraw
		  next i
		  
		  yomlyImageView1.loadImageforObject("challenges",dictionary(challenge).value("id"), dictionary(challenge).value("image"))
		  label1.text = dictionary(challenge).value("name") 
		  if dictionary(challenge).value("status") = "available" then
		    button1.visible = true
		    button1.enabled = true
		    accept.visible = true
		  else
		    button1.visible = false
		    button1.enabled = false
		    accept.visible = false
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		challenge As variant
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  messagebox("pressed")
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
