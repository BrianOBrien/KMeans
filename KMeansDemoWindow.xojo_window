#tag Window
Begin Window KMeansDemoWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   572
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   634961919
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   4
   Resizeable      =   True
   Title           =   "KMeans Demo"
   Visible         =   True
   Width           =   472
   Begin Listbox TestDataListbox
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   498
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Value	Segment\r\n	"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   28
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton SegmentIt
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Segment it"
      Default         =   False
      Enabled         =   True
      Height          =   27
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   362
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   538
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin DistributionControl WindowLevel1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ClusterColor    =   &cFF000000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   158
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   152
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mean            =   3
      nSamples        =   10
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   28
      Transparent     =   True
      UseFocusRing    =   True
      Variance        =   6
      Visible         =   True
      Width           =   304
   End
   Begin DistributionControl WindowLevel2
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ClusterColor    =   &c00FF4000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   158
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   152
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mean            =   15
      nSamples        =   10
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   198
      Transparent     =   True
      UseFocusRing    =   True
      Variance        =   6
      Visible         =   True
      Width           =   304
   End
   Begin DistributionControl WindowLevel3
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ClusterColor    =   &c0080C000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   158
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   152
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Mean            =   27
      nSamples        =   10
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   368
      Transparent     =   True
      UseFocusRing    =   True
      Variance        =   6
      Visible         =   True
      Width           =   304
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  TestDataListbox.DeleteAllRows
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CollectData()
		  dim d as kMeansModule.DataPoint
		  redim centroids(-1)
		  redim myArray(-1)
		  
		  for r as integer = 0 to TestDataListbox.LastIndex
		    dim v(0) as double
		    v(0) = TestDataListbox.Cell(r,0).CDbl
		    d = new kMeansModule.DataPoint(v)
		    myArray.append(d)
		  next
		  
		  dim fa0(0) as Double
		  dim fa1(0) as Double
		  dim fa2(0) as Double
		  
		  fa0(0) = 3
		  fa1(0) = 15
		  fa2(0) = 27
		  
		  dim dp0 as new KMeansModule.DataPoint(fa0)
		  dim dp1 as new KMeansModule.DataPoint(fa1)
		  dim dp2 as new KMeansModule.DataPoint(fa2)
		  
		  centroids.Append(dp0)
		  centroids.Append(dp1)
		  centroids.Append(dp2)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateRandomData()
		  dim n as integer = 9 // 9 random samples
		  dim m as integer = 3 // 3 segments
		  dim regions() as integer = Array(3, 15, 27)
		  dim d as kMeansModule.DataPoint
		  
		  dim rn as integer = 0
		  redim myArray(-1)
		  
		  for each region as integer in regions  // window // width
		    for s as integer = 0 to m-1
		      dim v(0) as double
		      v(0) = App.MyRandom.InRange(region-3, region+3)
		      d = new kMeansModule.DataPoint(v)
		      myArray.append(d)
		    next
		  next
		  
		  dim fa0(0) as Double
		  dim fa1(0) as Double
		  dim fa2(0) as Double
		  
		  fa0(0) = 3
		  fa1(0) = 15
		  fa2(0) = 27
		  
		  dim dp0 as new KMeansModule.DataPoint(fa0)
		  dim dp1 as new KMeansModule.DataPoint(fa1)
		  dim dp2 as new KMeansModule.DataPoint(fa2)
		  
		  centroids.Append(dp0)
		  centroids.Append(dp1)
		  centroids.Append(dp2)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformSegmentation()
		  // This is where the magic happens.
		  // I am seeding the centroids myself. The algorithm documentatin was to select k random seed points to begin.
		  // I have some reservations about what happens when more than one random seeds happend to be actually inside
		  // a cluster.
		  
		  CollectData
		  
		  dim clusters(-1) as KMeansModule.Cluster = KMeans(myArray, centroids)
		  
		  PlotHistogram(clusters, Palette)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlotHistogram(clusters() as KMeansModule.Cluster, Palette() as Color)
		  dim histogram(-1) as integer
		  redim histogram(clusters.Ubound)
		  
		  dim i as integer = 0
		  for each clust as KMeansModule.Cluster in clusters
		    for each dp as KMeansModule.DataPoint in clust.MemberPoints
		      histogram(i) = histogram(i) + 1
		    next
		    i = i + 1
		  next
		  
		  dim w as new HistogramWindow
		  w.Plot(histogram, color.green, Palette)
		  w.Show()
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		centroids(-1) As KMeansModule.DataPoint
	#tag EndProperty

	#tag Property, Flags = &h0
		MyArray(-1) As kMeansModule.DataPoint
	#tag EndProperty

	#tag Property, Flags = &h0
		Palette(-1) As Color
	#tag EndProperty


#tag EndWindowCode

#tag Events TestDataListbox
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  #Pragma BreakOnExceptions False
		  try
		    g.ForeColor = me.celltag(row, column)
		    g.FillRect(0, 0, g.Width, g.Height)
		  catch
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SegmentIt
	#tag Event
		Sub Action()
		  PerformSegmentation
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WindowLevel1
	#tag Event
		Sub SamplesGenerated(Samples() as Integer, c as color, min as integer, max as integer, mean as integer)
		  for i as integer=0 to Samples.Ubound
		    TestDataListbox.AddRow(Samples(i).ToText)
		    TestDataListbox.CellTag(TestDataListbox.ListCount-1,0) = c
		  next i
		  Palette.Append(c)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WindowLevel2
	#tag Event
		Sub SamplesGenerated(Samples() as Integer, c as color, min as integer, max as integer, mean as integer)
		  for i as integer=0 to Samples.Ubound
		    TestDataListbox.AddRow(Samples(i).ToText)
		    TestDataListbox.CellTag(TestDataListbox.ListCount-1,0) = c
		  next i
		  Palette.Append(c)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WindowLevel3
	#tag Event
		Sub SamplesGenerated(Samples() as Integer, c as color, min as integer, max as integer, mean as integer)
		  for i as integer=0 to Samples.Ubound
		    TestDataListbox.AddRow(Samples(i).ToText)
		    TestDataListbox.CellTag(TestDataListbox.ListCount-1,0) = c
		  next i
		  Palette.Append(c)
		  
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
		Name="Interfaces"
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
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
