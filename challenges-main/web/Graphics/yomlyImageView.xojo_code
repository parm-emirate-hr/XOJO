#tag Class
Protected Class yomlyImageView
Inherits WebImageViewer
	#tag Event
		Sub Opening()
		  Dim TempPicture As Picture
		  dim winDiff as integer
		  TempPicture = me.Picture
		  Thepicture = me.Picture ' save the current version of the picture
		  'the width of the container needs to change based on the new size of the window.
		  winDiff = session.winwidth - 1200
		  me.width = me.width + winDiff
		  '
		  ' now resize the display of the picture
		  '
		  
		  TempPicture.Graphics.drawpicture(Thepicture,0,0,Me.width,Me.height,0,0,Thepicture.width,Thepicture.height)
		  Picture = TempPicture
		  'me.updateImage(TempPicture)
		  'me.UpdateBrowser()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Pressed(x as Integer, y as Integer)
		  Dim TheDialog As  New UploadPicture
		  TheDialog.Destination = Me
		  TheDialog.show
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  Dim TempPicture As Picture
		  TempPicture = me.Picture
		  Thepicture = me.Picture ' save the current version of the picture
		  '
		  ' now resize the display of the picture
		  '
		  TempPicture.Graphics.drawpicture(Thepicture,0,0,Me.width,Me.height,0,0,Thepicture.width,Thepicture.height)
		  'Picture = TempPicture
		  me.updateImage(TempPicture)
		  'me.UpdateBrowser()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub updateImage(theImage as Picture)
		  ThePicture = TheImage
		  me.picture = ThePicture
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ThePicture As Picture
	#tag EndProperty


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
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue="100"
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
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue="100"
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
			Name="SVGData"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="WebImageViewer.HorizontalAlignments"
			EditorType="Enum"
			#tag EnumValues
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="WebImageViewer.VerticalAlignments"
			EditorType="Enum"
			#tag EnumValues
				"1 - Top"
				"2 - Center"
				"3 - Bottom"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ProtectImage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=true
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
			Name="ThePicture"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
