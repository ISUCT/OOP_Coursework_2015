VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Расчётъ 1.1"
   ClientHeight    =   4755
   ClientLeft      =   9660
   ClientTop       =   7695
   ClientWidth     =   7410
   Icon            =   "Alex.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4755
   ScaleWidth      =   7410
   Begin VB.CommandButton CMDHelp 
      Caption         =   "HELP ME!"
      Height          =   495
      Left            =   240
      TabIndex        =   38
      TabStop         =   0   'False
      Top             =   4080
      Width           =   1215
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3855
      Left            =   120
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   120
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   6800
      _Version        =   393216
      TabOrientation  =   1
      Tabs            =   2
      Tab             =   1
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Свет"
      TabPicture(0)   =   "Alex.frx":030A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Label1"
      Tab(0).Control(1)=   "Label2"
      Tab(0).Control(2)=   "Label3"
      Tab(0).Control(3)=   "Label5"
      Tab(0).Control(4)=   "Frame1"
      Tab(0).Control(5)=   "Frame2"
      Tab(0).Control(6)=   "Frame3"
      Tab(0).Control(7)=   "Square"
      Tab(0).Control(8)=   "Power"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Koll"
      Tab(0).Control(10)=   "Frame4"
      Tab(0).Control(11)=   "TxtTest3"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "TxtTest6"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "CmdHist"
      Tab(0).ControlCount=   14
      TabCaption(1)   =   "Провода"
      TabPicture(1)   =   "Alex.frx":0326
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame5"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame6"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "DtaIdop"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "DtaUslProh"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Frame8"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "DtaM"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "Frame9"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).ControlCount=   7
      Begin VB.Frame Frame9 
         Caption         =   "Интерполяция"
         Height          =   855
         Left            =   3480
         TabIndex        =   89
         Top             =   1320
         Width           =   3135
         Begin VB.TextBox Interp6 
            Height          =   285
            Left            =   2040
            TabIndex        =   96
            Top             =   500
            Width           =   855
         End
         Begin VB.TextBox Interp5 
            Height          =   285
            Left            =   1080
            Locked          =   -1  'True
            TabIndex        =   95
            Top             =   500
            Width           =   855
         End
         Begin VB.TextBox Interp4 
            Height          =   285
            Left            =   120
            TabIndex        =   94
            Top             =   500
            Width           =   855
         End
         Begin VB.TextBox Interp3 
            Height          =   285
            Left            =   2040
            TabIndex        =   93
            Top             =   200
            Width           =   855
         End
         Begin VB.TextBox Interp2 
            Height          =   285
            Left            =   1080
            TabIndex        =   92
            Top             =   200
            Width           =   855
         End
         Begin VB.TextBox Interp1 
            Height          =   285
            Left            =   120
            TabIndex        =   91
            Top             =   200
            Width           =   855
         End
      End
      Begin VB.CommandButton CmdHist 
         Caption         =   "История"
         Height          =   375
         Left            =   -74760
         TabIndex        =   80
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Data DtaM 
         Caption         =   "Data1"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         Height          =   345
         Left            =   2160
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "Mcu1F"
         Top             =   1080
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Frame Frame8 
         Caption         =   "Расчёт питающих линий"
         Height          =   1095
         Left            =   120
         TabIndex        =   59
         Top             =   2280
         Width           =   6975
         Begin VB.TextBox TxtK 
            Height          =   285
            Left            =   3750
            Locked          =   -1  'True
            TabIndex        =   88
            Top             =   720
            Width           =   735
         End
         Begin VB.TextBox TxtMidle 
            DataSource      =   "DtaM"
            Height          =   285
            Left            =   4875
            Locked          =   -1  'True
            TabIndex        =   74
            TabStop         =   0   'False
            Top             =   600
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.TextBox TxtIp 
            Height          =   285
            Left            =   2610
            Locked          =   -1  'True
            TabIndex        =   73
            TabStop         =   0   'False
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtPy 
            Height          =   285
            Left            =   360
            MaxLength       =   30
            TabIndex        =   8
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtPp 
            Height          =   285
            Left            =   1485
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtL 
            Height          =   285
            Left            =   3750
            MaxLength       =   30
            TabIndex        =   11
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtM 
            Height          =   285
            Left            =   4875
            Locked          =   -1  'True
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtdU 
            Height          =   285
            Left            =   6000
            Locked          =   -1  'True
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox TxtKc 
            Height          =   285
            Left            =   840
            TabIndex        =   9
            Text            =   "0,9"
            Top             =   720
            Width           =   735
         End
         Begin VB.TextBox TxtCos 
            Height          =   285
            Left            =   2400
            TabIndex        =   10
            Text            =   "0,9"
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label18 
            Caption         =   "К"
            Height          =   195
            Left            =   3548
            TabIndex        =   90
            Top             =   765
            Width           =   135
         End
         Begin VB.Shape ShpdU 
            BackColor       =   &H8000000A&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   400
            Left            =   5955
            Top             =   195
            Width           =   850
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Ру"
            Height          =   195
            Left            =   120
            TabIndex        =   70
            Top             =   285
            Width           =   180
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "L"
            Height          =   195
            Left            =   3570
            TabIndex        =   69
            Top             =   285
            Width           =   90
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Ip"
            Height          =   195
            Left            =   2380
            TabIndex        =   68
            Top             =   285
            Width           =   135
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Рр"
            Height          =   195
            Left            =   1200
            TabIndex        =   67
            Top             =   285
            Width           =   195
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "M"
            Height          =   195
            Left            =   4650
            TabIndex        =   66
            Top             =   285
            Width           =   135
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "dU"
            Height          =   195
            Left            =   5700
            TabIndex        =   65
            Top             =   285
            Width           =   210
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Kc"
            Height          =   195
            Left            =   480
            TabIndex        =   64
            Top             =   765
            Width           =   195
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Cos(Phi)"
            Height          =   195
            Left            =   1680
            TabIndex        =   63
            Top             =   765
            Width           =   585
         End
      End
      Begin VB.Data DtaUslProh 
         Caption         =   "Data1"
         Connect         =   "Access"
         DatabaseName    =   "C:\Мои документы\VB\UslProh.mdb"
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         Height          =   345
         Left            =   3720
         Options         =   0
         ReadOnly        =   -1  'True
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   1080
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Data DtaIdop 
         Caption         =   "Data1"
         Connect         =   "Access"
         DatabaseName    =   "C:\Мои документы\VB\Idop.mdb"
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         EOFAction       =   1  'EOF
         Exclusive       =   0   'False
         Height          =   345
         Left            =   5280
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   1080
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Frame Frame6 
         Caption         =   "Способ прокладки"
         Height          =   855
         Left            =   120
         TabIndex        =   48
         Top             =   1320
         Width           =   3255
         Begin VB.TextBox TxtIDM 
            DataSource      =   "DtaIdop"
            Height          =   195
            Left            =   2160
            Locked          =   -1  'True
            TabIndex        =   79
            TabStop         =   0   'False
            Top             =   600
            Visible         =   0   'False
            Width           =   615
         End
         Begin VB.TextBox TxtIdop 
            DataSource      =   "DtaIdop"
            Height          =   285
            Left            =   2160
            Locked          =   -1  'True
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   315
            Width           =   855
         End
         Begin VB.OptionButton OptGA 
            Alignment       =   1  'Right Justify
            Caption         =   "По воздуху"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   72
            TabStop         =   0   'False
            Top             =   480
            Value           =   -1  'True
            Width           =   1215
         End
         Begin VB.OptionButton OptGA 
            Alignment       =   1  'Right Justify
            Caption         =   "По земле   "
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   71
            TabStop         =   0   'False
            Top             =   240
            Width           =   1215
         End
         Begin VB.Shape ShpIdop 
            BackColor       =   &H8000000A&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   375
            Left            =   2115
            Top             =   270
            Width           =   945
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Iдоп"
            Height          =   195
            Left            =   1680
            TabIndex        =   58
            Top             =   360
            Width           =   315
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Марка Провода"
         Height          =   1095
         Left            =   120
         TabIndex        =   47
         Top             =   120
         Width           =   6495
         Begin VB.ComboBox CmbK 
            Height          =   315
            ItemData        =   "Alex.frx":0342
            Left            =   1440
            List            =   "Alex.frx":0355
            TabIndex        =   76
            TabStop         =   0   'False
            Text            =   "ПВ"
            Top             =   360
            Width           =   975
         End
         Begin VB.OptionButton OptAlCu 
            Caption         =   "Cu"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   75
            TabStop         =   0   'False
            Top             =   360
            Value           =   -1  'True
            Width           =   495
         End
         Begin VB.ComboBox CmbG 
            Height          =   315
            ItemData        =   "Alex.frx":0373
            Left            =   2520
            List            =   "Alex.frx":037D
            TabIndex        =   56
            TabStop         =   0   'False
            Text            =   "4"
            Top             =   360
            Width           =   615
         End
         Begin VB.TextBox TxtUp1 
            DataSource      =   "DtaUslProh"
            Height          =   285
            Left            =   5400
            Locked          =   -1  'True
            TabIndex        =   54
            TabStop         =   0   'False
            Top             =   375
            Width           =   855
         End
         Begin VB.ComboBox CmbPV 
            Height          =   315
            ItemData        =   "Alex.frx":0387
            Left            =   3570
            List            =   "Alex.frx":0389
            TabIndex        =   53
            TabStop         =   0   'False
            Text            =   "1,5"
            Top             =   360
            Width           =   735
         End
         Begin VB.Frame Frame7 
            BorderStyle     =   0  'None
            Caption         =   "Frame7"
            Height          =   615
            Left            =   120
            TabIndex        =   50
            Top             =   360
            Width           =   615
            Begin VB.OptionButton OptF 
               Alignment       =   1  'Right Justify
               Caption         =   "1Ф"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   52
               TabStop         =   0   'False
               Top             =   360
               Width           =   615
            End
            Begin VB.OptionButton OptF 
               Alignment       =   1  'Right Justify
               Caption         =   "3Ф"
               Height          =   255
               Index           =   0
               Left            =   0
               TabIndex        =   51
               TabStop         =   0   'False
               Top             =   0
               Value           =   -1  'True
               Width           =   615
            End
         End
         Begin VB.OptionButton OptAlCu 
            Caption         =   "Al"
            Height          =   255
            Index           =   1
            Left            =   840
            TabIndex        =   49
            TabStop         =   0   'False
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   ")"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   204
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   4370
            TabIndex        =   78
            Top             =   390
            Width           =   60
         End
         Begin VB.Label LblN 
            AutoSize        =   -1  'True
            Caption         =   "(1 х"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   204
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   3195
            TabIndex        =   77
            Top             =   390
            Width           =   300
         End
         Begin VB.Label Label16 
            Caption         =   "Условный Проход"
            Height          =   375
            Left            =   4560
            TabIndex        =   55
            Top             =   360
            Width           =   855
         End
      End
      Begin VB.TextBox TxtTest6 
         DataSource      =   "DtaDBNac"
         Height          =   285
         Left            =   -73800
         Locked          =   -1  'True
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   2835
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.TextBox TxtTest3 
         DataSource      =   "DtaDBLLCD"
         Height          =   285
         Left            =   -73800
         Locked          =   -1  'True
         TabIndex        =   46
         TabStop         =   0   'False
         Top             =   2835
         Width           =   1095
      End
      Begin VB.Frame Frame4 
         Caption         =   "Номинальная м-ть"
         Height          =   1095
         Left            =   -70080
         TabIndex        =   33
         Top             =   1320
         Width           =   1935
         Begin VB.OptionButton Option4 
            Caption         =   "60"
            Enabled         =   0   'False
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   42
            Top             =   480
            Width           =   495
         End
         Begin VB.OptionButton Option4 
            Caption         =   "80"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   4
            Top             =   720
            Value           =   -1  'True
            Width           =   495
         End
         Begin VB.OptionButton Option4 
            Caption         =   "200"
            Enabled         =   0   'False
            Height          =   255
            Index           =   4
            Left            =   840
            TabIndex        =   37
            Top             =   720
            Width           =   615
         End
         Begin VB.OptionButton Option4 
            Caption         =   "150"
            Enabled         =   0   'False
            Height          =   255
            Index           =   3
            Left            =   840
            TabIndex        =   36
            Top             =   480
            Width           =   735
         End
         Begin VB.OptionButton Option4 
            Caption         =   "100"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   840
            TabIndex        =   35
            Top             =   240
            Width           =   735
         End
         Begin VB.OptionButton Option4 
            Caption         =   "40"
            Enabled         =   0   'False
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   34
            Top             =   240
            Width           =   495
         End
      End
      Begin VB.TextBox Koll 
         Height          =   285
         Left            =   -69480
         Locked          =   -1  'True
         TabIndex        =   7
         Top             =   2835
         Width           =   1095
      End
      Begin VB.TextBox Power 
         Height          =   285
         Left            =   -71640
         Locked          =   -1  'True
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   2835
         Width           =   1095
      End
      Begin VB.TextBox Square 
         Height          =   285
         Left            =   -73920
         MaxLength       =   8
         TabIndex        =   0
         Top             =   240
         Width           =   975
      End
      Begin VB.Frame Frame3 
         Caption         =   "Тип Ламп"
         Height          =   855
         Left            =   -70080
         TabIndex        =   18
         Top             =   360
         Width           =   1935
         Begin VB.OptionButton Option3 
            Caption         =   "Накаливания"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   19
            Top             =   480
            Width           =   1695
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Люминисцентные"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   3
            Top             =   240
            Value           =   -1  'True
            Width           =   1695
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Люкс"
         Height          =   1815
         Left            =   -73200
         TabIndex        =   17
         Top             =   600
         Width           =   3015
         Begin VB.OptionButton Option2 
            Caption         =   "10000"
            Height          =   255
            Index           =   17
            Left            =   1560
            TabIndex        =   86
            Top             =   1440
            Width           =   750
         End
         Begin VB.OptionButton Option2 
            Caption         =   "3000"
            Height          =   255
            Index           =   16
            Left            =   1560
            TabIndex        =   85
            Top             =   1200
            Width           =   735
         End
         Begin VB.OptionButton Option2 
            Caption         =   "2000"
            Height          =   255
            Index           =   15
            Left            =   1560
            TabIndex        =   84
            Top             =   960
            Width           =   735
         End
         Begin VB.OptionButton Option2 
            Caption         =   "1000"
            Height          =   255
            Index           =   14
            Left            =   1560
            TabIndex        =   83
            Top             =   720
            Width           =   855
         End
         Begin VB.OptionButton Option2 
            Caption         =   "750"
            Height          =   255
            Index           =   13
            Left            =   1560
            TabIndex        =   82
            Top             =   480
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "600"
            Height          =   255
            Index           =   12
            Left            =   1560
            TabIndex        =   81
            Top             =   240
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "500"
            Height          =   255
            Index           =   11
            Left            =   840
            TabIndex        =   32
            Top             =   1440
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "400"
            Height          =   255
            Index           =   10
            Left            =   840
            TabIndex        =   31
            Top             =   1200
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "300"
            Height          =   255
            Index           =   9
            Left            =   840
            TabIndex        =   30
            Top             =   960
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "200"
            Height          =   255
            Index           =   8
            Left            =   840
            TabIndex        =   29
            Top             =   720
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "150"
            Height          =   255
            Index           =   7
            Left            =   840
            TabIndex        =   28
            Top             =   480
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "100"
            Height          =   255
            Index           =   6
            Left            =   840
            TabIndex        =   27
            Top             =   240
            Width           =   615
         End
         Begin VB.OptionButton Option2 
            Caption         =   "75"
            Height          =   255
            Index           =   5
            Left            =   240
            TabIndex        =   26
            Top             =   1440
            Width           =   495
         End
         Begin VB.OptionButton Option2 
            Caption         =   "50"
            Height          =   255
            Index           =   4
            Left            =   240
            TabIndex        =   25
            Top             =   1200
            Width           =   495
         End
         Begin VB.OptionButton Option2 
            Caption         =   "30"
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   24
            Top             =   960
            Width           =   495
         End
         Begin VB.OptionButton Option2 
            Caption         =   "20"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   23
            Top             =   720
            Width           =   495
         End
         Begin VB.OptionButton Option2 
            Caption         =   "10"
            Height          =   255
            Index           =   1
            Left            =   240
            TabIndex        =   22
            Top             =   480
            Width           =   495
         End
         Begin VB.OptionButton Option2 
            Caption         =   "5"
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   2
            Top             =   240
            Value           =   -1  'True
            Width           =   495
         End
         Begin VB.Label Label15 
            Caption         =   "(Солнце)"
            Height          =   255
            Left            =   2290
            TabIndex        =   87
            Top             =   1440
            Width           =   680
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Высота"
         Height          =   1095
         Left            =   -74760
         TabIndex        =   14
         Top             =   600
         Width           =   1455
         Begin VB.OptionButton Option1 
            Caption         =   "4 - 6"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   16
            Top             =   720
            Width           =   735
         End
         Begin VB.OptionButton Option1 
            Caption         =   "3 - 4"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   15
            Top             =   480
            Width           =   735
         End
         Begin VB.OptionButton Option1 
            Caption         =   "2 - 3"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   1
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   " Удельная Мощность"
         Height          =   435
         Left            =   -74880
         TabIndex        =   45
         Top             =   2760
         Width           =   1065
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Мощность"
         Height          =   195
         Left            =   -72600
         TabIndex        =   21
         Top             =   2880
         Width           =   825
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Количество"
         Height          =   195
         Left            =   -70440
         TabIndex        =   20
         Top             =   2880
         Width           =   915
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Площадь"
         Height          =   195
         Left            =   -74760
         TabIndex        =   13
         Top             =   240
         Width           =   705
      End
   End
   Begin VB.Data DtaDBLLCD 
      Caption         =   "Люминисцентные"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   420
      Left            =   360
      Options         =   0
      ReadOnly        =   -1  'True
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   600
      Width           =   5415
   End
   Begin VB.TextBox TxtTest1 
      DataSource      =   "DtaDBLLCD"
      Height          =   375
      Left            =   5400
      TabIndex        =   40
      TabStop         =   0   'False
      Top             =   960
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox txtTest2 
      DataSource      =   "DtaDBLLCD"
      Height          =   375
      Left            =   5400
      TabIndex        =   41
      TabStop         =   0   'False
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Data DtaDBNac 
      Caption         =   "Накаливания"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   420
      Left            =   360
      Options         =   0
      ReadOnly        =   -1  'True
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   1200
      Width           =   5415
   End
   Begin VB.TextBox TxtTest5 
      DataSource      =   "DtaDBNac"
      Height          =   375
      Left            =   2160
      TabIndex        =   43
      TabStop         =   0   'False
      Top             =   1680
      Width           =   1095
   End
   Begin VB.TextBox TxtTest4 
      DataSource      =   "DtaDBNac"
      Height          =   375
      Left            =   840
      TabIndex        =   44
      TabStop         =   0   'False
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Разработчик JSK. Products ComTextile@yandex.ru"
      Height          =   435
      Left            =   4920
      TabIndex        =   39
      Top             =   4080
      Width           =   2340
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ind1 As Integer, ind2 As Integer, ind3 As Integer, ind4 As Integer, Fase As Integer, AlCu As Integer, GraIR As Integer
Private Sub CmbG_Click()
Call Idop(CmbPV, CmbK, CmbG, DtaIdop, TxtIdop, TxtIp, GraIR, ShpIdop, TxtIDM)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub

