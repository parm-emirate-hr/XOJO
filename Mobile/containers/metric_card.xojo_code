#tag MobileContainer
Begin MobileContainer metric_card
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   74
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   120
   Begin MobileRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 8, , 0, False, +1.00, 4, 1, 74, , True
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle1, 7, , 0, False, +1.00, 4, 1, 120, , True
      BorderColor     =   yomlyColours
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   10.0
      Enabled         =   True
      FillColor       =   yomlyColours
      Height          =   74
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   120
      Begin MobileLabel achievement
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alignment       =   0
         AutoLayout      =   achievement, 2, Rectangle1, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
         AutoLayout      =   achievement, 7, , 0, False, +1.00, 4, 1, 58, , True
         AutoLayout      =   achievement, 3, Rectangle1, 3, False, +1.00, 4, 1, 8, , True
         AutoLayout      =   achievement, 8, , 0, False, +1.00, 4, 1, 30, , True
         ControlCount    =   0
         Enabled         =   True
         Height          =   30
         Left            =   42
         LineBreakMode   =   0
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         Text            =   "Untitled"
         TextColor       =   &c000000
         TextFont        =   ""
         TextSize        =   0
         TintColor       =   &c000000
         Top             =   8
         Visible         =   True
         Width           =   58
      End
      Begin MobileLabel units
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alignment       =   0
         AutoLayout      =   units, 1, Rectangle1, 1, False, +1.00, 4, 1, 39, , True
         AutoLayout      =   units, 7, , 0, False, +1.00, 4, 1, 81, , True
         AutoLayout      =   units, 4, Rectangle1, 4, False, +1.00, 4, 1, 0, , True
         AutoLayout      =   units, 8, , 0, False, +1.00, 4, 1, 30, , True
         ControlCount    =   0
         Enabled         =   True
         Height          =   30
         Left            =   39
         LineBreakMode   =   4
         LockedInPosition=   False
         PanelIndex      =   0
         Parent          =   "Rectangle1"
         Scope           =   0
         Text            =   "Untitled"
         TextColor       =   &c000000
         TextFont        =   ""
         TextSize        =   0
         TintColor       =   &c000000
         Top             =   44
         Visible         =   True
         Width           =   81
      End
   End
   Begin yomlyImageView yomlyImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   yomlyImageView1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   yomlyImageView1, 1, <Parent>, 1, False, +1.00, 4, 1, 9, , True
      AutoLayout      =   yomlyImageView1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
      AutoLayout      =   yomlyImageView1, 7, , 0, False, +1.00, 4, 1, 30, , True
      clipToCircle    =   False
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   30
      Image           =   0
      Left            =   9
      LockedInPosition=   False
      Scope           =   0
      ThePicture      =   0
      TintColor       =   &c000000
      Top             =   20
      url             =   ""
      Visible         =   True
      Width           =   30
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  me.SetCornerRadiusXC(10)
		  var offset as xojo.point = new point(1,1)
		  me.SetShadowXC(&C000000,3,offset,0.5)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub redraw()
		  select case metric.value("metric_type")
		  case  "numberofSteps"
		    me.colour = metric_numberOfSteps
		    me.theIcon = icon_shoe2x
		    me.units.Text = "Steps"
		    
		  case  "distance"
		    me.colour = metric_distance
		    me.theIcon = icon_location
		    me.units.Text = "Kilometres"
		    
		  case  "floorsAscended"
		    me.colour = metric_flightsAscended
		    me.theIcon =icon_stairsAscen3x
		    me.units.Text = "Flights Climbed"
		    
		  case "floorsDescended"
		    me.colour = metric_flightsDescended
		    me.theIcon = icon_stairsDesc3x
		    me.units.Text = "Flights Descended"
		    
		  case "averageActivePace"
		    me.colour = metric_averageActivePace
		    me.theIcon = icon_stairsDesc3x
		    me.units.Text = "Average Active Pace"
		    
		  case "currentPace"
		    me.colour = metric_currentPace
		    me.theIcon = icon_stairsDesc3x
		    me.units.Text = "Current Pace"
		    
		  case "currentCadence"
		    me.colour = metric_currentCadence
		    me.theIcon = icon_stairsDesc3x
		    me.units.Text = "Current Cadence"
		    
		  case  "calories"
		    me.colour = metric_calories
		    me.theIcon = icon_shoe2x
		    me.units.Text = "Calories"
		    
		  else
		    me.colour = metric_calories
		    me.theIcon = icon_shoe2x
		    me.units.Text = "unknown"
		    
		  end select
		  me.Rectangle1.FillColor = me.colour
		  var theValue as integer =metric.value("achievement")
		  if me.units.text = "Kilometres" then
		    theValue = TheValue/1000
		  end if
		  
		  me.achievement.text = theValue.ToString(Locale.Current)
		  
		  'containers(i).achievement.text = a.column("metric_value").StringValue
		  me.yomlyImageView1.image = me.theicon
		  me.achievement.TextFont = font.BoldSystemFont(14)
		  me.units.TextFont = font.SystemFont(10)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		colour As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		metric As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		theIcon As Picture
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
	#tag ViewProperty
		Name="colour"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="theIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
