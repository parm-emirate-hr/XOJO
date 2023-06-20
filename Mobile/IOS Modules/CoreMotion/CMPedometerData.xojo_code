#tag Class
Class CMPedometerData
Inherits Foundation.NSObject
	#tag Method, Flags = &h0
		Sub Constructor(id as ptr)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(id)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function averageActivePace_ lib CoreMotionLib selector "averageActivePace" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(averageActivePace_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		averageActivePace As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function currentCadence_ lib CoreMotionLib selector "currentCadence" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(currentCadence_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		currentCadence As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function currentPace_ lib CoreMotionLib selector "currentPace" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(currentPace_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		currentPace As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function distance_ lib CoreMotionLib selector "distance" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(distance_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		distance As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function endDate_ lib CoreMotionLib selector "endDate" (obj_id as ptr) as ptr
			  var theDate as  NSDate
			  var b as dateTime
			  
			  if self.RespondsToSelector("endDate") then
			    theDate = new NSDate(endDate_(self))
			    var a as double = theDate.TimeIntervalSince1970
			    b = new DateTime(a)
			  end if
			  Return b
			End Get
		#tag EndGetter
		endDate As DateTime
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function floorsAscended_ lib CoreMotionLib selector "floorsAscended" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(floorsAscended_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		floorsAscended As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function floorsDescended_ lib CoreMotionLib selector "floorsDescended" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(floorsDescended_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		floorsDescended As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function numberOfSteps_ lib CoreMotionLib selector "numberOfSteps" (obj_id as ptr) as ptr
			  var b as NSNumber
			  b = new NSNumber(numberOfSteps_(self))
			  Return b.integerValue
			End Get
		#tag EndGetter
		numberOfSteps As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function startDate_ lib CoreMotionLib selector "startDate" (obj_id as ptr) as ptr
			  var theDate as  NSDate
			  var b as dateTime
			  
			  if self.RespondsToSelector("startDate") then
			    theDate = new NSDate(startDate_(self))
			    var a as double = theDate.TimeIntervalSince1970
			    b = new DateTime(a)
			  end if
			  Return b
			End Get
		#tag EndGetter
		startDate As DateTime
	#tag EndComputedProperty


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
			Name="averageActivePace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentCadence"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentPace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="distance"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="floorsAscended"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="floorsDescended"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numberOfSteps"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
