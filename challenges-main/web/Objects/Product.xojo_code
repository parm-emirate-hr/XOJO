#tag Class
Protected Class Product
Inherits serializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  // ID will be updated automatically
		  row.Column("Name") = "Untitled Product"
		  row.column("SKU") = ""
		  row.column("Description") = ""
		  row.CurrencyColumn("Price") = 0
		  row.column("ImageURL") = ""
		  
		  Return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Products order by Name"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListWithCriteria(TheCriteria as string) As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Products "+ TheCriteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  TheRecordset.field("Name").StringValue = Me.Name
		  TheRecordset.field("ID").IntegerValue = Me.ID
		  TheRecordset.field("Price").CurrencyValue= Me.price
		  TheRecordset.field("Description").Stringvalue= Me.Description
		  TheRecordset.field("SKU").StringValue = Me.sku
		  TheRecordset.field("ImageURL").stringValue = Me.imageurl
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "Products"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  Me.Name = TheRecordset.field("Name").StringValue
		  Me.ID = TheRecordset.field("ID").IntegerValue
		  Me.Description = TheRecordset.field("Description").StringValue
		  Me.Price = TheRecordset.field("Price").CurrencyValue
		  Me.ImageURL = TheRecordset.field("imageurl").StringValue
		  Me.SKU= TheRecordset.field("sku").StringValue
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageURL As String = "0"
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Price As Currency = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		SKU As String
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
			Name="ImageURL"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SKU"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
