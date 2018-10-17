
[iscript]
    f.curstate = '';
    f.nextstate = '';
    f.yesno = 0;
    f.butval='';
    f.clkval='';
    f.glkval='';
    f.lnkval='';
[endscript]

[jump target=*S_START]

; [SYN-G-GEN OUTPUT START]  indent(0) $/./$
;  psggConverterLib.dll converted from TestControl.xlsx. 
;------------------------------
;    S_ADJUST_CHARAREGION
;    文字が表示される領域を調整
*S_ADJUST_CHARAREGION
[iscript]
    f.curstate = 'S_ADJUST_CHARAREGION';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
*S_ADJUST_CHARAREGION___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_MSGWINDOW';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_ADJUST_CHARAREGION
;
;------------------------------
;    S_AKANE_EMOTION
;    キャラクターの表情登録
*S_AKANE_EMOTION
[iscript]
    f.curstate = 'S_AKANE_EMOTION';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]
*S_AKANE_EMOTION___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SETUP_YAMATO';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_AKANE_EMOTION
;
;------------------------------
;    S_BL_EXAMP
;
*S_BL_EXAMP
[iscript]
    f.curstate = 'S_BL_EXAMP';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
これまで、ティラノスクリプトを使って沢山のゲームが作成されています。[p]
一部の制作事例を公式サイトに乗せているのでよければ確認してくださいね。[p]
[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]
*S_BL_EXAMP___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_JUMP_TO_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BL_EXAMP
;
;------------------------------
;    S_BL_INFO
;
*S_BL_INFO
[iscript]
    f.curstate = 'S_BL_INFO';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
ティラノスクリプトでわからないことがあったら[p]
公式掲示板で質問したり、Wikiなどもありますので参考にしてみてください[p]
*S_BL_INFO___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_JUMP_TO_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BL_INFO
;
;------------------------------
;    S_BL_INTRO
;
*S_BL_INTRO
[iscript]
    f.curstate = 'S_BL_INTRO';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
「ティラノビルダー」
[resetfont]
という無料の開発ツールもあります。[p]
[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]
これは、グラフィカルな画面でノベルゲームを作れるツールです[p]
スクリプトが苦手な人でもゲーム制作を行うことができるからぜひ試してね。[p]
[freeimage layer=1]
*S_BL_INTRO___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_JUMP_TO_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BL_INTRO
;
;------------------------------
;    S_BL_TAG
;
*S_BL_TAG
[iscript]
    f.curstate = 'S_BL_TAG';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
タグは詳細なリファレンスページが用意されています。[p]
このページでさらに詳細な使い方を身につけてください[p]
[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]
*S_BL_TAG___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_JUMP_TO_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BL_TAG
;
;------------------------------
;    S_BL_TECH
;
*S_BL_TECH
[iscript]
    f.curstate = 'S_BL_TECH';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
このサンプルでは、ティラノスクリプトのごく一部の機能しか紹介できていません[p]
さらに出来ることを知りたい場合、スクリプトを丸ごとダウンロードできるようになっているので[p]
そのサンプルを触ってみることをオススメします！[p]
[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]
*S_BL_TECH___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_JUMP_TO_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BL_TECH
;
;------------------------------
;    S_BTNLINK
;
*S_BTNLINK
[iscript]
    f.curstate = 'S_BTNLINK';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]
*S_BTNLINK___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_BTNLINK1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_BTNLINK
;
;------------------------------
;    S_BTNLINK1
;
*S_BTNLINK1
[iscript]
    f.curstate = 'S_BTNLINK1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[iscript]
    f.glkval='';
