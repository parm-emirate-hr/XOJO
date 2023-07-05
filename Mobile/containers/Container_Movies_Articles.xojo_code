#tag MobileContainer
Begin MobileContainer Container_Movies_Articles
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   192
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   1014
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  var OfferArray() as Dictionary = articleAPI.getList
		  var containers() as container_movie 
		  var i as integer = 0
		  
		  ' get all the articles
		  '
		  Var TheWidth as integer =  250
		  
		  for each a as Dictionary in OfferArray
		    '
		    ' lets calculate the url for the video
		    '
		    var theContainer  as new container_movie
		    containers.Add(theContainer)
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
		    containers(i).theMovie.Visible = true
		    
		    containers(i).heading.visible = true
		    containers(i).subheading.visible = true
		    containers(i).theMovie.LoadURL(mediaAPI.getUrl("articles",a.value("id"),a.value("video")))
		    containers(i).heading.text = a.value("heading")
		    containers(i).subHeading.text = a.value("subheading")
		    containers(i).SetBackgroundColorXC(&cede6e6)
		    containers(i).theMovie.Position=1.5
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
