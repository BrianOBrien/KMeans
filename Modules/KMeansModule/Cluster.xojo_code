#tag Class
Protected Class Cluster
	#tag Method, Flags = &h0
		Sub AddMember(p as DataPoint)
		  MemberPoints.Append(p)
		  //Some thoughts...
		  // What if p is already in the list?
		  //Why not keep a sigma of the points as they are added so that ComputeCentroid only has to divide.
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ComputeCentroid() As DataPoint
		  dim numberOfPoints as integer = MemberPoints.Ubound+1
		  if numberOfPoints > 0 then
		    
		    dim nDimensions as integer = MemberPoints(0).Features.Ubound+1
		    
		    dim sigma as new DataPoint(nDimensions)
		    dim c as new DataPoint(nDimensions)
		    
		    For pointNumber as integer=0 to numberOfPoints-1
		      For feature as integer=0 to nDimensions
		        sigma.Features(feature) = sigma.Features(feature) + MemberPoints(pointNumber).Features(feature)
		      next
		    next
		    
		    For feature as integer=0 to nDimensions-1
		      c.Features(feature) = sigma.Features(feature) / numberOfPoints
		    next
		    return c
		  else
		    Raise New OutOfBoundsException
		  end if
		  //NOTREACHED
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		MemberPoints(-1) As DataPoint
	#tag EndProperty


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
End Class
#tag EndClass