[endscript]
[glink color="blue"  x=30 y=100 width=500 size=20 target="S_BTNLINK1___glinklabel_INTRO"  text=ティラノビルダーの紹介 ]
[glink color="blue"  x=30 y=160 width=500 size=20 target="S_BTNLINK1___glinklabel_EXAMP"  text=制作事例 ]
[glink color="blue"  x=30 y=220 width=500 size=20 target="S_BTNLINK1___glinklabel_TECH"  text=応用テクニック ]
[glink color="blue"  x=30 y=280 width=500 size=20 target="S_BTNLINK1___glinklabel_INFO"  text=役に立つ情報源 ]
[glink color="blue"  x=30 y=340 width=500 size=20 target="S_BTNLINK1___glinklabel_TAG"  text=タグリファレンス ]
[s]
*S_BTNLINK1___branch
;
; BRANCH
;
[iscript]
    if ( f.glkval == 'INTRO' ) {  f.nextstate='S_BL_INTRO'; }
    else if ( f.glkval == 'EXAMP' ) {  f.nextstate='S_BL_EXAMP'; }
    else if ( f.glkval == 'TECH' ) {  f.nextstate='S_BL_TECH'; }
    else if ( f.glkval == 'INFO' ) {  f.nextstate='S_BL_INFO'; }
    else if ( f.glkval == 'TAG' ) {  f.nextstate='S_BL_TAG'; }
[endscript]
[jump target=&f.nextstate]
;
; GLINK LABEL
;
*S_BTNLINK1___glinklabel_INTRO
[iscript]
    f.glkval = 'INTRO';
[endscript]
[jump target="S_BTNLINK1___branch"]
*S_BTNLINK1___glinklabel_EXAMP
[iscript]
    f.glkval = 'EXAMP';
[endscript]
[jump target="S_BTNLINK1___branch"]
*S_BTNLINK1___glinklabel_TECH
[iscript]
    f.glkval = 'TECH';
[endscript]
[jump target="S_BTNLINK1___branch"]
*S_BTNLINK1___glinklabel_INFO
[iscript]
    f.glkval = 'INFO';
[endscript]
[jump target="S_BTNLINK1___branch"]
*S_BTNLINK1___glinklabel_TAG
[iscript]
    f.glkval = 'TAG';
[endscript]
[jump target="S_BTNLINK1___branch"]
;
; END OF S_BTNLINK1
;
;------------------------------
;    S_DISP_MENU
;    メニューボタンの表示
*S_DISP_MENU
[iscript]
    f.curstate = 'S_DISP_MENU';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@showmenubutton
*S_DISP_MENU___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SETUP_MESSAGEWINDOW';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_DISP_MENU
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
[s]
*S_END___branch
;
; BRANCH
;
[jump target=&f.nextstate]
;
; END OF S_END
;
;------------------------------
;    S_EPILOGUE
;
*S_EPILOGUE
[iscript]
    f.curstate = 'S_EPILOGUE';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#akane
これでティラノスクリプトの基本機能の説明は終わりだけど[p]
どうだったかな？[p]
*S_EPILOGUE___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_EPILOGUE1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_EPILOGUE
;
;------------------------------
;    S_EPILOGUE1
;
*S_EPILOGUE1
[iscript]
    f.curstate = 'S_EPILOGUE1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
うん、これなら自分でも作れそうな気がしてきたよ[p]
*S_EPILOGUE1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_EPILOGUE2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_EPILOGUE1
;
;------------------------------
;    S_EPILOGUE2
;
*S_EPILOGUE2
[iscript]
    f.curstate = 'S_EPILOGUE2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
よかった！[p]
最初は、ティラノスクリプト公式ページのチュートリアルをやってみると良いと思うよ！[p]
もちろん、このゲームもティラノスクリプトで動いてるから、参考になると思うし。[p]
ぜひ、ゲーム制作にチャレンジしてみてね[p]
プレイしてくれてありがとう。[p]
*S_EPILOGUE2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_EPILOGUE3';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_EPILOGUE2
;
;------------------------------
;    S_EPILOGUE3
;
*S_EPILOGUE3
[iscript]
    f.curstate = 'S_EPILOGUE3';
    f.nextstate ='';
    f.yesno=0;
[endscript]
最後にティラノスクリプトで役立つ情報へのリンクを表示しておくから
確認してみてね。[p]
[cm]
*S_EPILOGUE3___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_EPILOGUE3
;
;------------------------------
;    S_FIRSTSTEP
;
*S_FIRSTSTEP
[iscript]
    f.curstate = 'S_FIRSTSTEP';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[title name="ティラノスクリプト解説"]
