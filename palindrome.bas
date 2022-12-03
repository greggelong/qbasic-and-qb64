Dim wrd As String
Dim rvwrd As String
Dim x As Integer

Cls

Input "Enter word: ", wrd

For x = Len(wrd) To 1 Step -1
    rvwrd = rvwrd + Mid$(wrd, x, 1)

Next x

Print
Print "----------"
Print rvwrd
Print


If LCase$(wrd) = LCase$(rvwrd) Then
    Print wrd; " is a palindrome"
Else
    Print wrd; " is not a palindrome"

End If

