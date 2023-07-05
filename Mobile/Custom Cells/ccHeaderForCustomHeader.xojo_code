#tag MobileContainer
Begin MobileContainer ccHeaderForCustomHeader
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   50
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   458
   Begin MobileImageViewer yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 58, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 50, , True
      ControlCount    =   0
      DisplayMode     =   1
      Enabled         =   True
      Height          =   50
      Image           =   1601138687
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   58
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 76, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   76
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Yomly Challenges"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   20
      TintColor       =   &c000000
      Top             =   10
      Visible         =   True
      Width           =   193
   End
   Begin player_card player_card1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   player_card1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   player_card1, 7, , 0, False, +1.00, 4, 1, 132, , True
      AutoLayout      =   player_card1, 3, yomlyImageView1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   player_card1, 4, yomlyImageView1, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   50
      Left            =   326
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   132
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub DrawMe(g as Graphics)
		  g.DrawingColor=Color.Blue
		  
		  Var p As New GraphicsPath
		  p.MoveToPoint g.Width/2, g.Height-1
		  p.AddLineToPoint 7*g.Width/8, 2*g.Height/3
		  p.AddLineToPoint 2*g.Width/3, 2*g.Height/3
		  p.AddLineToPoint 2*g.Width/3, 5
		  p.AddLineToPoint g.Width/3, 5
		  p.AddLineToPoint g.Width/3, 2*g.Height/3
		  p.AddLineToPoint g.Width/8, 2*g.Height/3
		  p.AddLineToPoint g.Width/2, g.Height-1
		  g.DrawPath p
		End Sub
	#tag EndMethod


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
