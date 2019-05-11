# psgg-tyranoscript-sample

StateGo ティラノスクリプト サンプル / StateGo tyranoscript sample

## 環境 / Environment

Windows 7/8/10    
[StateGo](https://statego.programanic.com/index-e.html)   
Tyranoscript/Tyranorider   
　動作確認環 / Confirmed execution environment   
　　Tyranoscript Ver475  
　　TyranoRider  Ver220  


### 環境変数設定 / Setting environment variables

| 変数 / Variablel | 説明 / Description | i.e. |
|:---|:---|:---|
| TYRANOSCRIPT | ティラノスクリプトのシナリオフォルダ指定 / Set a Tyranoscript senario folder | c:\ts\tyranoscript_v475\data\scenario |
| TYRANORIDEREXE | ティラノスクリプトデバッガ(ティラノライダ)指定 / Set the path of TyranoRider(Tyranoscript debugger) |  c:\ts\TyranoRider_win_v220\tyranorider.exe | 

## Sample

It is a sample converted from the demo in tyranoscript installer to StateGo.

tyranoscriptの初期状態に付属するデモをStateGoで作りなおりました。


### Sate machine

![](https://raw.githubusercontent.com/NNNIC/psgg-tyranoscript-sample/master/wiki/chart.png)

### Modify first.ks at 'data/scenario' folder.

<pre>
@jump storage="testControl.ks" 
</pre>

### Execute

![](https://github.com/NNNIC/psgg-tyranoscript-sample/blob/master/wiki/demo.gif)



