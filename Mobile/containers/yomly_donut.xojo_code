#tag MobileContainer
Begin MobileContainer yomly_donut
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   196
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   194
   Begin MobileCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 4, <Parent>, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 8, <Parent>, 8, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   False
      Height          =   196
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   194
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Property, Flags = &h0
		achieved As Double = 10000.0
	#tag EndProperty

	#tag Property, Flags = &h0
		icon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		metric_type As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ringColour As Color = &c1bd49d
	#tag EndProperty

	#tag Property, Flags = &h21
		Private setup As ARRingsSetup
	#tag EndProperty

	#tag Property, Flags = &h0
		target As Double = 25000.0
	#tag EndProperty

	#tag Property, Flags = &h0
		thickness As Integer = 10
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics)
		  if enabled then
		    Dim r1, r2 As Rect
		    setup=ARRingsSetup.Create
		    If setup<>Nil Then
		      setup.animated(Canvas1)
		    End If
		    
		    If g.Width>2*g.Height Then
		      //horizontal
		      r1=New Rect(0, 0, g.Width/2, g.Height)
		      r2=New Rect(g.Width/2, 0, g.Width/2, g.Height)
		      
		    Else
		      //vertical
		      r1=New Rect(0, 0, g.Width, g.width)
		      'r2=New Rect(0, g.Height/2+4, g.Width, g.Height/2-4)
		    End If
		    
		    If setup<>Nil Then
		      setup.labelColor=&c464646
		      setup.FontSize=20
		      'setup.labelOutilne=True
		      
		      setup.FillColor=New ColorGroup(Color.Red, Color.Blue)
		      
		      Var gl As New LinearGradientBrush
		      gl.StartPoint=New Point(g.Width/2, 0)
		      gl.EndPoint=New Point(g.Width/2, g.Height)
		      gl.GradientStops.Add New Pair(0.0, New ColorGroup(Color.Red, Color.Blue))
		      gl.GradientStops.Add New Pair(0.5, Color.Green)
		      gl.GradientStops.Add New Pair(1.0, New ColorGroup(Color.Orange, Color.Purple))
		      setup.FillColor=gl
		      setup.labelColor=gl
		      
		      Var glloc As New ARLocalLinearGradientBrush(New Point(g.Width/2, 0), New Point(g.Width/2, g.Height), g)
		      glloc.GradientStops.Add New Pair(0.0, New ColorGroup(Color.Magenta, Color.Blue))
		      glloc.GradientStops.Add New Pair(0.5, Color.Green)
		      glloc.GradientStops.Add New Pair(1.0, New ColorGroup(Color.Brown, Color.Purple))
		      'setup.backColor=glloc
		      
		      Var gr As New RadialGradientBrush
		      gr.StartPoint=New Point(g.Width/2, 0)
		      gr.EndPoint=New Point(g.Width/2, g.Height)
		      gr.StartRadius=g.width*.25
		      gr.EndRadius=g.width*.25
		      gr.GradientStops.Add New Pair(0.0, New ColorGroup(Color.Magenta, Color.Blue))
		      gr.GradientStops.Add New Pair(0.5, Color.Green)
		      gr.GradientStops.Add New Pair(1.0, New ColorGroup(Color.Brown, Color.Purple))
		      setup.FillColor=gr
		      
		      Var grloc As New ARLocalRadialGradientBrush(g.width*.25, g.width, g)
		      grloc.GradientStops.Add New Pair(0.0, New ColorGroup(Color.Red, Color.Blue))
		      grloc.GradientStops.Add New Pair(0.5, Color.Green)
		      grloc.GradientStops.Add New Pair(1.0, New ColorGroup(Color.Orange, Color.Purple))
		      setup.FillColor=grloc
		      
		      Var gc1 As ARConicBrush=ARConicBrush.fillConic(False, 0.0:New ColorGroup(Color.Red, Color.Blue), 0.5:Color.Green, 0.8:New ColorGroup(Color.Yellow, Color.Teal))
		      setup.FillColor=gc1
		      Var gc2 As ARConicBrush=ARConicBrush.fillConic(True, 0.0:New ColorGroup(Color.Red, Color.Blue), 0.5:Color.Green, 0.8:New ColorGroup(Color.Yellow, Color.Teal))
		      setup.FillColor=gc2
		    end if
		    Static nn As Integer
		    setup.fillColor = ringColour
		    setup.labelColor=&c464646
		    setup.FontSize=10.0
		    
		    setup.valueFormat=""
		    nn=nn+1
		    
		    var percent as double = achieved/target
		    if percent > 1 then 
		      percent = 1.0
		    end if
		    g.DrawRing percent, setup, thickness, "", r1
		    if g.width > 100 then ' We will draw the label inside
		      g.Font = font.BoldSystemFont(18)
		      var stringWidth as double = g.TextWidth(achieved.ToString)/2
		      g.drawtext(achieved.ToString,(g.width/2)-stringwidth,5*(g.height/8))
		      g.Font = font.SystemFont(12)
		      stringWidth = g.TextWidth(metric_type)/2
		      g.drawtext(metric_type,(g.width/2)-stringwidth,5*(g.height/8)+g.font.LineHeight)
		      g.DrawPicture(icon,(g.width/2)-25,2*(g.height/8), 50.0, 50.0,0,0,icon.width, icon.height)
		    else
		      ' we will draw the label underneath
		      g.DrawPicture(icon,(g.width/2)-(25/2),2*(g.height/8), 25,25,0,0,icon.width, icon.height)
		      g.Font = font.BoldSystemFont(15)
		      var stringWidth as double = g.TextWidth(achieved.ToString)/2
		      g.drawtext(achieved.ToString,(g.width/2)-stringwidth,9.5*(g.width/8))
		      g.Font = font.SystemFont(12)
		      stringWidth = g.TextWidth(metric_type)/2
		      g.drawtext(metric_type,(g.width/2)-stringwidth,9.5*(g.width/8)+g.font.LineHeight)
		      
		    end if
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  setup=ARRingsSetup.Create
		  If setup<>Nil Then
		    setup.animated(Canvas1)
		  End If
		  'redraw
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
	#tag ViewProperty
		Name="icon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="achieved"
		Visible=false
		Group="Behavior"
		InitialValue="10000"
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="target"
		Visible=false
		Group="Behavior"
		InitialValue="25000"
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="thickness"
		Visible=false
		Group="Behavior"
		InitialValue="10"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ringColour"
		Visible=false
		Group="Behavior"
		InitialValue="&c1bd49d"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="metric_type"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
