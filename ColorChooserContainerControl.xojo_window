#tag Window
Begin ContainerControl ColorChooserContainerControl
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   128
   HelpTag         =   "Click to choose a color or shade of grey for the cluster"
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   False
   UseFocusRing    =   False
   Visible         =   True
   Width           =   128
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  dim w as double = self.Width
		  dim cx as double = X/w * 255.0 // what color index is x[0] to x[w]
		  c = ThePalette(cx)
		  
		  ColorChosen(c)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if ThePalette.Ubound = -1 then
		    MakePalette
		  end if
		  
		  dim w, h as integer
		  dim cx as uint8
		  
		  w = g.Width
		  h = g.Height
		  
		  dim rw as double = w / 256
		  for ix as integer=0 to w
		    
		    cx = ix/w * 255.0 // what color index is x[0] to x[w]
		    
		    g.ForeColor=ThePalette(cx)
		    g.FillRect(ix,0,rw,h)
		  next
		  
		  G.PenWidth = 1
		  G.ForeColor = color.LightGray
		  G.DrawRect(0,0, g.Width, g.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub MakePalette()
		  Dim c As Color
		  dim M_PI as double = acos(-1)
		  redim ThePalette(-1)
		  
		  If mgreyScale Then
		    For i As Integer = 0 To 255
		      c = RGB(i,i,i)
		      ThePalette.Append(c)
		    Next
		  Else
		    
		    Dim loc As Integer
		    Dim y, red, green, blue, theta As Double
		    Dim cChar As UInt8
		    
		    cChar = 0
		    For theta = 0.0 To M_PI * 6.0 Step ((M_PI * 6.0) / 256.0)
		      
		      y = 127.5 * -Cos(theta) + 127.5
		      
		      loc = theta \ M_PI
		      
		      Select Case loc
		      Case 0
		        red = 255.0
		        green = y
		        blue = 0.0
		      Case 1
		        red = y
		        green = 255.0
		        blue = 0.0
		      Case 2
		        red = 0.0
		        green = 255.0
		        blue = y
		      Case 3
		        red = 0.0
		        green = y
		        blue = 255.0
		      Case 4
		        red = y
		        green = 0.0
		        blue = 255.0
		      Case 5
		        red = 255.0
		        green = 0.0
		        blue = y
		      End Select
		      c = RGB(red,green,blue)
		      ThePalette.Append(c)
		      cChar = cChar + 1
		    Next
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ColorChosen(c as Color)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mc
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mc = value
			End Set
		#tag EndSetter
		c As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mgreyScale
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mgreyScale = value
			End Set
		#tag EndSetter
		greyScale As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mc As Color = Color.black
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mgreyScale As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		ThePalette(-1) As Color
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="c"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="greyScale"
		Visible=true
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
