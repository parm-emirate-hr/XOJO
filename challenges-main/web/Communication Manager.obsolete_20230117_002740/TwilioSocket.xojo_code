#tag Class
Protected Class TwilioSocket
Inherits HTTPSecureSocket
	#tag Event
		Function AuthenticationRequired(Realm As String, Headers As InternetHeaders, ByRef Name As String, ByRef Password As String) As Boolean
		  Name = option.getoption("SMSGatewayAccountID")// AccountSID
		  Password = option.getoption("SMSGatewayAPIKey")// AuthToken
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Error(code as integer)
		  System.DebugLog("Valhalla Twilio Socket Error: "+Me.LastErrorCode.ToText)
		End Sub
	#tag EndEvent

	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  Select Case httpstatus
		  Case 201 ' the sms was created
		  Else
		  End Select
		  
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="SSLConnectionType"
			Visible=true
			Group="Behavior"
			InitialValue="3"
			Type="SSLConnectionTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - SSLv23"
				"3 - TLSv1"
				"4 - TLSv11"
				"5 - TLSv12"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateFile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FolderItem"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificateRejectionFile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FolderItem"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Secure"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CertificatePassword"
			Visible=true
			Group="Behavior"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
