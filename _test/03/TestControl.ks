
[iscript]
    f.curstate = '';
    f.nextstate = '';
    f.yesno = 0;
    f.butval='';
    f.clkval='';
    f.glkval='';
    f.lnkval='';
[endscript]

[macro name=brcode]

[iscript]
if (f.nextstate == '') {
    var brname = mp.br;          
    var st     = mp.st;
    if (brname == 'br_YES') {
        if (f.yesno != 0) {
            f.nextstate = st;
        }
    } if (brname == 'br_NO') {
        if (f.yesno == 0) {
            f.nextstate = st;
        }        
    } else if (brname.match(/^br_BTNVAL_/g)=='br_BTNVAL_') {
        var val = brname.slice(10);
        if (f.butval == val) {
            f.nextstate = st;
        }
    } else if (brname.match(/^br_CLKVAL_/g)=='br_CLKVAL_') {
        var val = brname.slice(10);
        if (f.clkval == val) {
            f.nextstate = st;
        }
    } else if (brname.match(/^br_GLKVAL_/g)=='br_GLKVAL_') {
        var val = brname.slice(10);
        if (f.glkval == val) {
            f.nextstate = st;
        }
    } else if (brname.match(/^br_LNKVAL_/g)=='br_LNKVAL_') {
        var val = brname.slice(10);
        if (f.lnkval == val) {
            f.nextstate = st;
        }
    }
}
[endscript]
[endmacro]



@jump storage="testControl_created.ks" 

[s]