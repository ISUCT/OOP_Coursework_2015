Attribute VB_Name = "Module2"
Option Explicit

Sub Search(Cmb As ComboBox, AlCu As Integer, Fase As Integer, TxtM As TextBox, TxtdU As TextBox, TxtMidle As TextBox, Dta As Data, ShpdU As Shape)
Dim M As String, q As String, StrCompare As String
Dim M2 As Single, M1 As Single, U1 As Single, U2 As Single
Dim FileData, ErrCode As Integer
ErrCode = 0
Call ChangCol(ShpdU, ErrCode)
Open App.Path & "\Bf.brt" For Input As 3
Line Input #3, FileData
Close 3

M = TxtM.Text
If M = "" Then
Exit Sub
End If
q = Cmb.Text
Select Case AlCu
        Case 0
        Dta.DatabaseName = FileData & "\MCu.mdb"
Select Case Fase
    Case 0
        Dta.RecordSource = "Mcu3F" 'выбрали таблицу
        Dta.Refresh 'обновили
    Case 1
        Dta.RecordSource = "Mcu1F" 'выбрали таблицу
        Dta.Refresh 'обновили
End Select
    Case 1
        Dta.DatabaseName = FileData & "\MAl.mdb"
Select Case Fase
    Case 0
        Dta.RecordSource = "Mal3F" 'выбрали таблицу
        Dta.Refresh 'обновили
    Case 1
        Dta.RecordSource = "Mal1F" 'выбрали таблицу
        Dta.Refresh 'обновили
End Select
End Select

Select Case q
        Case "1,5"
            StrCompare = "[1,5] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[1,5] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "2,5"
        StrCompare = "[2,5] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[2,5] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "4"
        StrCompare = "[4] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[4] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "6"
        StrCompare = "[6] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[6] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "10"
        StrCompare = "[10] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[10] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = TxtMidle.Text
End If
        Case "16"
        StrCompare = "[16] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[16] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "25"
        StrCompare = "[25] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[25] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "35"
        StrCompare = "[35] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[35] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "50"
        StrCompare = "[50] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[50] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "70"
        StrCompare = "[70] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[70] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "95"
        StrCompare = "[95] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[95] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####.####")
End If
        Case "120"
        StrCompare = "[120] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[120] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "150"
        StrCompare = "[150] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[150] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
        Case "185"
        StrCompare = "[185] =" + M
Dta.Recordset.MoveFirst
Dta.Recordset.FindFirst StrCompare
TxtMidle.DataField = q 'получили коэффициент
M2 = TxtMidle.Text
If M2 = 0 Then
    StrCompare = "[185] >" + M
    Dta.Recordset.MoveFirst
    Dta.Recordset.FindFirst StrCompare
        TxtMidle.DataField = q
        M2 = TxtMidle.Text
        
        If M2 = 0 Then
        TxtdU.Text = 5
        ErrCode = 1
        Call ChangCol(ShpdU, ErrCode)
        Exit Sub
        End If
        
        TxtMidle.DataField = "dU"
        U2 = TxtMidle.Text
    Dta.Recordset.MovePrevious
    TxtMidle.DataField = q
    M1 = TxtMidle.Text
    TxtMidle.DataField = "dU"
    U1 = TxtMidle.Text
    M = CSng(M)
    TxtdU.Text = Format(LnInterpdU(M1, M2, M, U1, U2), "#####0.####")
    Else
TxtMidle.DataField = "dU"
TxtdU.Text = Format(TxtMidle.Text, "#####0.####")
End If
End Select

'StrCompare = "[1,5] =" + M
'Dta.Recordset.MoveFirst
'Dta.Recordset.FindFirst StrCompare
'TxtMidle.DataField = q 'получили коэффициент
'M2 = TxtMidle.Text
'If M2 = 0 Then
 '   StrCompare = "[1,5] >" + M
  '  Dta.Recordset.MoveFirst
   ' Dta.Recordset.FindFirst StrCompare
    '    TxtMidle.DataField = q
     '   M2 = TxtMidle.Text
        
      '  If M2 = 0 Then
      '  TxtdU.Text = 5
      '  ErrCode = 1
      '  Call ChangCol(ShpdU, ErrCode)
      '  Exit Sub
      '  End If
        
       ' TxtMidle.DataField = "dU"
       ' U2 = TxtMidle.Text
   ' Dta.Recordset.MovePrevious
   ' TxtMidle.DataField = q
   ' M1 = TxtMidle.Text
   ' TxtMidle.DataField = "dU"
   ' U1 = TxtMidle.Text
   ' M = CSng(M)
   ' TxtdU.Text = LnInterpdU(M1, M2, M, U1, U2)
   ' Else
'TxtMidle.DataField = "dU"
'TxtdU.Text = TxtMidle.Text
'End If
End Sub