[stop_keyconfig]
@call storage="tyrano.ks"
@layopt layer="message" visible=false
[hidemenubutton]
*S_FIRSTSTEP___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_TITLE';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FIRSTSTEP
;
;------------------------------
;    S_FULLSCREEN
;
*S_FULLSCREEN
[iscript]
    f.curstate = 'S_FULLSCREEN';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
;キャラクター非表示
[chara_hide name="akane"]
;メッセージを全画面に切り替え
[position layer="message0" left=20 top=40 width=920 height=560 page=fore visible=true ]
*S_FULLSCREEN___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN
;
;------------------------------
;    S_FULLSCREEN1
;
*S_FULLSCREEN1
[iscript]
    f.curstate = 'S_FULLSCREEN1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
どうかな? 物語をじっくり読ませたい場合はこの方式が便利ですね[l][r]
ティラノスクリプトは非常に強力で、柔軟な表現が可能です。[l][cm]
*S_FULLSCREEN1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN1
;
;------------------------------
;    S_FULLSCREEN2
;
*S_FULLSCREEN2
[iscript]
    f.curstate = 'S_FULLSCREEN2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[font size=40]文字のサイズを変更したり
[l][r]
[resetfont]
[font color="pink"]色を変更したり
[resetfont][l][r]
[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l]
*S_FULLSCREEN2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN3';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN2
;
;------------------------------
;    S_FULLSCREEN3
;
*S_FULLSCREEN3
[iscript]
    f.curstate = 'S_FULLSCREEN3';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
;たて書きにする
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]
このように縦書きで記述することもできます。[r][l]
縦書きでも、横書きの時と同じ機能を使うことができます。[r][l]
;横書きに戻す
[position vertical=false]
*S_FULLSCREEN3___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN4';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN3
;
;------------------------------
;    S_FULLSCREEN4
;
*S_FULLSCREEN4
[iscript]
    f.curstate = 'S_FULLSCREEN4';
    f.nextstate ='';
    f.yesno=0;
[endscript]
横書きと縦書きをシーンによって使い分けることもできます[r][l]
じゃあ、アドベンチャー形式に戻しますね[p]
;メッセージボックスを元に戻す
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]
*S_FULLSCREEN4___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN5';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN4
;
;------------------------------
;    S_FULLSCREEN5
;
*S_FULLSCREEN5
[iscript]
    f.curstate = 'S_FULLSCREEN5';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@chara_show name="akane"
#akane
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]
*S_FULLSCREEN5___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN6';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN5
;
;------------------------------
;    S_FULLSCREEN6
;
*S_FULLSCREEN6
[iscript]
    f.curstate = 'S_FULLSCREEN6';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[font color="0x454D51"]
[deffont color="0x454D51"]
;名前の表示位置も変更
[free name="chara_name_area" layer="message0"]
[position layer=message0 width=960 height=210 top=430 left=0]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60" opacity=230 ]
;名前枠の設定
[ptext name="chara_name_area" layer="message0"  color="0xFAFAFA"  size=24 x=40 y=435]
[chara_config ptext="chara_name_area"]
*S_FULLSCREEN6___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN7';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN6
;
;------------------------------
;    S_FULLSCREEN7
;
*S_FULLSCREEN7
[iscript]
    f.curstate = 'S_FULLSCREEN7';
    f.nextstate ='';
    f.yesno=0;
[endscript]
どうかな？[p]
ゲームに合わせて自分の好きなデザインを作ってくださいね[p]
あと、デフォルトだとセーブやロードは画面右下のボタンからできるけど[p]
ウィンドウをカスタマイズすれば、、、、[p]
*S_FULLSCREEN7___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MENUBTN';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_FULLSCREEN7
;
;------------------------------
;    S_HALWAY
;
*S_HALWAY
[iscript]
    f.curstate = 'S_HALWAY';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]
[bg time=3000 method="crossfade" storage="rouka.jpg"]
*S_HALWAY___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY
;
;------------------------------
;    S_HALWAY1
;
*S_HALWAY1
[iscript]
    f.curstate = 'S_HALWAY1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
