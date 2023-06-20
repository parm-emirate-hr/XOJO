#tag MobileContainer
Begin MobileContainer container_article
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   263
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   248
   Begin MobileMoviePlayer theMovie
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   theMovie, 8, , 0, False, +1.00, 4, 1, 200, , True
      AutoLayout      =   theMovie, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theMovie, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theMovie, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Duration        =   0.0
      Enabled         =   True
      HasController   =   True
      Height          =   200
      Left            =   0
      LockedInPosition=   False
      Movie           =   0
      Position        =   0.0
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Volume          =   100
      Width           =   248
   End
   Begin MobileLabel heading
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   heading, 8, , 0, False, +1.00, 4, 1, 10, , True
      AutoLayout      =   heading, 1, theMovie, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   heading, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   heading, 3, theMovie, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   10
      Left            =   0
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   12
      TintColor       =   &c000000
      Top             =   208
      Visible         =   True
      Width           =   248
   End
   Begin MobileLabel subHeading
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   subHeading, 1, theMovie, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   subHeading, 2, heading, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   subHeading, 3, heading, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   subHeading, 8, , 0, False, +1.00, 4, 1, 25, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   25
      Left            =   0
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   10
      TintColor       =   &c000000
      Top             =   226
      Visible         =   True
      Width           =   248
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  me.SetBorderWidthXC(0.5)
		  me.SetBorderColorXC(&c000000)
		  me.SetBackgroundColorXC(&ce7e7e7)
		  me.SetCornerRadiusXC(10)
		  me.themovie.SetCornerRadiusXC(10)
		  var offset as xojo.point = new point(1,1)
		  me.SetShadowXC(&C000000,3,offset,0.5)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub redraw()
		  theMovie.LoadURL(mediaAPI.geturl("articles",theRecord.value("id"),theRecord.value("video")))
		  theMovie.position=1.5
		  heading.text= therecord.value("heading")
		  subheading.text = therecord.value("subheading")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		theRecord As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events heading
	#tag Event
		Sub Opening()
		  me.TextFont=font.BoldSystemFont(10)
		  me.TextColor= &c464646
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events subHeading
	#tag Event
		Sub Opening()
		  me.TextFont=font.SystemFont(8)
		  me.TextColor= &c464646
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
