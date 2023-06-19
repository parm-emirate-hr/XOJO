#tag Class
Protected Class ZySKDB
Inherits MySQLCommunityServer
	#tag Method, Flags = &h0
		Sub constructor()
		  
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Function createTables() As boolean
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub errorCheck()
		  Dim TheMessage As String
		  'Dim theLogger as WebConsole
		  //TheLogger = WebConsole.sharedInstance
		  If Me.error Then
		    MessageBox("I Have a DB Error")
		    TheMessage = me.DatabaseName + " Database Error ("+ me.ErrorCode.ToText +") " +me.ErrorMessage
		    'TheLogger.log("Database",System.Loglevelerror,TheMessage)
		    TheMessage = Me.DatabaseName + " Last SQL Statement = " + Me.LastSQL
		    System.Log(System.LogLevelAlert, TheMessage)
		    'TheLogger.Log("Database",System.Loglevelerror,TheMessage)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Insert(TheTable as string, TheRecord as DatabaseRecord) As Variant
		  dim thesql as string
		  dim therecordset as recordset
		  me.InsertRecord(TheTable,TheRecord)
		  me.errorcheck
		  thesql = "select last_insert_rowid() as ID from " + TheTable
		  therecordset = me.sqLSelect(theSQL)
		  return therecordset.field("ID").value
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDB()
		  
		  Host = app.dbHost
		  Port = 3306
		  DatabaseName = app.dbDefaultDb
		  UserName = app.dbUser
		  Password = app.dbPassword
		  if app.dbSSL = True then
		    SSLEnabled = True
		    
		    // Specify SSL key file
		    SSLKey = New FolderItem("MySQLKeyFile")
		    
		    // Specify SSL certificate file
		    SSLCertificate = New FolderItem("MySQLCertificateFile")
		    
		    // Specify SSL authority file
		    SSLAuthority = New FolderItem("MySQLAuthFileFile")
		    
		    // Specify SSL authority directory
		    SSLAuthorityFolder = New FolderItem("SSLCACertFile")
		    
		    // Specify SSL cipher
		    Var cipher As String
		    cipher = "DHE-RSA-AES256-SHA"
		    SSLCipher = cipher
		  end if
		  
		  Try
		    Connect
		    'me.theDB = db
		  Catch error As DatabaseException
		    System.Beep
		    MessageBox "Connection failed. Error: " + error.Message
		  End Try
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLExecute(sqlString As String)
		  LastSQL = sqlString
		  super.SQLExecute(sqlString)
		  me.errorCheck
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function sqLSelect(SelectString As String) As RecordSet
		  dim therecordset as RecordSet
		  LastSQL = selectstring
		  therecordset = super.SQLSelect(SelectString)
		  me.errorCheck
		  return therecordset
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		createTablesDelegate As createTables
	#tag EndProperty

	#tag Property, Flags = &h0
		FileName As String = "/Players/peter/Documents/valhalla/Valhalla.sqlite"
	#tag EndProperty

	#tag Property, Flags = &h0
		LastSQL As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecureAuth"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLEnabled"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLKey"
			Visible=true
			Group=""
			InitialValue=""
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLCertificate"
			Visible=true
			Group=""
			InitialValue=""
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLAuthority"
			Visible=true
			Group=""
			InitialValue=""
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLAuthorityDirectory"
			Visible=true
			Group=""
			InitialValue=""
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLAuthorityFolder"
			Visible=true
			Group=""
			InitialValue=""
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLCipher"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
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
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastSQL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FileName"
			Visible=false
			Group="Behavior"
			InitialValue="/Users/peter/Documents/valhalla/Valhalla.sqlite"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
