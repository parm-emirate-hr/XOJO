#tag Class
Protected Class DemonstrationDetail
Inherits serializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Function Beacon() As beacon
		  return new Beacon(BeaconID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  // ID will be updated automatically
		  row.IntegerColumn("Beaconid") = -1
		  row.IntegerColumn("demonstrationid") = -1
		  row.Column("Description") = ""
		  row.Column("farurl")= ""
		  row.Column("immediateurl") = ""
		  row.IntegerColumn("locationID") = -1
		  row.IntegerColumn("productID") = -1
		  row.Column("name") = ""
		  row.Column("nearurl") = ""
		  row.Column("unknownurl") = ""
		  row.Column("entrymsg") = ""
		  row.Column("exitmsg") = ""
		  return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Customers order by CustomerName"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListWithCriteria(TheCriteria as string) As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from demonstrationDetails "+ TheCriteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Location() As location
		  return new location(LocationID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  TheRecordset.field("name").StringValue = Me.Name
		  TheRecordset.field("ID").IntegerValue = Me.ID
		  TheRecordset.field("Beaconid").IntegerValue = Me.beaconid
		  TheRecordset.field("Productid").IntegerValue = Me.ProductID
		  TheRecordset.field("DemonstrationID").IntegerValue = Me.demonstrationid
		  TheRecordset.field("Description").StringValue = Me.Description
		  TheRecordset.field("farurl").StringValue = Me.farurl
		  TheRecordset.field("immediateURL").StringValue = Me.immediateurl
		  TheRecordset.field("locationid").IntegerValue = Me.locationID
		  TheRecordset.field("nearurl").StringValue = Me.Nearurl
		  TheRecordset.field("unknownurl").StringValue = Me.unknownurl
		  TheRecordset.field("entrymsg").StringValue = Me.EntryMsg
		  TheRecordset.field("exitmsg").StringValue = Me.exitMsg
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Product() As Product
		  return new Product(ProductID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "DemonstrationDetails"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  Me.Name = TheRecordset.field("Name").StringValue
		  Me.ID = TheRecordset.field("ID").IntegerValue
		  Me.Beaconid = TheRecordset.field("Beaconid").IntegerValue
		  Me.productid = TheRecordset.field("ProductID").IntegerValue
		  Me.DemonstrationID = TheRecordset.field("DemonstrationID").IntegerValue
		  Me.Description = TheRecordset.field("description").StringValue
		  Me.farURL = TheRecordset.field("farurl").StringValue
		  Me.immediateURL = TheRecordset.field("immediateurl").StringValue
		  Me.locationid =TheRecordset.field("Locationid").IntegerValue
		  Me.nearurl =TheRecordset.field("nearurl").StringValue
		  Me.unknownURL =TheRecordset.field("unknownurl").StringValue
		  Me.exitmsg =TheRecordset.field("exitmsg").StringValue
		  Me.entrymsg =TheRecordset.field("entrymsg").StringValue
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BeaconID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DemonstrationID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		EntryMsg As string
	#tag EndProperty

	#tag Property, Flags = &h0
		exitMsg As string
	#tag EndProperty

	#tag Property, Flags = &h0
		farURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImmediateURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LocationID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		nearURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ProductID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		unknownURL As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Dirty"
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
			Name="DemonstrationID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeaconID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocationID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="unknownURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nearURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="farURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImmediateURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="ProductID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EntryMsg"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="exitMsg"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
