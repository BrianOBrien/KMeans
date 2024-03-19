#tag Module
Protected Module KMeansModule
	#tag Method, Flags = &h21
		Private Function AssignClusters(dataPoints() As DataPoint, centroids() As DataPoint) As Dictionary
		  Dim clusters As New Dictionary
		  
		  For Each point As DataPoint In dataPoints
		    Dim closestCentroidIndex As Integer = -1
		    Dim minDistance As Double = -1
		    
		    For i As Integer = 0 To UBound(centroids)
		      Dim distance As Double = KMeansModule.EuclidianDistance(point, centroids(i))
		      
		      If minDistance = -1 Or distance < minDistance Then
		        minDistance = distance
		        closestCentroidIndex = i
		      End If
		    Next
		    
		    If Not clusters.HasKey(closestCentroidIndex) Then
		      clusters.Value(closestCentroidIndex) = New Dictionary
		    End If
		    
		    Dictionary(clusters.Value(closestCentroidIndex)).Value(point) = True
		  Next
		  
		  Return clusters
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AssignClusters1(dataPoints() As DataPoint, centroids() As DataPoint) As Cluster()
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
		Function KMeans(dataPoints() as DataPoint, centroids() as DataPoint) As Dictionary
		  Dim clusters As Dictionary
		  Dim converged as Boolean = true
		  
		  Do
		    clusters = AssignClusters(dataPoints, centroids)
		    Dim newCentroids() As DataPoint = UpdateCentroids(clusters)
		    
		    ' Check for convergence
		    converged = True
		    For i As Integer = 0 To UBound(centroids)
		      dim ed as double
		      ed = EuclidianDistance(centroids(i), newCentroids(i))
		      If ed > 0.001 Then
		        converged = False
		        Exit For
		      End If
		    Next
		    
		    centroids = newCentroids
		  Loop Until converged
		  
		  return clusters
		  ' At this point, clusters contain the final assignments
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KMeans1(dataPoints() as DataPoint, centroids() as DataPoint) As Cluster()
		  Dim clusters(-1) as Cluster
		  Dim converged as Boolean
		  
		  Do
		    clusters = AssignClusters1(dataPoints, centroids)
		    Dim newCentroids() As DataPoint = UpdateCentroids1(clusters)
		    
		    converged = True
		    For i As Integer = 0 To centroids.Ubound
		      dim ed as double
		      ed = EuclidianDistance(centroids(i), newCentroids(i))
		      If ed > 0.001 Then
		        converged = False
		      end if
		    next
		    
		    centroids = newCentroids
		  Loop until converged
		  
		  return clusters
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UpdateCentroids(clusters As Dictionary) As DataPoint()
		  Dim centroids() As DataPoint
		  
		  For Each key As Integer In clusters.Keys
		    
		    Dim cluster As Dictionary = clusters.Value(key)
		    
		    Dim v() As Variant = cluster.Keys
		    Dim numDimensions as Integer = DataPoint(v(0)).Features.Ubound + 1
		    
		    dim centroidFeatures() as Double
		    reDim centroidFeatures(numDimensions - 1)
		    
		    For Each point As DataPoint In cluster.Keys
		      For i As Integer = 0 To numDimensions - 1
		        centroidFeatures(i) = centroidFeatures(i) + point.Features(i)
		      Next
		    Next
		    
		    For i As Integer = 0 To numDimensions - 1
		      centroidFeatures(i) = centroidFeatures(i) / cluster.Count
		    Next
		    
		    centroids.Append(New DataPoint(centroidFeatures))
		  Next
		  
		  Return centroids
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UpdateCentroids1(clusters() as Cluster) As DataPoint()
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
