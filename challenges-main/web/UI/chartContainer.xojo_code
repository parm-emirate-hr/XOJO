#tag WebContainerControl
Begin WebContainer chartContainer
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   340
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
   Width           =   1263
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebChart Chart1
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   True
      Height          =   300
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Mode            =   4
      Scope           =   0
      TabIndex        =   0
      TabStop         =   True
      Title           =   "Active Players"
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   400
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
   Begin WebChart Chart2
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   True
      Height          =   300
      Index           =   -2147483648
      indicator       =   0
      Left            =   435
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Mode            =   5
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   1
      TabStop         =   True
      Title           =   "Team Sizes"
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   400
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
   Begin WebChart Chart3
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   True
      Height          =   300
      Index           =   -2147483648
      indicator       =   0
      Left            =   843
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Mode            =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   2
      TabStop         =   True
      Title           =   "Goals Met"
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   400
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  ' we are going to recalculate the width of each of the charts.
		  '
		  dim controlCount as Integer
		  dim newWidth as Integer
		  dim thecontrol as WebChart
		  dim start as Integer
		  me.width = session.winWidth
		  start = 20
		  controlCount = me.lastControlIndex+1
		  newWidth = (me.width - 40) / controlCount
		  for each thecontrol in controls
		    thecontrol.Width= newWidth - 10
		    thecontrol.Left = start
		    start = start + newWidth
		  next
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  dim controlCount as Integer
		  dim newWidth as Integer
		  dim thecontrol as WebChart
		  
		  controlCount = me.lastControlIndex+1
		  newWidth = me.width / controlCount
		  for each thecontrol in controls
		    thecontrol.Width= newWidth
		  next
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Chart1
	#tag Event
		Sub Opening()
		  Var sales() As Double = Array(12500.0, 30200, 25600, 15800)
		  Var colors() As Color = Array(Color.Orange, Color.Brown, Color.Purple, Color.DarkGray)
		  Var ds As New WebChartCircularDataset("Test", sales, Colors)
		  me.AddDataset(ds)
		  me.Style.BorderColor=&c000000
		  me.Style.BorderThickness =2
		  me.Style.BackgroundColor=&cffffff
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Chart2
	#tag Event
		Sub Opening()
		  Var sales() As Double = Array(12500.0, 30200, 25600, 15800)
		  Var colors() As Color = Array(Color.Orange, Color.Brown, Color.Purple, Color.DarkGray)
		  Var ds As New WebChartCircularDataset("Test", sales, Colors)
		  me.AddDataset(ds)
		  me.Style.BorderColor=&c000000
		  me.Style.BorderThickness =2
		  me.Style.BackgroundColor=&cffffff
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Chart3
	#tag Event
		Sub Opening()
		  Var sales() As Double = Array(345890.0, 421934, 456908, 567987)
		  Var ds As New WebChartLinearDataset("Sales", Color.Blue, True, sales)
		  me.AddDataset(ds)
		  me.AddLabels("Q1", "Q2", "Q3", "Q4")
		  me.AddDataset(ds)
		  me.Style.BorderColor=&c000000
		  me.Style.BorderThickness =2
		  me.Style.BackgroundColor=&cffffff
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
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
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
