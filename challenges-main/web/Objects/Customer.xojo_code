#tag Class
Protected Class Customer
Inherits serializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  dim d as new date
		  // ID will be updated automatically
		  row.Column("CustomerName") = "Untitled Customer"
		  d.sqldatetime = "1970-01-00 00:30:00"
		  row.DateColumn("P1SLA") =d
		  d.sqldatetime = "1970-01-01 00:00:00"
		  row.DateColumn("P1RCASLA") = d
		  return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IncidentManager() As Player
		  return new Player(incidentmanagerID)
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
		  TheSql =  "SELECT * from Customers "+ TheCriteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  TheRecordset.field("CustomerName").StringValue = me.Name
		  TheRecordset.field("ID").IntegerValue = me.ID
		  TheRecordset.field("P1RCASLA").DateValue = me.P1RCASLA 
		  TheRecordset.field("P1SLA").DateValue = Me.P1SLA
		  If Me.IncidentManagerID <> -1  and me.incidentmanagerID <> nil Then
		    TheRecordset.field("IncidentManager").IntegerValue = Me.IncidentManagerID
		  Else
		    TheRecordset.field("IncidentManager").Value = Nil
		  end if
		  TheRecordset.field("P1SLA").DateValue = Me.P1SLA
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "Customers"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  me.Name = TheRecordset.field("CustomerName").StringValue
		  me.ID = TheRecordset.field("ID").IntegerValue
		  me.P1RCASLA =TheRecordset.field("P1RCASLA").DateValue
		  Me.P1SLA =TheRecordset.field("P1SLA").DateValue
		  
		  Me.IncidentManagerID =TheRecordset.field("IncidentManager").Value
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IncidentManagerID As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		P1RCASLA As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		P1SLA As Date
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
	#tag EndViewBehavior
End Class
#tag EndClass
