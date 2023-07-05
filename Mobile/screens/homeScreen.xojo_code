#tag MobileScreen
Begin MobileScreen homeScreen Implements ARMobileTableSectionHeaderSource,iOSMobileTableDataSource
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 9
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   yomlyColours
   Title           =   "Home"
   Top             =   0
   Begin UserAuthentication UserAuthentication1
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   2
      SensorType      =   0
      Top             =   0
   End
   Begin iOSMobileTableExtended Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   True
      AllowSearch     =   False
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table1, 3, <Parent>, 3, False, +1.00, 4, 1, 70, , True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   Section_Headers
      CanSelectRow    =   True
      ControlCount    =   0
      disableHideOnScroll=   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      FooterHeight    =   0
      Format          =   0
      HeaderHeight    =   0
      Height          =   856
      HideEmptyRows   =   False
      IndexBackgroundColor=   &c000000
      IndexColor      =   &c000000
      IndexMinimumDisplayRows=   0
      IndexShow       =   False
      IndexTrackingBackgroundColor=   &c000000
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
      SectionHeaderHeight=   35.0
      SeparatorColor  =   metric_currentCadence
      SeparatorStyle  =   ""
      TintColor       =   &c000000
      Top             =   70
      Visible         =   True
      Width           =   428
   End
   Begin MobileToolbarButton bPlayer
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   22
      Icon            =   802738175
      Left            =   363
      LockedInPosition=   False
      Scope           =   0
      Top             =   32
      Type            =   1001
      Width           =   22.0
   End
   Begin MobileToolbarButton Button2
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   22
      Icon            =   1601138687
      Left            =   8
      LockedInPosition=   False
      Scope           =   0
      Top             =   32
      Type            =   1001
      Width           =   22.0
   End
   Begin Timer Timer1
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   120000
      RunMode         =   2
      Scope           =   0
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  'redraw
		End Sub
	#tag EndEvent

	#tag Event
		Sub AppearanceChanged(dark as Boolean)
		  #Pragma Unused dark
		  Table1.updateAppearance
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Self.SetNavBarColorXC(&cf4f6fa00, &c000000, &c000000, True, True)
		  bPlayer.tag = "player"
		  bPlayer.Icon = female_default
		  
		  app.last_screen = self
		  
		  'source.ResizeTo(14, 3)
		  'Var rn As New Random
		  'For r As Integer=0 To 14
		  'For c As Integer=0 To 3
		  'source(r, c)=rn.InRange(0, 1000)
		  'Next
		  'Next
		  Table1.DataSource=Self
		  Table1.headerView=new ccHeaderForCustomHeader
		  table1.SetSectionHeaderTopPaddingXC(0)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  select case button.tag
		  case "player"
		    if app.player = Nil then
		      Var newScreen As New sc_player_login
		      newScreen.Show(self)
		    else
		      Var newScreen As New sc_player_details
		      newScreen.Show(self)
		    end if
		  else
		  end select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub bye()
		  //At the end of the refresh you can reload your data
		  Table1.ReloadDataSource
		  
		  //And end the refresh
		  Table1.EndRefresh
		End Sub
	#tag EndMethod

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
		  
		  
		  
		  'Return c
		  
		  
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
		Sub redraw()
		  if app.challenges <> nil then
		    table1.ReloadDataInSection(0)
		    table1.reloadDataInSection(1)
		    table1.reloadDatainSection(2)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(table As iOSMobileTable, section As Integer) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  
		  select case section
		  case 0
		    if app.player <> nil then
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview))
		      return c
		    else
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview_no_challenges))
		      return c
		    end if
		  case 1
		    if app.player <> nil then
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(competitorsCustomCell))
		      Return c
		    else
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview_no_challenges))
		      return c
		    end if
		  case 2
		    if app.player <> nil then
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(CurrentChallenge))
		      Return c
		    else
		      Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(Overview_no_challenges))
		      return c
		    end if
		  case 3
		    Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(articles))
		    Return c
		  case 4
		    Var c As MobileTableCellData=table.CreateCustomCell(GetTypeInfo(offers))
		    Return c
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount(table as iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  Return 5
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


	#tag Property, Flags = &h0
		source(-1,-1) As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events UserAuthentication1
	#tag Event
		Sub AuthenticationSucceeded()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Request("some stuff", true)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(error as RuntimeException)
		  msgbox("evil has occurred")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Opening()
		  source.ResizeTo(14, 3)
		  Var rn As New Random
		  For r As Integer=0 To 14
		    For c As Integer=0 To 3
		      source(r, c)=rn.InRange(0, 1000)
		    Next
		  Next
		  table1.TintColor=color.green
		  table1.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.none)
		  table1.TintColor = color.green
		  table1.SetScrollbarVisibleXC(false)
		  table1.SetBackgroundColorXC(&cf5f7fa)
		  Table1.headerView=new ccHeaderForCustomHeader
		End Sub
	#tag EndEvent
	#tag Event
		Sub Refreshed()
		  //Start a refresh (original event)
		  Static n As Integer=0
		  n=n+1
		  //But you can read and write your text
		  Static t As String=Me.RefreshTitle
		  If Not t.isEmpty Then Me.RefreshTitle=t+n.ToString
		  //simulate some new data
		  Var rn As New Random
		  For i As Integer=0 To 9
		    Var r As Integer=rn.InRange(0, source.lastIndex(1))
		    var c As Integer=rn.InRange(0, source.lastIndex(2))
		    source(r, c)=n
		  Next
		  //simulate a long process
		  
		  Timer.CallLater 1000, WeakAddressOf bye
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Run()
		  self.redraw
		End Sub
	#tag EndEvent
#tag EndEvents
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
