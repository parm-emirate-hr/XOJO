#tag MobileContainer
Begin MobileContainer Container_metrics
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   92
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   1186
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  'var MetricArray() as Dictionary = articleAPI.getList
		  var containers() as metric_card 
		  var i as integer = 0
		  
		  var theMetrics() as variant = app.challenges.Value("metrics")
		  
		  
		  for each a as dictionary in theMetrics
		    '
		    ' lets calculate the url for the video
		    '
		    var theContainer  as new metric_card
		    containers.Add(theContainer)
		    var theWidth as double = 140
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
		    containers(i).metric = a
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
