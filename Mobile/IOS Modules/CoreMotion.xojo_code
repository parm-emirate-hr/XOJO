#tag Module
Protected Module CoreMotion
	#tag Method, Flags = &h0
		Sub pedoMeterEventUpdates(PedometerData as Ptr, error as Ptr)
		  var Theerror as NSError = new NSError(error)
		  var theData as CMPedometerData = new CMPedometerData(PedometerData)
		  var numberOfSteps as Double = theData.numberOfSteps
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub pedoMeterQuery(PedometerData as Ptr, error as Ptr)
		  var Theerror as NSError = new NSError(error)
		  var theData as CMPedometerData = new CMPedometerData(PedometerData)
		  '
		  ' lets add it to the queue
		  '
		  addToQueue("query", theData)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub pedoMeterUpdates(PedometerData as Ptr, error as Ptr)
		  var Theerror as NSError = new NSError(error)
		  var theData as CMPedometerData = new CMPedometerData(PedometerData)
		  
		  
		  addToQueue("live", theData)
		  
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = CoreMotionLib, Type = Text, Dynamic = False, Default = \"CoreMotion.Framework", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CMAcceleration, Flags = &h0
		x as double
		  y as double
		z as double
	#tag EndStructure

	#tag Structure, Name = CMRotationRate, Flags = &h0
		x as double
		  y as double
		z as double
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
