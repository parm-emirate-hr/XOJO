#tag MobileContainer
Begin MobileContainer container_competitors
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   64
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   578
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 69, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "1"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   20
      Visible         =   True
      Width           =   69
   End
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 1, <Parent>, 1, False, +1.00, 4, 1, 105, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   yomlyImageView1, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   30
      Image           =   0
      Left            =   105
      LockedInPosition=   False
      Scope           =   2
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   20
      url             =   ""
      Visible         =   False
      Width           =   30
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 1, , 0, False, +1.00, 4, 1, 185, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 192, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label2, 11, Label1, 11, False, +1.00, 4, 1, , , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   185
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Superman"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   20
      Visible         =   True
      Width           =   192
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label3, 1, <Parent>, 1, False, +1.00, 4, 1, 408, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 158, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 11, Label1, 11, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   408
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "10000"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   20
      Visible         =   True
      Width           =   158
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  var PlayerArray() as variant 
		  var containers() as competitor_card 
		  var challenge as integer = 0
		  if app.challenge <> nil then
		    challenge = app.challenge.value("id")
		  end if
		  
		  var theResponse as dictionary = playerApi.players(challenge)
		  PlayerArray = theResponse.value("players")
		  var i as integer = 0
		  
		  for each a as dictionary in playerArray
		    '
		    ' lets calculate the url for the video
		    '
		    var theContainer  as new competitor_card
		    containers.Add(theContainer)
		    var theWidth as double = 55
		    Var LeftC As New iOSLayoutConstraint(containers(i),iOSLayoutConstraint.AttributeTypes.left, iOSLayoutConstraint.RelationTypes.Equal, _
		    self, iOSLayoutConstraint.AttributeTypes.Left,1.0,(i*theWidth)+10)
		    Var TopC As New iOSLayoutConstraint(containers(i),iOSLayoutConstraint.AttributeTypes.Top, iOSLayoutConstraint.RelationTypes.Equal, _
		    self, iOSLayoutConstraint.AttributeTypes.Top,1.0,10)
		    
		    Var BottomC As New iOSLayoutConstraint(containers(i),iOSLayoutConstraint.AttributeTypes.Bottom, iOSLayoutConstraint.RelationTypes.Equal, _
		    self, iOSLayoutConstraint.AttributeTypes.bottom,1.0,-10)
		    
		    me.AddControl(containers(i))
		    self.AddConstraint Leftc
		    self.AddConstraint TopC
		    self.AddConstraint BottomC
		    containers(i).player = a
		    containers(i).redraw
		    
		    
		    i = i+1
		  next 
		  
		End Sub
	#tag EndEvent


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
