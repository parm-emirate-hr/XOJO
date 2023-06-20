#tag Class
Class yomlyDb
Inherits SQLiteDatabase
	#tag Method, Flags = &h0
		Sub addActivityHistoryRecord()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  Var dbFile As FolderItem = SpecialFolder.documents.Child("yomly").child("challenges.db")
		  if not(dbFile.exists) then ' we need to create the application folder and then the DB
		    firstRun(dbFile)
		  end if
		  self.DatabaseFile = dbFile
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub firstRun(destination as FolderItem)
		  // The DB file will be on the desktop
		  app.setupRequired = true
		  Var dbFile As FolderItem = SpecialFolder.documents.Child("yomly")
		  if not(dbFile.exists) then ' we need to create the application folder and then the DB
		    
		    Var myData As FolderItem = SpecialFolder.Documents.Child("yomly")
		    myData.CreateFolder
		  end if
		  ' now we will copy the database to the folder
		  Var yomlyDbFile As FolderItem = SpecialFolder.Resource("challenges.db")
		  var dba as FolderItem = SpecialFolder.Documents.child("yomly").child("challenges.db")
		  if not(dba.Exists) then
		    dbFile  = SpecialFolder.documents.Child("yomly")
		    yomlyDbFile.CopyTo(dbFile)
		  end if
		  self.DatabaseFile = dba
		  Try
		    self.Connect
		    
		  Catch err As DatabaseException
		    IsConnected = False
		    Return
		  End Try
		  
		  IsConnected = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getActivityForDate(theDate as DateTime) As RowSet
		  var sql as string
		  sql = "select * from activity_history where date =  ?;"
		  Var results As RowSet = app.db.SelectSQL(SQL, theDate.SQLDate)
		  return results
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		isConnected As Boolean = false
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DatabaseName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Host"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="EncryptionKey"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Group=""
			InitialValue=""
			Type="Double"
			EditorType="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteAheadLogging"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadExtensions"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LibraryVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isConnected"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
