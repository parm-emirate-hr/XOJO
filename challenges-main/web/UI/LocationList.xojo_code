#tag WebPage
Begin WebDialog LocationList
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   650
   Index           =   0
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   692
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebListBox AllLocations
      ColumnCount     =   6
      ColumnWidths    =   "0%,40%,40%,20%,20%"
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   False
      Height          =   565
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   0
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   652
      _mPanelIndex    =   -1
   End
   Begin WebButton Button1
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "+"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   610
      Visible         =   True
      Width           =   52
      _mPanelIndex    =   -1
   End
   Begin WebButton Button2
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "-"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Left            =   77
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   610
      Visible         =   True
      Width           =   52
      _mPanelIndex    =   -1
   End
   Begin WebButton Button3
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Done"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Left            =   612
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   610
      Visible         =   True
      Width           =   52
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  refresh
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Refresh()
		  Dim rs As recordset
		  rs = Location.List
		  
		  AllLocations.RemoveAllRows
		  
		  AllLocations.HeaderAt(0) = "ID"
		  AllLocations.HeaderAt(1) = "Name"
		  AllLocations.HeaderAt(2) = "Description"
		  AllLocations.HeaderAt(3) = "Floor"
		  AllLocations.HeaderAt(4) = "X"
		  AllLocations.HeaderAt(5) = "Y"
		  While Not(rs.eof)
		    Dim TheLocation As New Location(rs.field("ID").Value)
		    AllLocations.AddRow(TheLocation.id.totext, TheLocation.name,TheLocation.Description,TheLocation.Floor.totext,TheLocation.X.totext,TheLocation.Y.totext)
		    rs.MoveNext
		  Wend
		  rs.Close
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events AllLocations
	#tag Event
		Sub DoublePressed(row as integer, column as integer)
		  'Dim theLocationdialog As New LocationDialog
		  'Dim theKey As String
		  'theLocationdialog.TheDelegate = Self
		  'Thekey = allLocations.cell(allLocations.ListIndex,0)
		  'heLocationdialog.Location= New Location(Thekey)
		  'theLocationdialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  'Dim thedialog As New LocationDialog
		  'thedialog.TheDelegate = self
		  'thedialog.Location= New Location(Nil)
		  'thedialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  Dim theitem As location
		  Dim thekey As Variant
		  
		  'Thekey = alllocations.CellTextAt(alllocations.SelectedRowIndex)
		  'theitem = New location(Thekey)
		  'theitem.Delete
		  'Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Pressed()
		  self.close
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
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
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
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
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
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Visible=false
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
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
