#tag Class
Protected Class SerializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Shared Function CachedObject(TheObject as string, theID as variant) As Auto
		  Dim i As Integer
		  Select Case TheObject
		  Case "Player"
		    For i = 0 To app.Players.Ubound
		      If app.Players(i).ID = theID Then
		        Return  app.Players(i)
		        
		      End If
		    Next i
		    
		    
		  Case "Customer"
		    For i = 0 To app.customers.Ubound
		      If app.Customers(i).ID = theID Then
		        Return app.Customers(i)
		      End If
		    Next i
		  End Select
		  '
		  ' need to create new object
		  '
		  Select Case TheObject
		  Case "Player"
		    return new Player(TheID)
		  Else
		    return nil
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(TheID as Variant)
		  Dim row As New DatabaseRecord
		  if theID = nil then  ' the node doesnt exist in database so we need to create it
		    
		    // ID will be updated automatically
		    row = DefaultRecord()
		    TheID = Insert(row)
		  end if
		  '
		  ' now we load the database version iinto memory
		  '
		  
		  GetRecord(TheID) ' retrieve the record 
		  '
		  if TheRecordset <> nil then
		    Unpackrecord()
		  End If
		  Select Case tablename
		    
		  Case "Customers"
		    app.Customers.Append(Customer(Me))
		  Case "Players"
		    app.Players.Append(Player(Me))
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete()
		  Dim theSQL As String
		  
		  TheSql = "delete from " + TableName  + _
		  " where ID = " +  "'" + Str(ID) + "'"
		  app.TheDatabase.SQLExecute(theSQL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetRecord(TheID as Integer)
		  Dim theSQL as string
		  TheSql =  "SELECT * from " + TableName + " where ID = " +"'" + TheID.ToText + "'"
		  Therecordset = app.thedatabase.SQLselect(TheSQL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetRecordWithCriteria(TheCriteria as string)
		  Dim theSQL As String
		  TheSql =  "SELECT * from " + TableName + " where " + TheCriteria
		  Therecordset = app.thedatabase.SQLselect(TheSQL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Insert(TheRow as DatabaseRecord) As variant
		  return app.TheDatabase.insert(TableName,TheRow)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  TheRecordset.edit
		  packRecord()
		  Therecordset.Update
		  app.TheDatabase.errorCheck
		  'Therecordset.close
		  Dirty = false
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TableName() As String
		  return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateField(Fieldname as string, value as Auto)
		  using xojo.introspection
		  dim T as xojo.Introspection.TypeInfo
		  T = GetType(Value)
		  TheRecordset.Edit
		  select case t.name
		  case "Integer"
		    TheRecordset.field(Fieldname).IntegerValue = value
		  case "Boolean"
		    TheRecordset.field(Fieldname).BooleanValue = value
		  Case "string"
		    TheRecordset.field(Fieldname).StringValue = value
		  Case "Date"
		    TheRecordset.field(Fieldname).DateValue = value
		  Case "Double"
		    TheRecordset.field(Fieldname).DoubleValue = value
		  Case "Variant"
		    theRecordset.field(Fieldname).Value = value
		  else 
		    MessageBox "Dont know this type " + t.name
		  end select
		  Dirty = true
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TheRecordset As RecordSet
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
	#tag EndViewBehavior
End Class
#tag EndClass
