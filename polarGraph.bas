Dim x As Integer
Dim y As Integer
Dim x1 As Integer
Dim y1 As Integer
Dim ar As Single
Dim radius As Integer
Dim xoff As Integer
Dim yoff As Integer


Screen 13

radius = 100

' screen 13 is   320 by 200
xoff = 160
yoff = 100






For angle = 0 To 360 Step 2
    ' converting angle to radians
    ar = angle / 57.295
    x = radius * Cos(ar)
    y = radius * Sin(ar)

    x1 = radius * Cos(ar * 2)
    y1 = radius * Sin(ar * 2)




    Line (x + xoff, y + yoff)-(x1 + xoff, y1 + yoff), 13
    PSet (x + xoff, y + yoff), 6





Next angle

sleep

