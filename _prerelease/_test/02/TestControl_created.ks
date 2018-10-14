;  psggConverterLib.dll converted from TestControl.xlsx. 
@jump target='S_START'


;------------------------------
;    S_START
;
*S_START
[iscript]
    f.curstate = 'S_START';
    f.nextstate ='';
    f.yesno=0;
[endscript]
START[r]
*S_START___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0001';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_START
;
;------------------------------
;    S_END
;
*S_END
[iscript]
    f.curstate = 'S_END';
    f.nextstate ='';
    f.yesno=0;
[endscript]
END[r]
[iscript]
    f.clkval='';
[endscript]
[clickable x=0 y=0 width=800 height=640 color=red opacity=30 target="S_END___clickablelabel_A0"]
[s]
*S_END___branch
;
; BRANCH
;
[brcode br='br_CLKVAL_A0' st='S_START']
[jump target=&f.nextstate]
;
; CLICK LABEL
;
*S_END___clickablelabel_A0
[iscript]
    f.clkval = 'A0';
[endscript]
[jump target="S_END___branch"]
;
; END OF S_END
;
;------------------------------
;    S_0002
;    new state
*S_0002
[iscript]
    f.curstate = 'S_0002';
    f.nextstate ='';
    f.yesno=0;
[endscript]
button test[r]
[iscript]
    f.butval='';
[endscript]
[button X=100 y=250 graphic="title/button_start.png" target="S_0002___buttonlabel_START"]
[button X=100 y=320 graphic="title/button_load.png" target="S_0002___buttonlabel_LOAD"]
[s]
*S_0002___branch
;
; BRANCH
;
[brcode br='br_BTNVAL_START' st='S_0003']
[brcode br='br_BTNVAL_LOAD' st='S_0004']
[jump target=&f.nextstate]
;
; BUTTON LABEL
;
*S_0002___buttonlabel_START
[iscript]
    f.butval = 'START'
[endscript]
[jump target="S_0002___branch"]
*S_0002___buttonlabel_LOAD
[iscript]
    f.butval = 'LOAD'
[endscript]
[jump target="S_0002___branch"]
;
; END OF S_0002
;
;------------------------------
;    S_0001
;    new state
*S_0001
[iscript]
    f.curstate = 'S_0001';
    f.nextstate ='';
    f.yesno=0;
[endscript]
bg test[r]
@bg storage="title.jpg"
@wait time = 200
*S_0001___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0002';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_0001
;
;------------------------------
;    S_0003
;    new state
*S_0003
[iscript]
    f.curstate = 'S_0003';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
[clearfix]
@bg storage="room.jpg"
*S_0003___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0005';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_0003
;
;------------------------------
;    S_0004
;    new state
*S_0004
[iscript]
    f.curstate = 'S_0004';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
[clearfix]
@bg storage="room.jpg"
[iscript]
    f.clkval='';
[endscript]
[clickable x=50 y=100 width=100 height=100 color=red opacity=30 target="S_0004___clickablelabel_A0"]
[clickable x=50 y=200 width=100 height=100 color=red opacity=30 target="S_0004___clickablelabel_A1"]
[s]
*S_0004___branch
;
; BRANCH
;
[brcode br='br_CLKVAL_A0' st='S_0006']
[brcode br='br_CLKVAL_A1' st='S_0007']
[jump target=&f.nextstate]
;
; CLICK LABEL
;
*S_0004___clickablelabel_A0
[iscript]
    f.clkval = 'A0';
[endscript]
[jump target="S_0004___branch"]
*S_0004___clickablelabel_A1
[iscript]
    f.clkval = 'A1';
[endscript]
[jump target="S_0004___branch"]
;
; END OF S_0004
;
;------------------------------
;    S_0005
;    new state
*S_0005
[iscript]
    f.curstate = 'S_0005';
    f.nextstate ='';
    f.yesno=0;
[endscript]
YES
*S_0005___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_END';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_0005
;
;------------------------------
;    S_0006
;    new state
*S_0006
[iscript]
    f.curstate = 'S_0006';
    f.nextstate ='';
    f.yesno=0;
[endscript]
NO-A0
*S_0006___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_END';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_0006
;
;------------------------------
;    S_0007
;    new state
*S_0007
[iscript]
    f.curstate = 'S_0007';
    f.nextstate ='';
    f.yesno=0;
[endscript]
NO-A1
*S_0007___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_END';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_0007
;



