#tag MobileScreen
Begin MobileScreen competitors_screen Implements ARMobileTableSectionHeaderSource, iOSMobileTableDataSource
   BackButtonCaption=   "Home"
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Untitled"
   Top             =   0
   Begin iosMobileTableExtended Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   &cFFFFFF
      CanSelectRow    =   True
      ControlCount    =   0
      disableHideOnScroll=   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      FooterHeight    =   0
      Format          =   0
      HeaderHeight    =   0
      Height          =   503
      HideEmptyRows   =   False
      IndexColor      =   &c000000
      IndexMinimumDisplayRows=   0
      IndexShow       =   False
      Left            =   0
      LockedInPosition=   False
      MultipleSelection=   False
      MultipleSelectionColor=   &cFFFFFFFF
      MultipleSelectionUseCustomColor=   False
      RefreshTint     =   &cC7C7CC
      RefreshTitle    =   ""
      Scope           =   0
      searchScope     =   ""
      SectionCount    =   0
      SectionFooterHeight=   -1.0
      SectionHeaderHeight=   -1.0
      SeparatorColor  =   &cC7C7CC
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Function HeaderForSection(table as iosMobileTableExtended, section as Integer) As MobileTableCustomCell
		  // Part of the ARMobileTableSectionHeaderSource interface.1
		  
		  select case section
		  case 0
		    Var d As MobileTableCustomCell=table.createCustomHeader(GetTypeInfo(section_header_overview))
		    'Var dd As customHeaderCell=customHeaderCell(d)
		    'dd.setHeader(section, source)
		    Return d
		  case 1
		    Var c As MobileTableCustomCell=table.createCustomHeader(GetTypeInfo(section_header_competitors))
		    
		    Return c
		  case 2
		    Var c As MobileTableCustomCell=table.createCustomHeader(GetTypeInfo(section_header_challenge))
		    
		    Return c
		  case 3
		    Var c As MobileTableCustomCell=table.createCustomHeader(GetTypeInfo(section_header_articles))
		    
		    Return c
		  case 4
		    Var c As MobileTableCustomCell=table.createCustomHeader(GetTypeInfo(section_header_offers))
		    
		    Return c
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target64Bit))
		Sub HeaderHeightForSection(table as iosMobileTableExtended, section as Integer, byRef height as single)
		  // Part of the ARMobileTableSectionHeaderSource interface.
		  
		  #Pragma Unused table
		  #Pragma Unused section
		  if(section=0) then
		    height = 0
		  else
		    height=30
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(table As iOSMobileTable, section As Integer) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  select case section
		  case 0
		    return 1
		  case 1
		    return app.players.Count
		  end select
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  select case section
		  case 0
		    Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview))
		    return c
		  case 1
		    Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview))
		    return c
		  end select
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount(table as iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  Return 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  #Pragma Unused section
		  
		  //Remeber to don't set a section title if you have a custom header
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
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
#tag EndViewBehavior
