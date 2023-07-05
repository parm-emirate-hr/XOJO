#tag MobileContainer
Begin MobileContainer drillDown
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 1
   Height          =   30
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   86
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 4, 1, -0, , True
      Caption         =   "See more..."
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   "System Bold		"
      TextSize        =   10
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   86
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		theItem As string
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  var newscreen as new myHealth_Screen
		  newscreen.show(app.last_screen)
		  '[[if theItem = "players" then
		  'Var newScreen As New competitors_screen
		  'newScreen.Show(app.last_screen)
		  'end if
		  'if theItem = "challenges" then
		  'Var newScreen As New challenges_screen
		  'newScreen.Show(app.last_screen)
		  'end if
		  ' 
		  ' Add the array of Items to the screen's Source
		  '
		  
		  
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
		Name="theItem"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