お、廊下に移動したね。[p]
*S_HALWAY1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY1
;
;------------------------------
;    S_HALWAY2
;
*S_HALWAY2
[iscript]
    f.curstate = 'S_HALWAY2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
あれ、今、場面の移動がちょっと違ったね。[p]
*S_HALWAY2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY3';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY2
;
;------------------------------
;    S_HALWAY3
;
*S_HALWAY3
[iscript]
    f.curstate = 'S_HALWAY3';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
うん。急いでたからね。[p]
ティラノスクリプトでは、いろいろな演出を加える事ができて[p]
画面を切り替えるだけでも１０種類以上の演出がつかえるよ。[p]
*S_HALWAY3___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY4';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY3
;
;------------------------------
;    S_HALWAY4
;
*S_HALWAY4
[iscript]
    f.curstate = 'S_HALWAY4';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
ふむ。便利だ[p]
*S_HALWAY4___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY5';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY4
;
;------------------------------
;    S_HALWAY5
;
*S_HALWAY5
[iscript]
    f.curstate = 'S_HALWAY5';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
次にメッセージの表示方法を変えてみるね[p]
ティラノスクリプトでは、今みたいなアドベンチャーゲームの他に[r]
ビジュアルノベルのような全画面表示のゲームもつくれるよ。[p]
*S_HALWAY5___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_FULLSCREEN';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_HALWAY5
;
;------------------------------
;    S_INTREST
;
*S_INTREST
[iscript]
    f.curstate = 'S_INTREST';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_mod  name="akane" face="happy"  ]
#あかね
わー。興味あるなんて、嬉しいなー。[p]
*S_INTREST___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST
;
;------------------------------
;    S_INTREST1
;
*S_INTREST1
[iscript]
    f.curstate = 'S_INTREST1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
・・・・・[p]
まぁ、作ってみたい気持ちはあるけど、むずかしいんでしょ？[p]
プログラミングとかやったことないし、、、[p]
*S_INTREST1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST1
;
;------------------------------
;    S_INTREST10
;
*S_INTREST10
[iscript]
    f.curstate = 'S_INTREST10';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
一度ティラノスクリプトで作ったゲームは多くの環境で動作させることができるってこと！[p]
*S_INTREST10___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST11';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST10
;
;------------------------------
;    S_INTREST11
;
*S_INTREST11
[iscript]
    f.curstate = 'S_INTREST11';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
へぇー。それはいいね。[p]
せっかく作ったらたくさんの人に遊んでもらいたいもんね。[p]
*S_INTREST11___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST12';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST11
;
;------------------------------
;    S_INTREST12
;
*S_INTREST12
[iscript]
    f.curstate = 'S_INTREST12';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
ウィンドウズ用のPCアプリケーションはもちろん。[p]
マック用のアプリケーションにだって対応するわよ。[p]
あと、HTML5だから、ブラウザゲームとしても発表できるわよ。[p]
ウェブサイトに貼り付けて遊んでもらえるから、気軽にゲームをプレイしてもらうことができるね。[p]
主要なブラウザはすべてサポートしているから、安心してね。[p]
*S_INTREST12___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST13';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST12
;
;------------------------------
;    S_INTREST13
;
*S_INTREST13
[iscript]
    f.curstate = 'S_INTREST13';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
やるなぁ。。[p]
でも、最近スマホが復旧してて、僕のサイトにもスマホで訪れる人が増えたんだけど[p]
スマホからは遊べない？[p]
*S_INTREST13___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST14';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST13
;
;------------------------------
;    S_INTREST14
;
*S_INTREST14
[iscript]
    f.curstate = 'S_INTREST14';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
ティラノスクリプトで作ったゲームはスマートフォンからでも遊べるよ！[p]
アイフォーン、アンドロイドはもちろん。アイパッドとかのタブレットでも問題ないわ。[p]
*S_INTREST14___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST15';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST14
;
;------------------------------
;    S_INTREST15
;
*S_INTREST15
[iscript]
    f.curstate = 'S_INTREST15';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
