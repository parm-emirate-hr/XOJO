#tag Class
Protected Class baseEdgePanGesture
Inherits iosGestures.panGesture
	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From panGesture
		  // Constructor(theRecognizerType as Text) -- From baseGestureRecognizer
		  Super.Constructor("UIScreenEdgePanGestureRecognizer")
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  UIKit.edges.test( theRecognizer, mEdge, CurrentMethodName )
			  
			  return mEdge
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKit.edges.set( theRecognizer, value, CurrentMethodName )
			  
			  mEdge = value
			End Set
		#tag EndSetter
		Edge As UIKit.UIRectEdge
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mEdge As UIKit.UIRectEdge = UIKit.UIRectEdge.UIRectEdgeNone
	#tag EndProperty


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
End Class
#tag EndClass
