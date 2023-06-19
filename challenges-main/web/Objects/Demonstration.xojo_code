#tag Class
Protected Class Demonstration
Inherits serializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h21
		Private Function BuildURL(TheURL as string, TheBeacon as beacon, Thelocation as location, theproduct as product) As String
		  Dim TheURLSpecial As String
		  Select Case theURL
		  Case "Location"
		    TheURLSpecial = app.WebAddress + "Special" + "?Object=Location" + "&Beacon=" + Thebeacon.ID.ToText 
		  Case "Product"
		    TheURLSpecial = app.WebAddress + "Special" + "?Object=Product" + "&Beacon=" + Thebeacon.ID.ToText
		  Else
		    Return TheURL
		  End Select
		  TheURLSpecial = TheURLSpecial+"&Location="+thelocation.id.ToText + "&Product="+theproduct.id.totext
		  Return TheURLSpecial
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function byName(theName as string) As Demonstration
		  Dim rs As recordset
		  rs = demonstration.ListWithCriteria("Where Name = '" + theName + "'")
		  Return New Demonstration(rs.field("ID").IntegerValue)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  // ID will be updated automatically
		  row.Column("Name") = "Untitled Demonstration"
		  row.column("Description") = ""
		  
		  return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Demonstrations order by Name"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListWithCriteria(TheCriteria as string) As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Demonstrations "+ TheCriteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  TheRecordset.field("Name").StringValue = Me.Name
		  TheRecordset.field("ID").IntegerValue = Me.ID
		  TheRecordset.field("Description").Stringvalue= Me.Description
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "Demonstrations"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJson() As String
		  Dim rs As recordset
		  rs = DemonstrationDetail.ListWithCriteria("where DemonstrationID = " + Me.ID.ToText)
		  Dim ThePage As String
		  ThePage = "[ "
		  While Not rs.eof
		    Dim theDemonstrationDetail As DemonstrationDetail
		    Dim theDictionary As New Dictionary
		    Dim theBeacon As Beacon
		    Dim TheLocation As location
		    Dim TheJson As New JSONItem
		    Dim TheProduct As Product
		    theDemonstrationDetail = New DemonstrationDetail(rs.field("ID").IntegerValue)
		    TheBeacon = theDemonstrationDetail.beacon
		    TheLocation =theDemonstrationDetail.Location
		    TheProduct = theDemonstrationDetail.Product
		    
		    TheDictionary.value("description") = theDemonstrationDetail.Description
		    TheDictionary.value("entrymsg") = theDemonstrationDetail.EntryMsg
		    TheDictionary.value("exitmsg") = theDemonstrationDetail.exitMsg
		    TheDictionary.Value("farurl") = BuildURL(theDemonstrationDetail.farURL,theBeacon,TheLocation,TheProduct)
		    TheDictionary.Value("name") = theDemonstrationDetail.Name
		    TheDictionary.Value("nearurl") = BuildURL(theDemonstrationDetail.nearURL,theBeacon,TheLocation,TheProduct)
		    TheDictionary.Value("immediateurl") = BuildURL(theDemonstrationDetail.ImmediateURL,theBeacon,TheLocation,TheProduct)
		    TheDictionary.Value("unknownurl") = BuildURL(theDemonstrationDetail.unknownURL,theBeacon,TheLocation,TheProduct)
		    TheDictionary.Value("uuid") = theBeacon.UUID
		    TheDictionary.Value("major") = theBeacon.Major
		    TheDictionary.Value("minor") = theBeacon.Minor
		    TheDictionary.Value("location") = TheLocation.Name
		    TheJson = Thedictionary
		    ThePage = ThePage + EndOfLine + TheJson.ToString
		    rs.MoveNext
		    
		  Wend
		  Return ThePage + EndOfLine + "]"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  Me.Name = TheRecordset.field("Name").StringValue
		  Me.ID = TheRecordset.field("ID").IntegerValue
		  Me.Description = TheRecordset.field("Description").StringValue
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
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
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
