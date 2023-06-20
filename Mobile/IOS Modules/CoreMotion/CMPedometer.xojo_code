#tag Class
Class CMPedometer
Inherits NSObject
	#tag Method, Flags = &h0
		Sub beginPedometerEventUpdatesWithHandler()
		  declare sub startPedometerEventUpdatesWithHandler lib CoreMotionLib selector "startPedometerEventUpdatesWithHandler:" _
		  (obj_id as ptr, Handler as ptr)
		  var handler as ObjCBlock = new ObjCBlock(AddressOf pedoMeterUpdates)
		  startPedometerEventUpdatesWithHandler(self, handler.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub beginPedometerUpdatesFromDatewithHandler(theDate as DateTime)
		  declare sub startPedometerUpdatesFromDatewithHandler lib CoreMotionLib selector "startPedometerUpdatesFromDate:withHandler:" _
		  (obj_id as ptr, start as ptr, Handler as ptr)
		  var handler as ObjCBlock = new ObjCBlock(AddressOf pedoMeterUpdates)
		  var startDate as NSDate 
		  startDate = new NSDate(theDate)
		  startPedometerUpdatesFromDatewithHandler(self, startDate.id, handler.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CadenceAvailable() As boolean
		  Var NSClass As Ptr = NSClassFromString("CMPedometer")
		  declare function isCadenceAvailable lib CoreMotionLib selector "isCadenceAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isCadenceAvailable(NSClass)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From NSObject
		  // Constructor(ref as ptr) -- From NSObject
		  Super.Constructor(Initialize(Allocate(NSClassFromString("CMPedometer"))))
		  
		  needsExtraRelease = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DistanceAvailable() As boolean
		  declare function isDistanceAvailable lib CoreMotionLib selector "isDistanceAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isDistanceAvailable(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FloorCountingAvailable() As Boolean
		  declare function isFloorCountingAvailable lib CoreMotionLib selector "isFloorCountingAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isFloorCountingAvailable(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getPedometerDataFromDatetoDatewithHandler(fromDate as DateTime, toDate as DateTime)
		  declare sub queryPedometerDataFromDatetoDatewithHandler lib CoreMotionLib selector "queryPedometerDataFromDate:toDate:withHandler:" _
		  (obj_id as ptr, start as ptr, dateEnd as ptr, Handler as ptr)
		  var handler as ObjCBlock = new ObjCBlock(AddressOf pedoMeterQuery)
		  var startDate as NSDate 
		  var endDate as NSDate
		  startDate = new NSDate(fromDate)
		  endDate = new NSDate(toDate)
		  queryPedometerDataFromDatetoDatewithHandler(self, startDate.id, endDate.id, handler.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PaceAvailable() As Boolean
		  declare function isPaceAvailable lib CoreMotionLib selector "isPaceAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isPaceAvailable(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PedometerEventTrackingAvailable() As Boolean
		  declare function isPedometerEventTrackingAvailable lib CoreMotionLib selector "isPedometerEventTrackingAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isPedometerEventTrackingAvailable(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StepCountingAvailable() As boolean
		  Var NSClass As Ptr = NSClassFromString("CMPedometer")
		  declare function isStepCountingAvailable lib CoreMotionLib selector "isStepCountingAvailable" _
		  (obj_id as ptr) as Boolean
		  Return isStepCountingAvailable(NSClass)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub stopPedometer()
		  declare sub stopPedometerUpdates_ lib CoreMotionLib selector "stopPedometerUpdates" _
		  (obj_id as ptr)
		  stopPedometerUpdates_(self)
		End Sub
	#tag EndMethod


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
	#tag EndViewBehavior
End Class
#tag EndClass