おぉー。[p]
*S_INTREST15___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST16';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST15
;
;------------------------------
;    S_INTREST16
;
*S_INTREST16
[iscript]
    f.curstate = 'S_INTREST16';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
AppStoreやGooglePlayに向けてアプリ化して販売することもできるから[p]
*S_INTREST16___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST17';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST16
;
;------------------------------
;    S_INTREST17
;
*S_INTREST17
[iscript]
    f.curstate = 'S_INTREST17';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
おぉぉ、、やっとの貧困生活から脱出できるかも[p]
*S_INTREST17___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST18';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST17
;
;------------------------------
;    S_INTREST18
;
*S_INTREST18
[iscript]
    f.curstate = 'S_INTREST18';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
まぁ、おもしろいゲームつくらないと、売れもしないけどな！[p]
*S_INTREST18___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST19';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST18
;
;------------------------------
;    S_INTREST19
;
*S_INTREST19
[iscript]
    f.curstate = 'S_INTREST19';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
くっ。。[p]
*S_INTREST19___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_HALWAY';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST19
;
;------------------------------
;    S_INTREST2
;
*S_INTREST2
[iscript]
    f.curstate = 'S_INTREST2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_mod name="akane" face="default"]
#あかね
そんな君に、耳寄りな情報があるんだけど[p]
ききたい？　ききたいよね？[p]
*S_INTREST2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST3';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST2
;
;------------------------------
;    S_INTREST3
;
*S_INTREST3
[iscript]
    f.curstate = 'S_INTREST3';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
いや、べつに
*S_INTREST3___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST4';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST3
;
;------------------------------
;    S_INTREST4
;
*S_INTREST4
[iscript]
    f.curstate = 'S_INTREST4';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
[cm]
[font size=40]
[delay speed=160]
ティラノスクリプトー[p]
[delay speed=30]
[resetfont]
*S_INTREST4___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST5';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST4
;
;------------------------------
;    S_INTREST5
;
*S_INTREST5
[iscript]
    f.curstate = 'S_INTREST5';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
・・・・[p]
*S_INTREST5___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST6';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST5
;
;------------------------------
;    S_INTREST6
;
*S_INTREST6
[iscript]
    f.curstate = 'S_INTREST6';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
ティラノスクリプトを使うと、簡単に本格的なノベルゲームが簡単に作れてしまうのよ。[p]
*S_INTREST6___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST7';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST6
;
;------------------------------
;    S_INTREST7
;
*S_INTREST7
[iscript]
    f.curstate = 'S_INTREST7';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
へぇー。それはちょっと興味あるね。[p]
*S_INTREST7___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST8';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST7
;
;------------------------------
;    S_INTREST8
;
*S_INTREST8
[iscript]
    f.curstate = 'S_INTREST8';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_mod  name="akane" face="happy"  ]
#あかね
ほ、ほんと！？[p]
このゲームをプレイするだけで、ティラノスクリプトの機能を確認することができるから[p]
ぜひ、最後までつきあってね[p]
まず、ティラノスクリプトの特徴として[font color="red"]「HTML5」[resetfont]で動作するよ[p]
*S_INTREST8___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST9';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST8
;
;------------------------------
;    S_INTREST9
;
*S_INTREST9
[iscript]
    f.curstate = 'S_INTREST9';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
つ、つまり？[p]
*S_INTREST9___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_INTREST10';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_INTREST9
;
;------------------------------
;    S_JUMP_TO_BTNLINK
;
*S_JUMP_TO_BTNLINK
[iscript]
    f.curstate = 'S_JUMP_TO_BTNLINK';
    f.nextstate ='';
    f.yesno=0;
[endscript]
*S_JUMP_TO_BTNLINK___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_BTNLINK';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_JUMP_TO_BTNLINK
;
;------------------------------
;    S_MENUBTN
;
*S_MENUBTN
[iscript]
    f.curstate = 'S_MENUBTN';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@hidemenubutton
