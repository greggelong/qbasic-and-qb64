Dim x As Integer
Dim y As Integer
Dim x1 As Integer
Dim y1 As Integer
Dim ar As Single
Dim radius As Integer
Dim xoff As Integer
Dim yoff As Integer
Dim m As Integer




Screen _NewImage(600, 600, 256)


radius = 250

' screen is 600 by 600
xoff = 300
yoff = 300




For m = 2 To 35

    Cls

    For angle = 0 To 360 Step 2
        ' converting angle to radians
        ar = angle / 57.295
        x = radius * Cos(ar)
        y = radius * Sin(ar)

        x1 = radius * Cos(ar * m)

        y1 = radius * Sin(ar * m)

        Line (x + xoff, y + yoff)-(x1 + xoff, y1 + yoff), 6



    Next angle

    Sleep
Next m

