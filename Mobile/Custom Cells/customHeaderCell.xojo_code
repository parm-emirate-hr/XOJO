#tag IOSContainerControl
Begin MobileTableCustomCell customHeaderCell
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   AllowDynamicHeight=   False
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   Enabled         =   True
   Height          =   28
   Left            =   0
   Orientation = 0
   TintColor       =   &c00000000
   Top             =   0
   Visible         =   True
   Width           =   320
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label2, 1, Label1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   64
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   CGTEst
      TextFont        =   "System		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   64
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 1, Label2, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   128
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   CGTEst
      TextFont        =   "System		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   64
   End
   Begin MobileLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label4, 1, Label3, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   192
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   CGTEst
      TextFont        =   "System		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   64
   End
   Begin MobileLabel Label5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label5, 1, Label4, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label5, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label5, 7, Label1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   256
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   CGTEst
      TextFont        =   "System		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   64
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, <Parent>, 7, False, +0.20, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   0
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   CGTEst
      TextFont        =   "System		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   0
      Visible         =   True
      Width           =   64
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub setData(source(, ) as integer, section as integer, row as integer)
		  Var index As Integer=section*10+row
		  Label1.Text="Test "+Integer(row+1).ToString
		  Label1.TextColor=Label1.TextColor
		  Label2.Text=source(index, 0).ToString
		  Label3.Text=source(index, 1).ToString
		  Label4.Text=source(index, 2).ToString
		  Label5.Text=source(index, 3).ToString
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setHeader(section as integer, source(, ) as integer)
		  Label1.TextFont=Font.BoldSystemFont(0)
		  Label1.TextColor=Label1.TextColor
		  Label1.Text="Tot. "+Integer(section+1).ToString
		  Var z(3) As Integer
		  For r As Integer=section*10 To min(section*10+10, source.lastIndex(1))
		    For j As Integer=0 To 3
		      z(j)=z(j)+source(r, j)
		    Next
		  Next
		  Label2.TextFont=Font.BoldSystemFont(0)
		  Label2.TextColor=Label2.TextColor
		  Label2.Text=z(0).ToString
		  Label3.TextFont=Font.BoldSystemFont(0)
		  Label3.TextColor=Label3.TextColor
		  Label3.Text=z(1).ToString
		  Label4.TextFont=Font.BoldSystemFont(0)
		  Label4.TextColor=Label4.TextColor
		  Label4.Text=z(2).ToString
		  Label5.TextFont=Font.BoldSystemFont(0)
		  Label5.TextColor=Label5.TextColor
		  Label5.Text=z(3).ToString
		End Sub
	#tag EndMethod


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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
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
		InitialValue="MobileTableCustomCell"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="AllowDynamicHeight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
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
