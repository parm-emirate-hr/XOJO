#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() as String)
		  '
		  ' TODO - parse and use parameters
		  '
		  System.Log(System.LogLevelAlert, "Starting Valhalla")
		  TheDatabase = New ZySKDB.zyskdb
		  '#if DebugBuild then
		  'TheDatabase.FileName = "/Players/peter/Documents/valhalla/Valhalla.debug/Valhalla.sqlite"
		  '#Else
		  'TheDatabase.FileName = "/Players/peter/Documents/valhalla/Valhalla.debug/Valhalla.sqlite"
		  
		  '#Endif
		  
		  System.Log(System.LogLevelAlert, "Opening Database")
		  TheDatabase.OpenDB
		  System.Log(System.LogLevelAlert, "Starting Background Tasks")
		  '
		  ' Start the Communications Timer
		  '
		  'CommunicationsTimer = New CommTimer
		  'CommunicationsTimer.Mode = timer.ModeMultiple
		  'CommunicationsTimer.Period = 1000*60*1
		  'CommunicationsTimer.Enabled = true
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function BuildWebPage(TheTemplate as string, Location as variant,product as variant) As string
		  Dim TheHTML As String
		  Dim TheFile As FolderItem
		  Dim theLocation As location
		  Dim theProduct As Product
		  '
		  ' Get the Template file 
		  '
		  
		  TheFile = SpecialFolder.Documents.Child("WebTemplates").Child("BTCompass").child(TheTemplate + ".html")
		  If TheFile <> Nil Then
		    If TheFile.Exists Then
		      // Be aware that TextInputStream.Open could raise an exception
		      Dim t As TextInputStream
		      Try
		        t = TextInputStream.Open(TheFile)
		        t.Encoding = Encodings.UTF8
		        TheHtml = t.ReadAll
		      Catch e As IOException
		        MessageBox("Error accessing Template file.")
		      End Try
		      t.Close
		    End If
		  End If
		  '
		  ' Now Get the Beacon Bits
		  '
		  thelocation = New location(Location)
		  TheProduct = New product(product)
		  '
		  ' Now lets change the template
		  '
		  TheHTML = TheHTML.ReplaceAll("[LocationName]", theLocation.Name)
		  TheHTML = TheHTML.ReplaceAll("[LocationDescription]", theLocation.Description)
		  TheHTML = TheHTML.ReplaceAll("[ProductName]", TheProduct.Name)
		  TheHTML = TheHTML.ReplaceAll("[ProductDescription]", TheProduct.Description)
		  TheHTML = TheHTML.ReplaceAll("[ProductSKU]", TheProduct.SKU)
		  TheHTML = TheHTML.ReplaceAll("[ProductPrice]", TheProduct.Price.ToText)
		  TheHTML = TheHTML.ReplaceAll("[ProductImage]", TheProduct.ImageURL)
		  
		  Return TheHTML
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Actions() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Chats() As WebTextArea
	#tag EndProperty

	#tag Property, Flags = &h0
		CommMgr As WebThread
	#tag EndProperty

	#tag Property, Flags = &h0
		Customers() As Customer
	#tag EndProperty

	#tag Property, Flags = &h0
		Logs() As WebListBox
	#tag EndProperty

	#tag Property, Flags = &h0
		PlayerList() As WebListBox
	#tag EndProperty

	#tag Property, Flags = &h0
		Players() As Player
	#tag EndProperty

	#tag Property, Flags = &h0
		SignedInPlayers() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TheDatabase As ZyskDB.ZySKDB
	#tag EndProperty


	#tag Constant, Name = dbDefaultDb, Type = String, Dynamic = False, Default = \"yomly_challenges", Scope = Public
	#tag EndConstant

	#tag Constant, Name = dbHost, Type = String, Dynamic = False, Default = \"127.0.0.1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = dbPassword, Type = String, Dynamic = False, Default = \"tn5-Pbx-BU3-Hya", Scope = Public
	#tag EndConstant

	#tag Constant, Name = dbSSL, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = dbtype, Type = String, Dynamic = False, Default = \"mysql", Scope = Public
	#tag EndConstant

	#tag Constant, Name = dbUser, Type = String, Dynamic = False, Default = \"emirateshr", Scope = Public
	#tag EndConstant

	#tag Constant, Name = WebAddress, Type = String, Dynamic = False, Default = \"http://188.166.235.24/BTCompass-Dev/index.cgi/", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
