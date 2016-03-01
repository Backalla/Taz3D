;(****Build and Slicing Parameters****)
;(Pix per mm X            = 18.82168 px/mm )
;(Pix per mm Y            = 18.82845 px/mm )
;(X Resolution            = 1920 )
;(Y Resolution            = 1080 )
;(Layer Thickness         = 0.03000 mm )
;(Layer Time              = 1700 ms )
;(Render Outlines         = False
;(Outline Width Inset     = 100
;(Outline Width Outset    = 0
;(Bottom Layers Time      = 10000 ms )
;(Number of Bottom Layers = 5 )
;(Blanking Layer Time     = 10800 ms )
;(Build Direction         = Bottom_Up)
;(Lift Distance           = 4 mm )
;(Slide/Tilt Value        = 0)
;(Anti Aliasing           = False)
;(Use Mainlift GCode Tab  = False)
;(Anti Aliasing Value     = 2.5 )
;(Z Lift Feed Rate        = 30.00000 mm/s )
;(Z Bottom Lift Feed Rate = 25.00000 mm/s )
;(Z Lift Retract Rate     = 200.00000 mm/s )
;(Flip X                  = False)
;(Flip Y                  = False)
;Number of Slices        =  162
;(****Machine Configuration ******)
;(Platform X Size         = 102.01mm )
;(Platform Y Size         = 57.36mm )
;(Platform Z Size         = 100mm )
;(Max X Feedrate          = 100mm/s )
;(Max Y Feedrate          = 100mm/s )
;(Max Z Feedrate          = 100mm/s )
;(Machine Type            = UV_DLP)
;Here you can set any G or M-Code which should be executed BEFORE the build process
;M206 Z-11.5
G21 ;Set units to be mm
;G28 Z0
G91 ;Relative Positioning
G92 X6
G1 X-6 F50
G1 X0.3 F50
G1 Z-100 F300
G1 Z-15 F80
G90 ;Absolute Positioning
;G1 Z0 F40
M400
G91
M400;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 0 
;<Delay> 10000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 1 
;<Delay> 10000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 2 
;<Delay> 10000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 3 
;<Delay> 10000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 4 
;<Delay> 10000 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 5 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 6 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 7 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 8 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 9 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 10 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 11 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 12 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 13 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 14 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 15 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 16 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 17 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 18 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 19 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 20 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 21 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 22 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 23 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 24 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 25 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 26 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 27 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 28 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 29 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 30 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 31 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 32 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 33 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 34 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 35 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 36 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 37 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 38 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 39 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 40 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 41 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 42 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 43 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 44 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 45 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 46 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 47 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 48 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 49 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 50 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 51 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 52 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 53 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 54 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 55 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 56 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 57 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 58 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 59 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 60 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 61 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 62 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 63 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 64 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 65 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 66 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 67 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 68 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 69 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 70 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 71 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 72 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 73 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 74 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 75 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 76 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 77 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 78 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 79 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 80 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 81 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 82 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 83 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 84 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 85 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 86 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 87 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 88 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 89 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 90 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 91 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 92 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 93 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 94 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 95 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 96 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 97 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 98 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 99 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 100 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 101 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 102 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 103 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 104 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 105 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 106 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 107 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 108 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 109 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 110 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 111 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 112 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 113 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 114 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 115 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 116 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 117 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 118 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 119 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 120 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 121 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 122 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 123 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 124 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 125 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 126 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 127 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 128 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 129 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 130 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 131 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 132 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 133 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 134 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 135 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 136 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 137 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 138 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 139 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 140 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 141 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 142 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 143 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 144 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 145 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 146 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 147 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 148 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 149 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 150 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 151 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 152 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 153 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 154 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 155 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 156 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 157 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 158 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 159 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 160 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Pre-Slice Start ********
;Set up any GCode here to be executed before a lift
;********** Pre-Slice End **********
G1 X2.5 F300
M400;<Slice> 161 
;<Delay> 1700 
;<Slice> Blank 
;********** Lift Sequence ********
G1 X-2.5 F300
M400
G1 Z4.0 F30.0
G1 Z-3.97 F200.0
;<Delay> 10800
;********** Lift Sequence **********
;********** Footer Start ********
;Here you can set any G or M-Code which should be executed after the last Layer is Printed
G28 Z0
M18 ;Disable Motors
;<Completed>
;********** Footer End ********
