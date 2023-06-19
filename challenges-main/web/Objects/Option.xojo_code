#tag Class
Protected Class Option
Inherits SerializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Sub Constructor(TheKey as string)
		  Dim row As New DatabaseRecord
		  Dim TheCriteria As String
		  Dim theID as integer
		  theCriteria = "Key = '"+TheKey+"'"
		  
		  '
		  ' now we load the database version iinto memory
		  '
		  
		  GetRecordwithCriteria(TheCriteria) ' retrieve the record 
		  If therecordset.RecordCount = 0 then
		    // ID will be updated automatically
		    me.key = theKey
		    row = DefaultRecord
		    TheID = Insert(row)
		    GetRecord(TheID) ' retrieve the record 
		  End If
		  '
		  if TheRecordset <> nil then
		    Unpackrecord()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  
		  Dim row As New DatabaseRecord
		  row.Column("Key") = me.Key
		  row.Column("Value") =  "No Value Entered"
		  return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function getOption(TheKey as string) As variant
		  Dim option As  New option(TheKey)
		  return option.value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As recordset
		  Dim theSQL as string
		  dim rs as recordset
		  TheSql =  "SELECT * from Incidents"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  // Part of the SerializedObjectInterface interface.
		  ' 
		  ' Pack the object
		  '
		  Therecordset.field("Key").Value = me.key
		   Therecordset.field("Value").Value = me.value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "Options"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  // Part of the SerializedObjectInterface interface.
		  ' 
		  ' load the object
		  '
		  me.value= Therecordset.field("value").value
		  me.Key = Therecordset.field("Key").Value
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Key As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Value As Variant
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Key"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
