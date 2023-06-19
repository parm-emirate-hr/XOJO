#tag Class
Protected Class Player
Inherits SerializedObject
Implements SerializedObjectInterface
	#tag Method, Flags = &h0
		Function DefaultRecord() As DatabaseRecord
		  // Part of the SerializedObjectInterface interface.
		  Dim row As New DatabaseRecord
		  row.Column("name") = "New Player"
		  return row
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function List() As RecordSet
		  Dim theSQL as string
		  dim rs as recordset
		  TheSql =  "SELECT * from Players"
		  rs = app.thedatabase.SQLselect(TheSQL)
		  return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ListWithCriteria(criteria as string) As recordset
		  Dim theSQL As String
		  Dim rs As recordset
		  TheSql =  "SELECT * from Players where " + criteria
		  rs = app.thedatabase.SQLselect(TheSQL)
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PackRecord()
		   Therecordset.field("avatar").PictureValue= me.avatar
		   Therecordset.field("date_created").DateValue = me.date_created
		   Therecordset.field("date_modifed").DateValue = me.date_modified
		   Therecordset.field("first_name").StringValue = me.first_name
		   Therecordset.field("handle").StringValue = me.handle
		   Therecordset.field("last_name").StringValue = me.last_name
		  Therecordset.field("last_name").StringValue = me.last_name
		  Therecordset.field("password").StringValue = me.password
		  Therecordset.field("token").StringValue = me.token
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tablename() As string
		  return "players"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnpackRecord()
		  me.avatar=Therecordset.field("avatar").PictureValue
		  me.date_created=Therecordset.field("date_created").DateValue
		  'me.date_modified=Therecordset.field("date_modifed").DateValue
		  me.first_name=Therecordset.field("first_name").StringValue
		  me.handle=Therecordset.field("handle").StringValue
		  me.last_name=Therecordset.field("last_name").StringValue
		  me.last_name=Therecordset.field("last_name").StringValue 
		  me.password=Therecordset.field("password").StringValue 
		  me.token=Therecordset.field("token").StringValue
		  Me.id= Therecordset.field("id").IntegerValue
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		avatar As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		date_created As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		date_modified As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		first_name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		handle As String
	#tag EndProperty

	#tag Property, Flags = &h0
		is_admin As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		last_name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		password As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SessionID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SignedIn As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		token As String
	#tag EndProperty


	#tag Constant, Name = TableName, Type = String, Dynamic = False, Default = \"players", Scope = Public
	#tag EndConstant


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
			Name="handle"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="is_admin"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="first_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="last_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SignedIn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SessionID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="token"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="avatar"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