[button name="role_button" x=35 y=610  graphic="button/skip.png" enterimg="button/skip2.png" role="skip"  ]
[button name="role_button" x=110 y=610  graphic="button/auto.png" enterimg="button/auto2.auto" role="auto"  ]
[button name="role_button" x=185 y=610  graphic="button/save.png" enterimg="button/save2.png" role="save"  ]
[button name="role_button" x=260 y=610  graphic="button/load.png" enterimg="button/load2.png" role="load"  ]
[button name="role_button" x=335 y=610  graphic="button/qsave.png" enterimg="button/qsave2.png" role="qicksave"  ]
[button name="role_button" x=410 y=610  graphic="button/qload.png" enterimg="button/qload2.png" role="qickload"  ]
[button name="role_button" x=485 y=610  graphic="button/log.png" enterimg="button/log2.png" role="backlog"  ]
[button name="role_button" x=560 y=610  graphic="button/close.png" enterimg="button/close2.png" role="window"  ]
[button name="role_button" x=635 y=610  graphic="button/screen.png" enterimg="button/screen2.png" role="fullscreen"  ]
[button name="role_button" x=710 y=610  graphic="button/menu.png" enterimg="button/menu2.png" role="menu"  ]
[button name="role_button" x=785 y=610  graphic="button/sleep.png" enterimg="button/sleep2.png" role="sleepgame" storage='config.ks' ]
[button name="role_button" x=860 y=610  graphic="button/title.png" enterimg="button/title2.png" role="title"  ]
*S_MENUBTN___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MENUBTN1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_MENUBTN
;
;------------------------------
;    S_MENUBTN1
;
*S_MENUBTN1
[iscript]
    f.curstate = 'S_MENUBTN1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
こんな風にゲームに必要な機能を画面の上に持たせることも簡単にできるよ[p]
これはロールボタンといって、ボタンに特別な機能を持たせる事ができます。[p]
標準で用意されているのは、[l]
セーブ、[l]
ロード、[l][cm]
タイトルへ戻る、
メニュー表示、
メッセージ非表示、
スキップ、
バックログ、
フルスクリーン切り替え、
クイックセーブ、
クイックロード、
オートモード！
[p]
はぁ、はぁ[p]
*S_MENUBTN1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MENUBTN2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_MENUBTN1
;
;------------------------------
;    S_MENUBTN2
;
*S_MENUBTN2
[iscript]
    f.curstate = 'S_MENUBTN2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]
*S_MENUBTN2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MUSIC';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_MENUBTN2
;
;------------------------------
;    S_MUSIC
;
*S_MUSIC
[iscript]
    f.curstate = 'S_MUSIC';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[iscript]
    f.lnkval='';
[endscript]
[link target="S_MUSIC___linklabel_play"] 【１】うん。再生してください [endlink] [r]
[link target="S_MUSIC___linklabel_noplay"] 【２】いや。今は再生しないで！ [endlink]
[s]
*S_MUSIC___branch
;
; BRANCH
;
[iscript]
    if ( f.lnkval == 'play' ) {  f.nextstate='S_PLAYMUSIC'; }
    else if ( f.lnkval == 'noplay' ) {  f.nextstate='S_NOPLAYMUSIC'; }
[endscript]
[jump target=&f.nextstate]
;
; LINK LABEL
;
*S_MUSIC___linklabel_play
[iscript]
    f.lnkval = 'play';
[endscript]
[jump target="S_MUSIC___branch"]
*S_MUSIC___linklabel_noplay
[iscript]
    f.lnkval = 'noplay';
[endscript]
[jump target="S_MUSIC___branch"]
;
; END OF S_MUSIC
;
;------------------------------
;    S_MUSIC_END
;
*S_MUSIC_END
[iscript]
    f.curstate = 'S_MUSIC_END';
    f.nextstate ='';
    f.yesno=0;
[endscript]
あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]
*S_MUSIC_END___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_YAMATO';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_MUSIC_END
;
;------------------------------
;    S_NOPLAYMUSIC
;
*S_NOPLAYMUSIC
[iscript]
    f.curstate = 'S_NOPLAYMUSIC';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]