Private Sub CmbK_Click()
Call SelD(CmbPV, Fase, AlCu, GraIR, CmbK, CmbG, LblN)
Call Idop(CmbPV, CmbK, CmbG, DtaIdop, TxtIdop, TxtIp, GraIR, ShpIdop, TxtIDM)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub

Private Sub CmbPV_Click()
Call Search(CmbPV, AlCu, Fase, TxtM, TxtdU, TxtMidle, DtaM, ShpdU)
Call Idop(CmbPV, CmbK, CmbG, DtaIdop, TxtIdop, TxtIp, GraIR, ShpIdop, TxtIDM)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub
Private Sub CMDHelp_Click()
Load Help
Help.Show
End Sub

Private Sub CmdHist_Click()
Load History
History.Show
If Square = "" Then
History.txtHist = History.txtHist
Else
Select Case Option3(ind3).Index
Case 0
History.txtHist = History.txtHist + Square + Chr(9) + "Л.Л." + Chr(9) + Option2(ind2).Caption + Chr(9) + TxtTest3 + Chr(9) + Power + Chr(9) + Koll + vbCrLf
Case 1
History.txtHist = History.txtHist + Square + Chr(9) + "Л.Н." + Chr(9) + Option2(ind2).Caption + Chr(9) + TxtTest3 + Chr(9) + Power + Chr(9) + Koll + vbCrLf
End Select
End If

