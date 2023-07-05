#tag Class
Protected Class App
Inherits MobileApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Sub HandleBackgroundURL(identifier As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function HandleShortcut(identifier as String, userInfo as Dictionary) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Function HandleURL(url as String, identifier as String, annotation as String, openInPlace as Boolean) As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Using ActivityRecorder
		  var currentTime as datetime = dateTime.now
		  var startDate as DateTime = currentTime
		  var endDate as DateTime =  currentTime
		  var currentDate as DateTime =  currentTime
		  var qm as ActivityRecorder.queueManager = new ActivityRecorder.queueManager
		  iOSMobileTableExtended.register("Mark Nutter", "23D97F-80BC88988B-9E3B8C-916B-8058730964-000B36E7")
		  var i as integer
		  '
		  ' register MonkeyBread plugins
		  '
		  // Seven Insurance Brokers, MBS Complete, 202404, KRbR3JxIlhfp7B+MlFu5Yt6aoOdTqFBZzokV1hkuLvJHw8zoOvMJxJPd5kxk9coL
		  dim s as string = decodeBase64("S1JiUjNKeElsaGZwN0IrTWxGdTU=", encodings.UTF8)
		  dim p as string = decodeBase64("TUJTIENvbXBsZXRl", encodings.UTF8)
		  dim n as string = decodeBase64("U2V2ZW4gSW5zdXJhbmNlIEJyb2tlcnM=", encodings.UTF8)
		  dim e as integer = 202404
		  dim t as string = decodeBase64("WXQ2YW9PZFRxRkJaem9rVjFoa3VMdkpIdzh6b092TUp4SlBkNWt4azljb0w=", encodings.UTF8)
		  
		  'if not registerMBSPlugin(n, p, e, s+t) then
		  'MsgBox "MBS Plugin serial not valid?"
		  'end if
		  '
		  ' lets open up the database
		  self.db = new yomlyDb
		  self.db.Connect
		  
		  ' first lets get the user for the device if it exists.
		  var theSql  as string = "select * from preferences where key = 'playerid'"
		  var rs as rowset = app.db.SelectSQL(theSQL)
		  if rs.RowCount = 1 then
		    app.player = ParseJSON(rs.Column("value"))
		    app.player = app.player.value("player")
		  end if
		  ' build the challenge data
		  
		  challengeAPI.getChallenges
		  challengeAPI.getChallengeList
		  '
		  ' Lets initiate stepcounting on the device
		  '
		  
		  'qm.Start
		  stepCounter  = new CMPedometer
		  
		  if stepCounter.StepCountingAvailable then
		    app.stepCountingActive = true
		    currentDate = currentTime.SubtractInterval(0,0,0,currentTime.hour, currentTime.Minute,currentTime.Second,currentTime.Nanosecond)
		    startDate = CurrentDate
		    endDate = startDate.AddInterval(0,0,0,24)
		    app.setupRequired = true
		    if app.setupRequired then ' we want to make sure there is some data in the db, so we will do some initial queries
		      '  now we are going to populate the query queue with the past 7 days data
		      startdate = startdate.SubtractInterval(0,0,7)
		      enddate =  startDate.AddInterval(0,0,0,24)
		      stepcounter.getPedometerDataFromDatetoDatewithHandler(startDate,endDate)
		      for i = 1 to 7
		        startdate = startdate.AddInterval(0,0,1)
		        enddate  = startDate.AddInterval(0,0,0,24)
		        stepcounter.getPedometerDataFromDatetoDatewithHandler(startDate,endDate)
		      next i
		      
		    end if
		    ' now lets start updates for today
		    stepcounter.beginPedometerUpdatesFromDatewithHandler(currentDate)
		  else
		    app.stepCountingActive = False
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub buildChallenge()
		  '
		  ' we need to get the challenge record for this user
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub checkFolders(objectType as string, key as integer)
		  
		  if not(SpecialFolder.Documents.child("yomly").exists) then
		    SpecialFolder.Documents.child("yomly").CreateFolder
		  end if
		  if not(SpecialFolder.Documents.child("yomly").child(objectType).exists) then
		    SpecialFolder.Documents.child("yomly").child(objectType).CreateFolder
		  end if
		  if not(SpecialFolder.Documents.child("yomly").child(objectType).child(key.tostring).exists) then
		    SpecialFolder.Documents.child("yomly").child(objectType).child(key.tostring).CreateFolder
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		articles() As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		challenge As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		challenges As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		challengeSummary() As variant
	#tag EndProperty

	#tag Property, Flags = &h0
		DB As ActivityRecorder.yomlyDb
	#tag EndProperty

	#tag Property, Flags = &h0
		hostname As string = "http://challenges.emirateshr.com"
	#tag EndProperty

	#tag Property, Flags = &h0
		lastRecord As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		last_screen As MobileScreen
	#tag EndProperty

	#tag Property, Flags = &h0
		mediaHost As string = "https://k8.emirateshr.com/media"
	#tag EndProperty

	#tag Property, Flags = &h0
		player As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		players() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		port As string = "9000"
	#tag EndProperty

	#tag Property, Flags = &h0
		setupRequired As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		startOfDay As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		stepCounter As CMPedometer
	#tag EndProperty

	#tag Property, Flags = &h0
		stepCountingActive As boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		targetSteps As Integer = 40000
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
			Name="_LaunchOptionsHandled"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconBadgeNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="targetSteps"
			Visible=false
			Group="Behavior"
			InitialValue="40000"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="setupRequired"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hostname"
			Visible=false
			Group="Behavior"
			InitialValue="http://emirateshr.pagekite.me"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="port"
			Visible=false
			Group="Behavior"
			InitialValue="9000"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="stepCountingActive"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mediaHost"
			Visible=false
			Group="Behavior"
			InitialValue="https://k8.emirateshr.com/media"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
