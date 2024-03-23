#tag Module
Protected Module KMeansModule
	#tag Method, Flags = &h21
		Private Function AssignClusters(dataPoints() As DataPoint, centroids() As DataPoint) As Cluster()
		  dim nClusters as integer = centroids.Ubound
		  Dim clusters(-1) As Cluster
		  
		  for i as integer=0 to nClusters
		    clusters.append(new Cluster)
		  next i
		  
		  For Each point As DataPoint In dataPoints
		    
		    Dim closestCentroidIndex As Integer = -1
		    Dim minDistance As Double = -1
		    
		    For i As Integer = 0 To nClusters
		      
		      Dim distance As Double = KMeansModule.EuclidianDistance(point, centroids(i))
		      
		      If minDistance = -1 Or distance < minDistance Then
		        minDistance = distance
		        closestCentroidIndex = i
		      End If
		    Next
		    
		    if (closestCentroidIndex <> -1) then
		      clusters(closestCentroidIndex).AddMember(point)
		    end if
		  Next
		  
		  Return clusters
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EuclidianDistance(point1 as DataPoint, point2 as DataPoint) As Double
		  Dim sum As Double
		  For i As Integer = 0 To UBound(point1.Features)
		    sum = sum + (point1.Features(i) - point2.Features(i)) ^ 2
		  Next
		  
		  Return Sqrt(sum)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KMeans(dataPoints() as DataPoint, centroids() as DataPoint) As Cluster()
		  Dim clusters(-1) as Cluster
		  dim converged(-1) as Boolean
		  dim AllConverged as Boolean
		  
		  redim converged(centroids.Ubound)
		  
		  Do
		    
		    clusters = AssignClusters(dataPoints, centroids)
		    Dim newCentroids() As DataPoint = UpdateCentroids(clusters)
		    
		    For i As Integer = 0 To centroids.Ubound
		      dim ed as double
		      ed = EuclidianDistance(centroids(i), newCentroids(i))
		      If ed < 0.001 Then
		        converged(i) = True
		      else
		        converged(i) = False
		      end if
		    next
		    
		    allConverged = true
		    for i as integer = 0 to converged.Ubound
		      if converged(i) = false then
		        AllConverged = false
		      end if 
		    next
		    
		    centroids = newCentroids
		    
		  Loop until AllConverged
		  
		  return clusters
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UpdateCentroids(clusters() as Cluster) As DataPoint()
		  Dim centroids(-1) As DataPoint
		  dim centroid as DataPoint
		  for each cl as cluster in clusters
		    centroid = cl.computeCentroid
		    centroids.Append(new DataPoint(centroid.Features))
		  next
		  
		  Return centroids
		End Function
	#tag EndMethod


	#tag Note, Name = KMeansNotes
		This implementation assumes you have a class named DataPoint to represent 
		individual data points with features.
		
		This implementation assumes you have a class named DataPoint to represent
		individual data points with features.
		
		The KMeans function initializes centroids randomly and iteratively assigns
		data points to the nearest centroid until convergence. Finally, it updates
		the centroids based on the mean of the points in each cluster until convergence.
		
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
