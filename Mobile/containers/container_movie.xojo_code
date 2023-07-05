#tag MobileContainer
Begin MobileContainer container_movie
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   184
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   230
   Begin MobileMoviePlayer theMovie
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   theMovie, 8, , 0, False, +1.00, 4, 1, 130, , True
      AutoLayout      =   theMovie, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theMovie, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theMovie, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   theMovie, 7, , 0, False, +1.00, 4, 1, 230, , True
      ControlCount    =   0
      Duration        =   0.0
      Enabled         =   True
      HasController   =   True
      Height          =   130
      Left            =   0
      LockedInPosition=   False
      Movie           =   0
      Position        =   0.0
      Scope           =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   False
      Volume          =   100
      Width           =   230
   End
   Begin MobileLabel heading
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   heading, 1, <Parent>, 1, False, +1.00, 4, 1, 6, , True
      AutoLayout      =   heading, 2, <Parent>, 2, False, +1.00, 4, 1, 2, , True
      AutoLayout      =   heading, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      AutoLayout      =   heading, 8, , 0, False, +1.00, 4, 1, 10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   10
      Left            =   6
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   154
      Visible         =   False
      Width           =   226
   End
   Begin MobileLabel subHeading
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   subHeading, 1, heading, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   subHeading, 7, , 0, False, +1.00, 4, 1, 190, , True
      AutoLayout      =   subHeading, 3, heading, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   subHeading, 8, , 0, False, +1.00, 4, 1, 10, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   10
      Left            =   6
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   172
      Visible         =   False
      Width           =   190
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  me.SetCornerRadiusXC(10)
		  me.themovie.SetCornerRadiusXC(10)
		  var offset as xojo.point = new point(1,1)
		  me.SetShadowXC(&C000000,3,offset,0.5)
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event refresh()
	#tag EndHook


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
