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
[button X=100 y=250 graphic="title/button_start.png" target="S_0002___buttonlabel_START"]
[s]
*S_0002___branch
[iscript]
var brname = 'br_BTNVAL_START';                //01234567890123
if (brname.match(/^br_BTNVAL_/g)=='br_BTNVAL_') {
    var val = brname.slice(10);
    if (f.buttonval == val) {
        f.nextstate = 'S_END';
    }
}
[endscript]
[iscript]
    if (f.nextstate == '') {
        f.nextstate = '';
    }
[endscript]
[jump target=&f.nextstate]
*S_0002___buttonlabel_START
[iscript]
    f.buttonval = 'START'
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