End Sub

Private Sub Form_Load()
Dim FileData
Open App.Path & "\Bf.brt" For Input As 1
Line Input #1, FileData
Close 1
DtaDBLLCD.DatabaseName = FileData & "\DllCD.mdb"
DtaDBNac.DatabaseName = FileData & "\DlNac.mdb"
DtaM.DatabaseName = FileData & "\Mcu.mdb"
DtaIdop.DatabaseName = FileData & "\Idop.mdb"
DtaUslProh.DatabaseName = FileData & "\UslProh.mdb"
'Unload FRMPassWord
ind4 = 2
DtaDBLLCD.RecordSource = Option1(0).Caption
'Call DtTest(TxtTest1, txtTest2, TxtTest3, DtaDBLLCD)
DtaDBNac.RecordSource = Option1(0).Caption
'Call DtTest1(TxtTest4, TxtTest5, TxtTest6, Option2(0), DtaDBNac)
Call Lister(CmbPV, Fase, AlCu, GraIR, CmbK, CmbG, LblN)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
TxtK = Format(Koeff_TxtK(TxtCos), "#######.###")
End Sub

Private Sub Form_Unload(Cancel As Integer)
History.Hide
Unload History
End Sub

Private Sub Interp1_Change()
Interp1.Text = SecComma(Interp1)
Interp5 = Format(Interpolation(Interp1, Interp2, Interp3, Interp4, Interp5, Interp6), "########.###")
End Sub

