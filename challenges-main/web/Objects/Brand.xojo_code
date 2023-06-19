#tag Class
Protected Class Brand
Inherits serializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  // ID will be updated automatically
		  row.Column("Name") = "New Brand"
		  row.PictureColumn("Image") = Default
		  row.PictureColumn("Thumbnail") = Default
		  row.PictureColumn("Logo") = Default
		  Return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Brands order by Name"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListToJSON() As JSONItem
		  Dim theSQL As String
		  Dim TheJson As New JsonItem
		  Dim rs As recordset
		  TheSql =  "SELECT * from Brands order by Name"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  rs.MoveFirst
		  
		  While Not(rs.eof)
		    Dim TheDictionary As New Dictionary
		    TheDictionary.value("ID") = rs.field("ID").IntegerValue
		    TheDictionary.value("Name") =rs.field("Name").StringValue
		    TheJson.append(TheDictionary)
		    rs.MoveNext
		  Wend
		  Dim j As JSONItem
		  j = theJson
		  
		  Return j
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListWithCriteria(TheCriteria as string) As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Brands "+ TheCriteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  TheRecordset.field("Name").StringValue = Me.Name
		  TheRecordset.field("ID").IntegerValue = Me.ID
		  TheRecordset.field("Image").PictureValue = Me.Image
		  TheRecordset.field("Logo").PictureValue = Me.Logo
		  TheRecordset.field("Thumbnail").PictureValue = Me.Thumbnail
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "Brands"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  Me.Name = TheRecordset.field("Name").StringValue
		  Me.ID = TheRecordset.field("ID").IntegerValue
		  Me.Image = TheRecordset.field("Image").PictureValue
		  Me.Logo= TheRecordset.field("Logo").PictureValue
		  Me.Thumbnail= TheRecordset.field("ThumbNail").PictureValue
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Logo As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		ThumbNail As Picture
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dirty"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
			Type="Integer"
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThumbNail"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Logo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
