#tag MobileContainer
Begin MobileContainer dashBoardStatus
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   274
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   325
   Begin yomly_donut metric1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      achieved        =   0.0
      AutoLayout      =   metric1, 9, <Parent>, 9, False, +1.00, 4, 1, 5, , True
      AutoLayout      =   metric1, 7, , 0, False, +1.00, 4, 1, 194, , True
      AutoLayout      =   metric1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   metric1, 8, , 0, False, +1.00, 4, 1, 196, , True
      ControlCount    =   0
      Enabled         =   False
      Height          =   196
      icon            =   0
      Left            =   70
      LockedInPosition=   False
      metric_type     =   ""
      ringColour      =   &c1BD49D00
      Scope           =   0
      target          =   0.0
      thickness       =   10
      TintColor       =   &c000000
      Top             =   0
      Untitled        =   0
      Visible         =   True
      Width           =   194
   End
   Begin yomly_donut metric2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      achieved        =   0.0
      AutoLayout      =   metric2, 8, , 0, False, +1.00, 4, 1, 115, , True
      AutoLayout      =   metric2, 2, metric1, 1, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   metric2, 3, metric1, 4, False, +1.00, 4, 1, -40, , True
      AutoLayout      =   metric2, 7, , 0, False, +1.00, 4, 1, 80, , True
      ControlCount    =   0
      Enabled         =   False
      Height          =   115
      icon            =   0
      Left            =   20
      LockedInPosition=   False
      metric_type     =   ""
      ringColour      =   &c1BD49D00
      Scope           =   0
      target          =   0.0
      thickness       =   10
      TintColor       =   &c000000
      Top             =   156
      Untitled        =   0
      Visible         =   True
      Width           =   80
   End
   Begin yomly_donut metric3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      achieved        =   0.0
      AutoLayout      =   metric3, 4, metric2, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   metric3, 8, , 0, False, +1.00, 4, 1, 115, , True
      AutoLayout      =   metric3, 1, metric1, 2, False, +1.00, 4, 1, -30, , True
      AutoLayout      =   metric3, 7, , 0, False, +1.00, 4, 1, 80, , True
      ControlCount    =   0
      Enabled         =   False
      Height          =   115
      icon            =   0
      Left            =   234
      LockedInPosition=   False
      metric_type     =   ""
      ringColour      =   &c1BD49D00
      Scope           =   0
      target          =   0.0
      thickness       =   10
      TintColor       =   &c000000
      Top             =   156
      Untitled        =   0
      Visible         =   True
      Width           =   80
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  redraw
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub redraw()
		  ' get the metrics status
		  '
		  var query as string
		  if app.player <> nil  then
		    
		    ' lets get the array of metrics
		    '
		    var i as integer = 0
		    var themetrics() as variant = app.challenges.value("metrics")
		    var theDonuts() as yomly_donut  = array(me.metric1,me.metric2,me.metric3)
		    var theThickness() as integer = array(10,10,10)
		    var theColour() as color = array( &C1bd4a0 ,color.Orange,  color.purple)
		    var a() as variant = app.challenges.Value("metrics")
		    for each b as dictionary in a
		      
		      theDonuts(i).thickness = theThickness(i)
		      theDonuts(i).metric_type = dictionary(theMetrics(i)).value("metric_type")
		      select case theDonuts(i).metric_type
		      case "numberofSteps"
		        theDonuts(i).icon = icon_shoe2x
		      case "floorsAscended"
		        theDonuts(i).icon = icon_stairsAscen3x
		      case "floorsDescended"
		        theDonuts(i).icon = icon_stairsDesc3x
		      case "distance"
		        theDonuts(i).icon =icon_location3x
		      end select
		      
		      theDonuts(i).target = dictionary(theMetrics(i)).value("target")
		      theDonuts(i).achieved = dictionary(theMetrics(i)).value("achievement")
		      theDonuts(i).ringColour=theColour(i)
		      thedonuts(i).Enabled = true
		      thedonuts(i).visible = true
		      thedonuts(i).refresh
		      i = i + 1
		      
		    next
		  end if
		  
		  
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