Private Sub Interp1_GotFocus()
Interp1.SelStart = 0
Interp1.SelLength = Len(Interp1.Text)

End Sub

Private Sub Interp1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Interp1.SelStart = 0
Interp1.SelLength = Len(Interp1.Text)
End If
End Sub

Private Sub Interp1_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

Private Sub Interp2_Change()
Interp2.Text = SecComma(Interp2)
Interp5 = Format(Interpolation(Interp1, Interp2, Interp3, Interp4, Interp5, Interp6), "########.###")
End Sub

Private Sub Interp2_GotFocus()
Interp2.SelStart = 0
Interp2.SelLength = Len(Interp2.Text)

End Sub

Private Sub Interp2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Interp2.SelStart = 0
Interp2.SelLength = Len(Interp2.Text)
End If
End Sub

Private Sub Interp2_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub
Private Sub Interp3_Change()
Interp3.Text = SecComma(Interp3)
Interp5 = Format(Interpolation(Interp1, Interp2, Interp3, Interp4, Interp5, Interp6), "########.###")
End Sub

Private Sub Interp3_GotFocus()
Interp3.SelStart = 0
Interp3.SelLength = Len(Interp3.Text)

End Sub

Private Sub Interp3_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Interp3.SelStart = 0
Interp3.SelLength = Len(Interp3.Text)
End If
End Sub

