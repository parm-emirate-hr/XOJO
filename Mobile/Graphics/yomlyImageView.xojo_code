#tag Class
Protected Class yomlyImageView
Inherits MobileImageViewer
	#tag Method, Flags = &h0
		Sub clipImageToCircle(shadow as double = 0)
		  var theCircle as  new GraphicsPath
		  Const Pi = 3.14159
		  theCircle.AddArc(self.width/2, self.height/2, self.width/2, 0, Pi, true)
		  theCircle.AddArc(self.width/2, self.height/2, self.width/2, Pi, 0, true)
		  var thePicture as new Picture(self.width, self.height)
		  
		  thePicture.Graphics.ClipToPath(theCircle)
		  thePicture.Graphics.DrawPath(theCircle)
		  thePicture.Graphics.DrawPicture(me.image,0,0,Me.width, Me.height,0,0,me.image.width,me.image.height)
		  'thePicture.Graphics.DrawPath(theCircle)
		  
		  me.image = thePicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContentReceived(connection As urlConnection, URL As String, HTTPStatus As Integer, content As String)
		  Var mb As MemoryBlock
		  
		  // Get the image data
		  mb = content
		  // convert the memoryblock back into an image
		  self.Image = Picture.FromData(mb)
		  if clipToCircle then
		    clipImageToCircle
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FileReceived(connection As urlConnection, URL As String, HTTPStatus As Integer, file As FolderItem)
		  if httpStatus = 200 then
		    loadFromFile(file)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadFromFile(theFile as folderItem)
		  try
		    me.Image = thePicture.Open(thefile)
		    if clipToCircle then
		      clipImageToCircle
		    end if
		  catch
		    MessageBox("corrupt file" + theFile.Name)
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadfromUrl()
		  var http as new URLConnection
		  addhandler  http.FileReceived, addressof FileReceived
		  addhandler  http.ContentReceived, addressof ContentReceived
		  http.Send("GET", url, thefile)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadImageforObject(objectType as string, key as integer, fileName as string)
		  '
		  ' first we are going to see if the file exists in cache
		  '
		  url=mediaAPI.getUrl(objectType,key, fileName)
		  'loadFromUrl
		  if filename = "" then
		  else
		    
		    theFile = SpecialFolder.documents.child("yomly").child(objectType).child(key.ToString).child(fileName)
		    if not(theFile.exists) then
		      app.checkFolders(objectType,key)
		      loadFromUrl
		    else
		      loadFromFile(theFile)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateImage(theImage as Picture)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		clipToCircle As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		theFile As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ThePicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		url As string
	#tag EndProperty


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
			Name="DisplayMode"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="MobileImageViewer.DisplayModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Center"
				"4 - Top"
				"5 - Bottom"
				"6 - Left"
				"7 - Right"
				"8 - TopLeft"
				"9 - TopRight"
				"10 - BottomLeft"
				"11 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
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
			Name="ThePicture"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="clipToCircle"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
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
			Name="url"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