*S_NOPLAYMUSIC___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MUSIC_END';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_NOPLAYMUSIC
;
;------------------------------
;    S_PLAYMUSIC
;
*S_PLAYMUSIC
[iscript]
    f.curstate = 'S_PLAYMUSIC';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]
*S_PLAYMUSIC___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_MUSIC_END';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_PLAYMUSIC
;
;------------------------------
;    S_QUESTION
;
*S_QUESTION
[iscript]
    f.curstate = 'S_QUESTION';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
もしかして、ノベルゲームの開発に興味があるの？[p]
[iscript]
    f.glkval='';
[endscript]
[glink color="blue"  x=260 y=100 width=400 size=20 target="S_QUESTION___glinklabel_YES"  text="はい。興味あります" ]
[glink color="blue"  x=260 y=170 width=400 size=20 target="S_QUESTION___glinklabel_OFCOUSE"  text="興味あります！" ]
[glink color="blue"  x=260 y=240 width=400 size=20 target="S_QUESTION___glinklabel_MAYBE"  text="どちらかと言うと興味あり" ]
[s]
*S_QUESTION___branch
;
; BRANCH
;
[iscript]
    if ( f.glkval == 'YES' ) {  f.nextstate='S_INTREST'; }
    else if ( f.glkval == 'OFCOUSE' ) {  f.nextstate='S_INTREST'; }
    else if ( f.glkval == 'MAYBE' ) {  f.nextstate='S_INTREST'; }
[endscript]
[jump target=&f.nextstate]
;
; GLINK LABEL
;
*S_QUESTION___glinklabel_YES
[iscript]
    f.glkval = 'YES';
[endscript]
[jump target="S_QUESTION___branch"]
*S_QUESTION___glinklabel_OFCOUSE
[iscript]
    f.glkval = 'OFCOUSE';
[endscript]
[jump target="S_QUESTION___branch"]
*S_QUESTION___glinklabel_MAYBE
[iscript]
    f.glkval = 'MAYBE';
[endscript]
[jump target="S_QUESTION___branch"]
;
; END OF S_QUESTION
;
;------------------------------
;    S_SCENE_1
;
*S_SCENE_1
[iscript]
    f.curstate = 'S_SCENE_1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[cm  ]
[clearfix]
[start_keyconfig]
@bg storage="room.jpg"
*S_SCENE_1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_DISP_MENU';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SCENE_1
;
;------------------------------
;    S_SERIF01
;
*S_SERIF01
[iscript]
    f.curstate = 'S_SERIF01';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
さて、ゲームが簡単に作れるというから、来てみたものの[p]
誰もいねぇじゃねぇか。[p]
……[p]
帰るか。。。[p]
*S_SERIF01___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SERIF02';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SERIF01
;
;------------------------------
;    S_SERIF02
;
*S_SERIF02
[iscript]
    f.curstate = 'S_SERIF02';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[font  size="30"   ]
#?
ちょっとまったーーーーー[p]
[resetfont  ]
*S_SERIF02___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SERIF03';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SERIF02
;
;------------------------------
;    S_SERIF03
;
*S_SERIF03
[iscript]
    f.curstate = 'S_SERIF03';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#
誰だ！？[p]
*S_SERIF03___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_AKANE';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SERIF03
;
;------------------------------
;    S_SET_CHARNAMEAREA
;    キャラクターの名前が表示される文字領域
*S_SET_CHARNAMEAREA
[iscript]
    f.curstate = 'S_SET_CHARNAMEAREA';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=410]
[chara_config ptext="chara_name_area"]
*S_SET_CHARNAMEAREA___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SETUP_AKANE';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SET_CHARNAMEAREA
;
;------------------------------
;    S_SETUP_AKANE
;    このゲームで登場するキャラクターを宣言
*S_SETUP_AKANE
[iscript]
    f.curstate = 'S_SETUP_AKANE';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
*S_SETUP_AKANE___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_AKANE_EMOTION';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SETUP_AKANE
;
;------------------------------
;    S_SETUP_MESSAGEWINDOW
;    メッセージウィンドウの設定
*S_SETUP_MESSAGEWINDOW
[iscript]
    f.curstate = 'S_SETUP_MESSAGEWINDOW';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]