Private Sub Interp3_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub
Private Sub Interp4_Change()
Interp4.Text = SecComma(Interp4)
Interp5 = Format(Interpolation(Interp1, Interp2, Interp3, Interp4, Interp5, Interp6), "########.###")
End Sub

Private Sub Interp4_GotFocus()
Interp4.SelStart = 0
Interp4.SelLength = Len(Interp4.Text)

End Sub

Private Sub Interp4_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Interp4.SelStart = 0
Interp4.SelLength = Len(Interp4.Text)
End If
End Sub

Private Sub Interp4_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub
Private Sub Interp6_Change()
Interp6.Text = SecComma(Interp6)
Interp5 = Format(Interpolation(Interp1, Interp2, Interp3, Interp4, Interp5, Interp6), "########.###")
End Sub

Private Sub Interp6_GotFocus()
Interp6.SelStart = 0
Interp6.SelLength = Len(Interp6.Text)

End Sub

Private Sub Interp6_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Interp6.SelStart = 0
Interp6.SelLength = Len(Interp6.Text)
End If
End Sub

Private Sub Interp6_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub



Private Sub OptAlCu_Click(Index As Integer)
AlCu = Index
Call Lister(CmbPV, Fase, AlCu, GraIR, CmbK, CmbG, LblN)
Call GrAirS(CmbK, GraIR, AlCu)
Call Search(CmbPV, AlCu, Fase, TxtM, TxtdU, TxtMidle, DtaM, ShpdU)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub

