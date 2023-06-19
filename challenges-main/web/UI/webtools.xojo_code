#tag Module
Protected Module webtools
	#tag Method, Flags = &h0
		Sub BackgroundImage(Extends v As WebPage, Assigns url As String)
		  Var s As String = "document.getElementById('" + _
		  v.ControlID + "_body').style.backgroundImage=""url('"+url+"')"";"
		  
		  v.ExecuteJavascript(s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub webPageBackGroundColor(Extends v As WebPage, assigns c As String)
		  v.ExecuteJavascript("document.getElementById('" + v.ControlID + "_body').style.backgroundColor='"+c+"';")
		End Sub
	#tag EndMethod


End Module
#tag EndModule
