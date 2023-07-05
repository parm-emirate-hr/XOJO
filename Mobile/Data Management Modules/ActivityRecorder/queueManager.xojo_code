#tag Class
Protected Class queueManager
Inherits Thread
	#tag Event
		Sub Run()
		  ' we want to get the metrics records available on the server
		  '
		  Try
		    
		    app.DB.BeginTransaction
		    app.DB.ExecuteSQL("DELETE FROM  activity_history")
		    getMetrics ' gets and inserts all the metrics records
		    app.DB.CommitTransaction
		  Catch error As DatabaseException
		    MessageBox("Error: " + error.Message)
		    app.DB.RollbackTransaction
		  End Try
		  
		  while 1 = 1
		    if activityEventQueue.Count > 0 then
		      '
		      for each stepEvent as dictionary in activityEventQueue
		        if app.player <> nil then 
		          '
		          ' we are going to create an array of records
		          '
		          var theEvents() as dictionary
		          var theRow as new dictionary
		          theRow.value("date_created") =stepEvent.value("date_created")
		          theRow.value("date_modified") =stepEvent.value("date_modified")
		          theRow.value("date_from") =stepEvent.value("date_from")
		          theRow.value("date_to") =stepEvent.value("date_to")
		          theRow.value("date") =stepEvent.value("date")
		          theRow.value("player") =stepEvent.value("player")
		          theRow.value("source") =stepEvent.value("source")
		          theRow.value("metric_type") = "Steps"
		          theRow.value("metric_value") =stepEvent.value("numberOfSteps")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "Distance"
		          theRow.value("metric_value") =stepEvent.value("distance")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "floorsAscended"
		          theRow.value("metric_value") =stepEvent.value("floorsAscended")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "floorsDescended"
		          theRow.value("metric_value") =stepEvent.value("floorsDescended")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "averageActivePace"
		          theRow.value("metric_value") =stepEvent.value("averageActivePace")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "currentCadence"
		          theRow.value("metric_value") =stepEvent.value("currentCadence")
		          theEvents.addrow(theRow)
		          theRow.value("metric_type") = "currentPace"
		          theRow.value("metric_value") =stepEvent.value("currentPace")
		          theEvents.addrow(theRow)
		          ' we are going to send the metrics records to the server
		          '
		          var success as boolean = metricAPI.updateMetric(theEvents)
		          
		          
		          if success then
		            activityEventQueue.RemoveAt(0)
		          end if
		        end if
		      next 
		      
		      
		    end if
		    SleepCurrent(3000)
		  wend
		End Sub
	#tag EndEvent


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
			Type="UInteger"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