Private Sub OptF_Click(Index As Integer)
Fase = Index
Call Lister(CmbPV, Fase, AlCu, GraIR, CmbK, CmbG, LblN)
Call TstF(Fase, TxtKc)
Call CountIp(TxtIp, TxtPp, TxtCos, Fase)
Call Search(CmbPV, AlCu, Fase, TxtM, TxtdU, TxtMidle, DtaM, ShpdU)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub

Private Sub OptGA_Click(Index As Integer)
GraIR = Index
Call GrAirS(CmbK, GraIR, AlCu)
Call UslProh(TxtUp1, CmbK, CmbG, CmbPV, DtaUslProh)
End Sub

Private Sub Option1_Click(Index As Integer)
ind1 = Index
Call Schet(Square, Power, Koll, Option1(ind1), Option2(ind2), Option3(ind3), ind3, Option4(ind4), DtaDBLLCD, DtaDBNac, TxtTest3, TxtTest6)
End Sub

Private Sub Option2_Click(Index As Integer)
ind2 = Index
Call Schet(Square, Power, Koll, Option1(ind1), Option2(ind2), Option3(ind3), ind3, Option4(ind4), DtaDBLLCD, DtaDBNac, TxtTest3, TxtTest6)
End Sub

Private Sub Option3_Click(Index As Integer)
ind3 = Index
If Index = 1 Then
    
