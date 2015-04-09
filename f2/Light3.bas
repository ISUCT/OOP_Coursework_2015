Attribute VB_Name = "Module4"
Option Explicit
Sub GrAirS(CmbK As ComboBox, GraIR As Integer, AlCu As Integer)
Select Case GraIR
Case 0
    Select Case AlCu
        Case 0
        CmbK.Clear
        CmbK.AddItem "ÏÂ"
        CmbK.AddItem "ÏÓÍÏ"
        CmbK.AddItem "ÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Case 1
        CmbK.Clear
        CmbK.AddItem "ÀÏÂ"
        CmbK.AddItem "ÀÂÂÃ"
        CmbK.Text = CmbK.List(0)
    End Select
Case 1
    Select Case AlCu
        Case 0
        CmbK.Clear
        CmbK.AddItem "ÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Case 1
        CmbK.Clear
        CmbK.AddItem "ÀÂÂÃ"
        CmbK.Text = CmbK.List(0)
    End Select
End Select
End Sub
Sub Idop(CmbPV As ComboBox, CmbK As ComboBox, CmbG As ComboBox, DtaIdop As Data, Idop As TextBox, Ip As TextBox, GraIR As Integer, ShpIdop As Shape, TxtIDM As TextBox)
Dim Kabel As String, q As String, Ip1 As String, G As String, ErrCode As Integer, StrCompare As String
Dim FileData, Md
ErrCode = 0
Open App.Path & "\Bf.brt" For Input As 4
Line Input #4, FileData
Close 4
DtaIdop.DatabaseName = FileData & "\Idop.mdb"
Call ChangCol(ShpIdop, ErrCode)
Kabel = CmbK.Text
q = CSng(CmbPV.Text)
Ip1 = Ip.Text
If Ip1 = "" Then
Idop.Text = ""
Exit Sub
End If
G = CmbG.Text
            Select Case GraIR
                Case 1
        Select Case Kabel
           Case "ÂÂÃ"
                DtaIdop.RecordSource = "IdopKCu"
                DtaIdop.Refresh
                StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "Gr"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
        Case "ÀÂÂÃ"
        DtaIdop.RecordSource = "IdopKAl"
        DtaIdop.Refresh
        StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "Gr"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
        End Select
                
                Case 0
        Select Case Kabel
        Case "ÏÂ"
    Select Case G
    Case "3"
    DtaIdop.RecordSource = "IdopPCU"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "3"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
    
    Case "5"
    DtaIdop.RecordSource = "IdopPCU"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "5"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
End Select
    
    Case "ÏÓÍÏ"
    DtaIdop.RecordSource = "IdopPCu"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "1"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
     Case "ÂÂÃ"
    DtaIdop.RecordSource = "IdopKCu"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "Air"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
    Case "ÀÏÂ"
    DtaIdop.RecordSource = "IdopPAl"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "5"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
    Case "ÀÂÂÃ"
    DtaIdop.RecordSource = "IdopKAl"
    DtaIdop.Refresh
    StrCompare = "[Sechen] =" + q
                DtaIdop.Recordset.MoveFirst
                DtaIdop.Recordset.FindFirst StrCompare
                Idop.DataField = "Air"
                TxtIDM.DataField = "Sechen"
                If CSng(Ip1) > CSng(Idop) Then
                ErrCode = 1
                Call ChangCol(ShpIdop, ErrCode)
                End If
End Select
End Select

End Sub
