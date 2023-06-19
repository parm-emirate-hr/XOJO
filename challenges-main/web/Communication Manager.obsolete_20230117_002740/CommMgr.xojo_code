#tag Class
Protected Class CommMgr
Inherits Thread
	#tag Event
		Sub Run()
		  '
		  ' Set up the various sockets
		  '
		  Select Case Option.getOption("SMSGatewayType")
		  case "ClickaTell"
		    Websocket = new HTTPSecureSocket ' used for the SMS gateway connection
		    Websocket.Yield = True ' allow other events to be processed in synchronous transaction
		  case "Twilio"
		    Twilio = New TwilioSocket
		  end select
		  '
		  Mailsocket = new MailSocket
		  
		  '
		  ' Process the Action Queue
		  '
		  'ProcessQueue
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ProcessQueue()
		  Dim i As Integer
		  For i = 0 To ubound(App.actions)
		    If Not(app.actions(i).HasKey("Complete")) Then ' skip any completed actions
		      Select Case app.actions(i).value("Action")
		      Case "TeamBuild"
		        TeamBuild(App.actions(i).value("Incident"))
		        app.actions(i).value("Complete") = True
		      Case "Status"
		        
		      Case "Recovery"
		        recovery(App.actions(i).value("Incident"))
		        app.actions(i).value("Complete") = True
		        
		      Case "Diagnosis"
		        
		      Case "Definition"
		        
		      Case "RCA"
		        
		      End Select
		    End If
		  Next i
		  '
		  ' Delete any completed actions
		  ' 
		  For i= ubound(App.actions) To 0 Step -1
		    If app.actions(i).HasKey("Complete") Then
		      app.actions.Remove(i)
		    End If
		  Next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Recovery(TheIncident as Incident)
		  Dim ThePlayers As recordset
		  ThePlayers = Player.ListForIncident(TheIncident)
		  While Not ThePlayers.eof
		    Dim ThePlayer As New Player(ThePlayers.field("ID").value)
		    
		    SendSmS(ThePlayer, "Major Incident "+theIncident.IncidentID+ " for Customer " +TheIncident.Customer.name+ "Recovery Complete")
		    SendEmail(ThePlayer,TheIncident)
		    
		    ThePlayers.movenext
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendEmail(ThePlayer as Player, theincident as incident)
		  Dim mail As emailMessage
		  Dim file As EmailAttachment
		  Dim i As Integer
		  Dim s As String
		  Dim MailServer As New option("MailServer")
		  Dim MailPlayer As New option("MailPlayer")
		  Dim MailPassword as new option("MailPassword")
		  // set up the socket--mailsocket is an SMTPSocket
		  mailsocket.address = mailserver.Value
		  mailsocket.port = 25
		  
		  
		  mailsocket.UserName = mailPlayer.Value.StringValue
		  mailsocket.password = mailpassword.value.StringValue
		  mailsocket.connect
		  
		  mail = New EmailMessage
		  mail.fromAddress=theincident.IncidentManager.Email1
		  mail.subject="Major Incident " + TheIncident.IncidentID + " Customer: " + theincident.customer.name + " Status update"
		  mail.bodyPlainText = Communications.ParseString(TheIncident,Option.getOption("EmailBody"))
		  mail.headers.appendHeader "X-Mailer","Valhalla Major Incident Console"
		  
		  // add recipients
		  mail.addRecipient(thePlayer.email1)
		  
		  // send the email
		  mailsocket.messages.append mail
		  mailsocket.sendMail
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendSMS(ThePlayer as Player, TheMessage as String)
		  
		  Select Case option.getoption("SMSGatewayType")
		  Case "ClickatellHTTP"
		    Dim theUrl As String
		    Dim TheResponse As Xmldocument
		    TheUrl = option.getoption("SMSGateWayAddress")+"/messages/http/send"+"?apiKey="+Option.getoption("SMSGateWayAPIKey")+"&content="+TheMessage+"&to="+ThePlayer.mobile1
		    TheResponse = new xmldocument(Websocket.Get(TheUrl,60))
		    Select Case websocket.ErrorCode
		    Case 0
		    Case 100
		    Else
		    End Select
		  Case "Twilio"
		    Dim accountID As String = option.getOption("SMSGatewayAccountID").StringValue
		    Dim authToken As String = option.getOption("SMSGatewayAPIKey").StringValue
		    
		    Dim params() As string
		    params.Append("From=" + EncodeURLComponent(Option.getOption("SMSFromNumber").StringValue).totext)
		    params.Append("To=" + EncodeURLComponent(ThePlayer.Mobile1).totext)
		    params.Append("Body=" + EncodeURLComponent(TheMessage).totext)
		    Dim textParams As String = Join(params, "&")
		    
		    '// Convert Text to Memoryblock
		    'Dim data As Xojo.Core.MemoryBlock = Xojo.Core.TextEncoding.UTF8.ConvertTextToData(textParams)
		    
		    // Assign to the Request's Content
		    Twilio.SetRequestContent(textParams, "application/x-www-form-urlencoded")
		    
		    // Set the URL
		    Dim url As string = "https://api.twilio.com/2010-04-01/Accounts/" + accountID + "/Messages.json"
		    
		    // Send Request, results are in TwilioSocket.PageReceived event handler
		    Twilio.Post(url)
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendVoiceMessage(ThePlayer as Player)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TeamBuild(TheIncident as incident)
		  Dim ThePlayers As recordset
		  ThePlayers = Player.ListForIncident(TheIncident)
		  While Not ThePlayers.eof
		    Dim ThePlayer As New Player(ThePlayers.field("ID").value)
		    If ThePlayer.LastSignin = Nil Then ' The Player has not signed in
		      Select Case ThePlayer.InviteTryCount
		      Case 0
		        Select Case option.getOption("RuleInitialNotification")
		        case "SMS Only"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		        Case "Voice Only"
		          SendVoiceMessage(ThePlayer)
		        Case "SMS and Voice"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		          SendVoiceMessage(ThePlayer)
		        Case "Escalate"
		        end select
		      Case 1
		        Select Case option.getOption("RuleFollowup1")
		        Case "SMS Only"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		        Case "Voice Only"
		          SendVoiceMessage(ThePlayer)
		        Case "SMS and Voice"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		          SendVoiceMessage(ThePlayer)
		        Case "Escalate"
		        End Select
		      Case 2
		        Select Case option.getOption("RuleFollowup2")
		        Case "SMS Only"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		        Case "Voice Only"
		          SendVoiceMessage(ThePlayer)
		        Case "SMS and Voice"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		          SendVoiceMessage(ThePlayer)
		        Case "Escalate"
		        End Select
		      Case 3 
		        Select Case option.getOption("RuleFollowup3")
		        Case "SMS Only"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		        Case "Voice Only"
		          SendVoiceMessage(ThePlayer)
		        Case "SMS and Voice"
		          SendSmS(ThePlayer, Communications.ParseString(TheIncident,Option.getOption("SMSInviteMessage")))
		          SendVoiceMessage(ThePlayer)
		        Case "Escalate"
		        End Select
		      end select
		    End If
		    ThePlayer.InviteTryCount = ThePlayer.InviteTryCount + 1
		    ThePlayers.movenext
		  Wend
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		MailSocket As SMTPSocket
	#tag EndProperty

	#tag Property, Flags = &h0
		Twilio As TwilioSocket
	#tag EndProperty

	#tag Property, Flags = &h0
		WebSocket As HTTPSecureSocket
	#tag EndProperty


	#tag ViewBehavior
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
			Name="DebugIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadState"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ThreadStates"
			EditorType="Enum"
			#tag EnumValues
				"0 - Running"
				"1 - Waiting"
				"2 - Paused"
				"3 - Sleeping"
				"4 - NotRunning"
			#tag EndEnumValues
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