'MsgBox "WARNING: При переходе с люминисцентных на лампы накаливания люкс снижается на 2 ступени!", vbExclamation, "Думай о последствиях!"
Select Case ind2
Case 0
    'MsgBox "Страусов не пугать - пол бетонный", vbExclamation, "Эй, смотри что творишь!"
Case 1
    Option2(ind2).Value = False
    'MsgBox "Возможно уменьшение только на 1 ступень!", vbExclamation, "Полегче!"
    Option2(ind2 - 1).Value = True
Case Else
    Option2(ind2).Value = False
    ind2 = ind2 - 2
If Option1(2).Value = True Then
    ind1 = 0
    Option1(0).Value = True
End If
    Option2(ind2).Value = True
End Select
    Option1(2).Enabled = False
If Option1(2).Value = True Then
    ind1 = 0
    Option1(0).Value = True
End If
    TxtTest6.Visible = True
    TxtTest3.Visible = False
    Option4(0).Enabled = True
    Option4(1).Enabled = True
    Option4(2).Enabled = False
    Option4(3).Enabled = True
    Option4(4).Enabled = True
    Option4(5).Enabled = True
    Option4(0).Value = True
    
Else
    TxtTest3.Visible = True
    TxtTest6.Visible = False
    Option1(2).Enabled = True
    Option4(0).Enabled = False
    Option4(1).Enabled = False
    Option4(2).Enabled = True
    Option4(3).Enabled = False
    Option4(4).Enabled = False
    Option4(5).Enabled = False
    Option4(2).Value = True
