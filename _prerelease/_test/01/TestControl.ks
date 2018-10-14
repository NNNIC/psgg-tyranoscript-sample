[macro name=brcode]

[iscript]
var brname = mp.br;             //01234567890123          
if (brname.match(/^br_BTNVAL_/g)=='br_BTNVAL_') {
    var val = brname.slice(10);
    if (f.butval == val) {
        f.nextstate = mp.st;
    }
} else if (brname.match(/^br_CLKVAL_/g)=='br_CLKVAL_') {
    var val = brname.slice(10);
    if (f.clkval == val) {
        f.nextstate = mp.st;
    }
}
[endscript]
[endmacro]



@jump storage="testControl_created.ks" 

[s]