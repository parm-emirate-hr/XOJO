#tag WebContainerControl
Begin WebContainer DateTimeSelection
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   41
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   176
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebPopupMenu Hours
      ControlID       =   ""
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   9
      Visible         =   True
      Width           =   50
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   50
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   2
      Text            =   ":"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   9
      Underline       =   False
      Visible         =   True
      Width           =   20
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu Minutes
      ControlID       =   ""
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "00\n15\n30\n45"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   61
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   9
      Visible         =   True
      Width           =   47
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   105
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   4
      Text            =   ":"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   9
      Underline       =   False
      Visible         =   True
      Width           =   20
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu AMPM
      ControlID       =   ""
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "AM\nPM"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   120
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   0
      SelectedRowValue=   ""
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   9
      Visible         =   True
      Width           =   52
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Shown()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub UpdateDate()
		  'Dim Thetime As String
		  dim TheHour as Integer
		  'If AMPM.Text = "PM" Then
		  'TheHour = 12+hours.Text.Val
		  'Else
		  'thehour =hours.Text.Val
		  'End If
		  'Thedate.hour = TheHour
		  'Thedate.Minute = Integer.fromText(minutes.Text.totext)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		TheDate As date
	#tag EndProperty


#tag EndWindowCode

#tag Events Hours
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  UpdateDate()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Minutes
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  UpdateDate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AMPM
	#tag Event
		Sub SelectionChanged(item as WebMenuItem)
		  UpdateDate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
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
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
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
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