*S_SETUP_MESSAGEWINDOW___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_ADJUST_CHARAREGION';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SETUP_MESSAGEWINDOW
;
;------------------------------
;    S_SETUP_YAMATO
;
*S_SETUP_YAMATO
[iscript]
    f.curstate = 'S_SETUP_YAMATO';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]
*S_SETUP_YAMATO___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SERIF01';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SETUP_YAMATO
;
;------------------------------
;    S_SHOW_AKANE
;
*S_SHOW_AKANE
[iscript]
    f.curstate = 'S_SHOW_AKANE';
    f.nextstate ='';
    f.yesno=0;
[endscript]
[chara_show  name="akane"  ]
こんにちは。[p]
私の名前はあかね。[p]
*S_SHOW_AKANE___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_QUESTION';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_AKANE
;
;------------------------------
;    S_SHOW_MSGWINDOW
;    メッセージウィンドウの表示
*S_SHOW_MSGWINDOW
[iscript]
    f.curstate = 'S_SHOW_MSGWINDOW';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@layopt layer=message0 visible=true
*S_SHOW_MSGWINDOW___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SET_CHARNAMEAREA';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_MSGWINDOW
;
;------------------------------
;    S_SHOW_YAMATO
;
*S_SHOW_YAMATO
[iscript]
    f.curstate = 'S_SHOW_YAMATO';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#あかね
ここらで、別のキャラクターに登場してもらいましょうか[l][cm]
やまとー[p]
[chara_show name="yamato"]
*S_SHOW_YAMATO___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_YAMATO1';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_YAMATO
;
;------------------------------
;    S_SHOW_YAMATO1
;
*S_SHOW_YAMATO1
[iscript]
    f.curstate = 'S_SHOW_YAMATO1';
    f.nextstate ='';
    f.yesno=0;
[endscript]
こんな風に。簡単です。[l][r]
キャラクターは何人でも登場させることができるから、試してみてね。[p]
*S_SHOW_YAMATO1___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_YAMATO2';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_YAMATO1
;
;------------------------------
;    S_SHOW_YAMATO2
;
*S_SHOW_YAMATO2
[iscript]
    f.curstate = 'S_SHOW_YAMATO2';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#yamato
おい、俺もう、帰っていいかな？[l][cm]
*S_SHOW_YAMATO2___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_SHOW_YAMATO3';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_YAMATO2
;
;------------------------------
;    S_SHOW_YAMATO3
;
*S_SHOW_YAMATO3
[iscript]
    f.curstate = 'S_SHOW_YAMATO3';
    f.nextstate ='';
    f.yesno=0;
[endscript]
#akane
あ、ごめんごめん。ありがとう[l][cm]
[chara_hide name="yamato"]
*S_SHOW_YAMATO3___branch
;
; BRANCH
;
[iscript]
    if (f.nextstate == '') {
        f.nextstate = 'S_EPILOGUE';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_SHOW_YAMATO3
;
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
        f.nextstate = 'S_FIRSTSTEP';
    }
[endscript]
[jump target=&f.nextstate]
;
; END OF S_START
;
;------------------------------
;    S_TITLE
;    タイトル表示
*S_TITLE
[iscript]
    f.curstate = 'S_TITLE';
    f.nextstate ='';
    f.yesno=0;
[endscript]
@bg storage="title.jpg"
[iscript]
    f.butval='';
[endscript]
[button x=100 y=250 graphic="title/button_start.png" target="S_TITLE___buttonlabel_START"]
[button name="role_button" x=100 y=320  graphic="title/button_load.png" enterimg="title/button_load.png" role="load"  ]
[s]
*S_TITLE___branch
;
; BRANCH
;
[iscript]
    if ( f.butval == 'START' ) {  f.nextstate='S_SCENE_1'; }
[endscript]
[jump target=&f.nextstate]
;
; BUTTON LABEL
;
*S_TITLE___buttonlabel_START
[iscript]
    f.butval = 'START'
[endscript]
[jump target="S_TITLE___branch"]
;
; END OF S_TITLE
;


; [SYN-G-GEN OUTPUT END]

