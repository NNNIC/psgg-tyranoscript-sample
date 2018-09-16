;  psggConverterLib.dll converted from TestControl.xlsx. 
[iscript]
    f.curstate = '';
    f.nextstate = '';
    f.yesno = 0;
    f.buttonval='';
[endscript]

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
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0001';
    }
[endscript]
[jump target=&f.nextstate]
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
[s]
*S_END___branch
[iscript]
    if (f.nextstate == '') {
        f.nextstate = '';
    }
[endscript]
[jump target=&f.nextstate]
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
    f.buttonval='';
[endscript]
[button X=100 y=250 graphic="title/button_start.png" target="S_0002___buttonlabel_YES"]
[button X=100 y=320 graphic="title/button_start.png" target="S_0002___buttonlabel_NO"]
[s]
*S_0002___branch
[iscript]
var brname = 'br_BTNVAL_YES';                //01234567890123
if (brname.match(/^br_BTNVAL_/g)=='br_BTNVAL_') {
    var val = brname.slice(10);
    if (f.buttonval == val) {
        f.nextstate = 'S_0003';
    }
}
[endscript]
[iscript]
var brname = 'br_BTNVAL_NO';                //01234567890123
if (brname.match(/^br_BTNVAL_/g)=='br_BTNVAL_') {
    var val = brname.slice(10);
    if (f.buttonval == val) {
        f.nextstate = 'S_0004';
    }
}
[endscript]
[iscript]
    if (f.nextstate == '') {
        f.nextstate = '';
    }
[endscript]
[jump target=&f.nextstate]
*S_0002___buttonlabel_YES
[iscript]
    f.buttonval = 'YES'
[endscript]
[jump target="S_0002___branch"]
*S_0002___buttonlabel_NO
[iscript]
    f.buttonval = 'NO'
[endscript]
[jump target="S_0002___branch"]
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
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0002';
    }
[endscript]
[jump target=&f.nextstate]
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
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0005';
    }
[endscript]
[jump target=&f.nextstate]
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
*S_0004___branch
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_0006';
    }
[endscript]
[jump target=&f.nextstate]
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
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_END';
    }
[endscript]
[jump target=&f.nextstate]
;------------------------------
;    S_0006
;    new state
*S_0006
[iscript]
    f.curstate = 'S_0006';
    f.nextstate ='';
    f.yesno=0;
[endscript]
NO
*S_0006___branch
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_END';
    }
[endscript]
[jump target=&f.nextstate]



