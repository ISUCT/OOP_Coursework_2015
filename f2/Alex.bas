Attribute VB_Name = "Module1"
Option Explicit

Public Sub DtTest(txtTst1 As TextBox, txtTst2 As TextBox, txtTst3 As TextBox, Dta1 As Data)
With txtTst1
.DataField = "SquareL"
End With
With txtTst2
.DataField = "SquareH"
End With
With txtTst3
.DataField = "Light"
End With
End Sub

Public Sub DtTest1(txtTs1 As TextBox, txtTs2 As TextBox, txtTs3 As TextBox, Opt As OptionButton, Dta2 As Data)
With txtTs1
.DataField = "SquareL"
End With
With txtTs2
.DataField = "SquareH"
End With
With txtTs3
.DataField = Opt.Caption
End With
End Sub
    
    Function Only_Number(theParam As Integer)
        If InStr("1234567890," & Chr(8) & vbEnter, Chr(theParam)) > 0 Then
            Only_Number = theParam
        Else
            Only_Number = 0
        End If
    End Function
    
    Function TxtTest(Txt As TextBox)
    If Mid(Txt.Text, 1, 1) = "" Or Mid(Txt.Text, 1, 1) = "," Then
    TxtTest = 1
    Txt.Text = ""
    Else: TxtTest = 0
    End If
    End Function

Public Sub Schet(TxtSq As TextBox, TxtM As TextBox, TxtNum As TextBox, OptH As OptionButton, OptL As OptionButton, OptT As OptionButton, indt As Integer, OptM As OptionButton, DtL As Data, DtN As Data, TxtDtL As TextBox, TxtDtN As TextBox)

Dim Square As Single, Power As Single
Dim Num As Single, KoeL As Single, KoeN As Single
Dim StrCompare As String
Dim Tmp As String
    DtL.Enabled = False
    DtN.Enabled = False

Select Case indt
Case 0
        DtN.Enabled = False
        DtL.Enabled = True 'выбрали базу данных
        DtL.RecordSource = OptH.Caption 'выбрали таблицу
        DtL.Refresh 'обновили
                
        If TxtTest(TxtSq) = 0 Then 'поиск но только если введена площадь
        Square = CSng(TxtSq.Text)
        StrCompare = "[SquareH] > " + delText(TxtSq)
        DtL.Recordset.MoveFirst
        DtL.Recordset.FindFirst StrCompare
        TxtDtL.DataField = "Light" 'получили коэффициент
               
                KoeL = CSng(TxtDtL.Text)
                Power = Square * (CLng(OptL.Caption)) * KoeL / 100
                Num = Power / CLng(OptM.Caption)
                TxtM.Text = CInt(Power) 'Format(Power, "#######.####")
                If Num < 1 Then Num = 1
                Num = CInt(Num + 0.21)
                Num = Format(Num, "########")
                TxtNum.Text = Num
                
    Else
    TxtM.Text = ""
    TxtNum.Text = ""
    TxtDtL.Text = ""
    TxtDtN.Text = ""
    End If
Case 1
        DtL.Enabled = False
        DtN.Enabled = True
        DtN.RecordSource = OptH.Caption 'выбрали таблицу
        DtN.Refresh 'обновили
        TxtDtN.DataField = OptL.Caption
        
        If TxtTest(TxtSq) = 0 Then 'поиск но только если введена площадь
        Square = CSng(TxtSq.Text)
        StrCompare = "[Squareh] > " + delText(TxtSq)
        DtN.Recordset.MoveFirst
        DtN.Recordset.FindFirst StrCompare
        
        
        KoeN = CSng(TxtDtN.Text)
                Power = Square * KoeN
                Num = Power / CLng(OptM.Caption)
                TxtM.Text = CInt(Power) 'Format(Power, "#######.####")
                If Num < 1 Then Num = 1
                Num = CInt(Num + 0.21)
                Num = Format(Num, "########")
                TxtNum.Text = Num
    Else
    TxtM.Text = ""
    TxtNum.Text = ""
    TxtDtL.Text = ""
    TxtDtN.Text = ""
    End If
End Select

End Sub

Function delText(Txt As TextBox) As String
Dim i As Integer, Text As String
Dim n As Integer
Text = Txt.Text
For i = 1 To Len(Text)
If Mid(Text, i, 1) = "," Then
n = i
Text = Mid(Text, 1, n - 1)
End If
Next
delText = Text
End Function

Function SecComma(Txt As TextBox) As String
Dim i As Integer, Text As String
Dim n As Integer, s As Integer
Text = Txt.Text
For i = 1 To Len(Text)
If Mid(Text, i, 1) = "," Then
n = i
s = s + 1
End If
Next
If s > 1 Then
Text = Mid(Text, 1, n - 1)
End If
Txt.SelStart = Len(Txt.Text)
SecComma = Text
End Function

Public Sub TstF(f As Integer, Kc As TextBox)
Select Case f
Case 0
If CSng(Kc.Text) = 1 Then
Kc.Text = "0,9"
End If
Case 1
If CSng(Kc.Text) = 0.9 Then
Kc.Text = "1"
End If
End Select
End Sub

Public Sub Focus(Tx As TextBox)
Tx.SelStart = 0
Tx.SelLength = Len(Tx.Text)
End Sub

Function IsText(TxIs As TextBox) As Integer
If TxIs.Text = "" Then
IsText = 0
Else
IsText = 1
End If
End Function

Sub ChangCol(Shape As Shape, ErCode As Integer)
If ErCode = 1 Then
Shape.BackColor = RGB(255, 0, 0)
Else
Shape.BackColor = &H8000000A
End If
End Sub

Function LnInterpdU(M1 As Single, M2 As Single, Mis, dU1 As Single, dU2 As Single)
LnInterpdU = ((dU2 - dU1) * (Mis - M1) / (M2 - M1)) + dU1
End Function

Function CountMis(Py As TextBox, Pp As TextBox, Ip As TextBox, L As TextBox, M As TextBox, dU As TextBox, Kc As TextBox, cF As TextBox, OptF As OptionButton, Fs As Integer)
Dim U As Single
If Fs = 0 Then
    U = 0.38
    Else
    U = 0.22
End If

If IsText(Py) = 1 & IsText(Kc) = 1 Then
    Pp.Text = CSng(Py.Text) * CSng(Kc)
    Else
    Exit Function
End If

If IsText(cF) = 1 Then
Ip.Text = CSng(Pp.Text) / (Sqr(3) * CSng(cF.Text) * U)
    Else
    Exit Function
End If

If IsText(L) = 1 Then
CountMis = CSng(Pp.Text) * CSng(L)
    Else
    Exit Function
End If
End Function



Sub CountIp(TxtIp As TextBox, TxtPp As TextBox, TxtCos As TextBox, Fase As Integer)
Dim U As Single
If Fase = 0 Then
    U = 0.38
    Else
    U = 0.22
End If
If TxtPp = "" Or TxtCos.Text = "" Or TxtCos.Text = 0 Then
TxtIp.Text = ""
Else
If U = 0.38 Then
TxtIp.Text = CSng(TxtPp.Text) / (0.38 * Sqr(3) * CSng(TxtCos))
Else
TxtIp.Text = (CSng(TxtPp.Text) / (0.22))
End If
End If
End Sub

Sub CountM(TxtM As TextBox, TxtL As TextBox, TxtPp As TextBox)
If TxtPp = "" Or TxtL.Text = "" Then
TxtM.Text = ""
Else
TxtM.Text = CSng(TxtPp.Text) * CSng(TxtL.Text)
End If
End Sub

