#tag WebPage
Begin WebDialog UploadPicture
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   564
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
   Width           =   408
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebFileUploader FileUploader
      Caption         =   "Select"
      ControlID       =   ""
      Enabled         =   True
      Filter          =   ""
      Height          =   51
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumBytes    =   0
      MaximumFileCount=   0
      Scope           =   0
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   20
      UploadTimeout   =   0
      Visible         =   True
      Width           =   408
      _mPanelIndex    =   -1
   End
   Begin WebButton Button1
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Upload"
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
      Top             =   90
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton Button2
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Save"
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
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   417
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin qasarCanvas TheCanvas
      ControlID       =   ""
      DiffEngineDisabled=   False
      Enabled         =   True
      Height          =   260
      Image           =   0
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
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   131
      Visible         =   True
      Width           =   368
      _mPanelIndex    =   -1
   End
   Begin WebButton Button3
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Cancel"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      Indicator       =   0
      Left            =   132
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
      Top             =   417
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebProgressBar ProgressBar1
      AllowAnimation  =   True
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      Height          =   20
      Indeterminate   =   False
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumValue    =   100
      Scope           =   0
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   544
      Value           =   50
      Visible         =   True
      Width           =   408
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Property, Flags = &h0
		Destination As yomlyImageView
	#tag EndProperty

	#tag Property, Flags = &h0
		ThePicture As Picture
	#tag EndProperty


#tag EndWindowCode

#tag Events FileUploader
	#tag Event
		Sub FileAdded(Filename As String, Bytes as UInt64, MimeType as String)
		  FileUploader.StartUpload
		End Sub
	#tag EndEvent
	#tag Event
		Sub UploadFinished(Files() As WebUploadedFile)
		  Dim ThePicture As New Picture(Destination.Width,Destination.Height)
		  Dim theNewPicture As Picture
		  ProgressBar1.value = 100
		  theNewPicture = Picture.fromdata(files(0).data)
		  ThePicture.Graphics.DrawPicture(theNewPicture,0,0,Destination.Width,Destination.Height,0,0,theNewPicture.Width,theNewPicture.Height)
		  TheCanvas.Image = ThePicture
		  Self.ThePicture = theNewPicture
		  Thecanvas.DrawPicture
		End Sub
	#tag EndEvent
	#tag Event
		Sub UploadProgressed(Percent as Integer)
		  progressbar1.value = Percent
		End Sub
	#tag EndEvent
	#tag Event
		Sub UploadStarted(FileCount As Integer)
		  ProgressBar1.Value = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  Destination.UpdateImage(ThePicture)
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TheCanvas
	#tag Event
		Sub Opening()
		  me.Destination = Destination
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProgressBar1
	#tag Event
		Sub Opening()
		  Me.MaximumValue = 100
		  
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
		Group="Position"
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
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ThePicture"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
