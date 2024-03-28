#tag Window
Begin ContainerControl DistributionControl
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
   Height          =   138
   HelpTag         =   ""
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
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   276
   Begin Label MeanLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   "Samples will be generated whose mean is Center"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Center"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   1
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   81
   End
   Begin Label VarianceLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   "A cluster of samples will be generated whose variance is half width and whose center is center"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   90
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Width"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   1
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   83
   End
   Begin Label NumberOfSamplesLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "N samples"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   1
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin ColorChooserContainerControl ColourChooserContainerControl
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      c               =   &c00000000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      greyScale       =   False
      HasBackColor    =   False
      Height          =   20
      HelpTag         =   "Click on the color you like"
      InitialParent   =   ""
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   60
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   224
   End
   Begin ColorChooserContainerControl GreyscaleChooserContainerControl
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      c               =   &c00000000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      greyScale       =   True
      HasBackColor    =   False
      Height          =   20
      HelpTag         =   "Click on the shade of grey you like"
      InitialParent   =   ""
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   88
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   224
   End
   Begin Rectangle ClusterColorViewRect
      AutoDeactivate  =   True
      BorderWidth     =   1
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   16
      HelpTag         =   "Click on me to generate the dataset"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      Top             =   72
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin Label ClusternNameLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Cluster Name"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   117
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   128
   End
   Begin TextField MeanTextField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   12
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   26
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   66
   End
   Begin TextField VarianceTextField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   90
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   26
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin TextField NSamplesTextField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   180
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   "#####"
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   26
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  G.PenWidth = 1
		  G.ForeColor = color.LightGray
		  G.DrawRect(0,0, g.Width, g.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GenerateSamples()
		  dim samples(-1) as integer
		  dim min, max as integer
		  
		  
		  min = mean-Variance/2
		  max = mean+Variance/2
		  for i as integer = 0 to nSamples-1
		    dim v as integer = app.MyRandom.InRange(min, max)
		    samples.Append(v)
		  next
		  
		  SamplesGenerated(samples, ClusterColor, min, max, mean)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SamplesGenerated(Samples() as Integer, c as color, min as integer, max as integer, mean as integer)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mClusterColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mClusterColor = value
			End Set
		#tag EndSetter
		ClusterColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  return (ClusternNameLabel.Text)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ClusternNameLabel.text = value
			  
			End Set
		#tag EndSetter
		ClusterName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mClusterColor As Color = Color.blue
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim m as integer
			  m = MeanTextField.Text.Val
			  Return(m)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim txt as string = value.ToText
			  MeanTextField.Text = txt
			  
			  
			End Set
		#tag EndSetter
		Mean As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim ns as integer
			  ns = NSamplesTextField.Text.Val
			  return (ns)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim txt as string = value.ToText
			  NSamplesTextField.Text = txt
			  
			End Set
		#tag EndSetter
		nSamples As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim w as integer
			  w = VarianceTextField.Text.val
			  return(w)
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim txt as string = value.ToText
			  VarianceTextField.Text = txt
			  
			End Set
		#tag EndSetter
		Variance As Integer
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events ColourChooserContainerControl
	#tag Event
		Sub ColorChosen(c as Color)
		  ClusterColorViewRect.FillColor = c
		  ClusterColorViewRect.Refresh
		  ClusterColor = c
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GreyscaleChooserContainerControl
	#tag Event
		Sub ColorChosen(c as Color)
		  ClusterColorViewRect.FillColor = c
		  ClusterColorViewRect.Refresh
		  ClusterColor = c
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClusterColorViewRect
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  GenerateSamples
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.FillColor = ClusterColor
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Mean"
		Visible=true
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Variance"
		Visible=true
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="nSamples"
		Visible=true
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClusterColor"
		Visible=true
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClusterName"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