End If
Call Schet(Square, Power, Koll, Option1(ind1), Option2(ind2), Option3(ind3), ind3, Option4(ind4), DtaDBLLCD, DtaDBNac, TxtTest3, TxtTest6)

End Sub

Private Sub Option4_Click(Index As Integer)
ind4 = Index
Call Schet(Square, Power, Koll, Option1(ind1), Option2(ind2), Option3(ind3), ind3, Option4(ind4), DtaDBLLCD, DtaDBNac, TxtTest3, TxtTest6)
End Sub

Private Sub Square_Change()
Square.Text = SecComma(Square)
Call Schet(Square, Power, Koll, Option1(ind1), Option2(ind2), Option3(ind3), ind3, Option4(ind4), DtaDBLLCD, DtaDBNac, TxtTest3, TxtTest6)
End Sub

Private Sub Square_GotFocus()
Square.SelStart = 0
Square.SelLength = Len(Square.Text)
End Sub

Private Sub Square_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
Square.SelStart = 0
Square.SelLength = Len(Square.Text)
End If
End Sub

Private Sub Square_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub


Private Sub TxtCos_Change()
If TxtCos.Text > 1 Then
TxtCos.Text = 1
End If
TxtCos.Text = SecComma(TxtCos)
Call CountIp(TxtIp, TxtPp, TxtCos, Fase)
TxtK = Format(Koeff_TxtK(TxtCos), "#######.###")
End Sub

Private Sub TxtCos_GotFocus()
Call Focus(TxtCos)
End Sub

Private Sub TxtCos_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

Private Sub TxtIp_Change()
Call Idop(CmbPV, CmbK, CmbG, DtaIdop, TxtIdop, TxtIp, GraIR, ShpIdop, TxtIDM)
End Sub

Private Sub TxtKc_Change()
If TxtKc.Text > 1 Then
TxtKc.Text = 1
End If
TxtKc.Text = SecComma(TxtKc)
If TxtPy.Text <> "" Or TxtPp <> "" Then
If TxtPy.Text = "" Then
TxtPp.Text = TxtPp.Text
Else
TxtPp.Text = CSng(TxtPy.Text) * CSng(TxtKc.Text)
End If
End If
End Sub

Private Sub TxtKc_GotFocus()
Call Focus(TxtKc)
End Sub

Private Sub TxtKc_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

Private Sub TxtL_Change()
TxtL.Text = SecComma(TxtL)
Call CountM(TxtM, TxtL, TxtPp)
End Sub

Private Sub TxtL_GotFocus()
Call Focus(TxtL)
End Sub

Private Sub TxtL_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

Private Sub TxtL_LostFocus()
TxtPy.SetFocus
End Sub

Private Sub TxtM_Change()
Call Search(CmbPV, AlCu, Fase, TxtM, TxtdU, TxtMidle, DtaM, ShpdU)

End Sub

Private Sub TxtPp_Change()
TxtPp.Text = SecComma(TxtPp)
Call CountIp(TxtIp, TxtPp, TxtCos, Fase)
Call CountM(TxtM, TxtL, TxtPp)
End Sub

Private Sub TxtPp_GotFocus()
Call Focus(TxtPp)
End Sub

Private Sub TxtPp_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

Private Sub TxtPy_Change()
TxtPy.Text = SecComma(TxtPy)
If TxtPy.Text = "" Then
TxtPp.Text = ""
Else
TxtPp.Text = CSng(TxtPy.Text) * CSng(TxtKc.Text)
End If
End Sub

Private Sub TxtPy_GotFocus()
Call Focus(TxtPy)
End Sub

Private Sub TxtPy_KeyPress(KeyAscii As Integer)
KeyAscii = Only_Number(KeyAscii)
End Sub

