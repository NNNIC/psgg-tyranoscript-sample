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

It is a StateGo sample  using tyranoscript demo.

tyranoscriptのデモを利用したサンプルです。

### ファイル説明  / File Description

|ファイル / File | 説明 / Description |
|---|---|
| copykstotyrano.bat | 生成ファイルをTyranoscript用シナリオフォルダへコピー / Copy the created file to Tyranoscript scenario folder. |
| open_senaiofolder.bat | Tyranonoscript用シナリオフォルダを開く /  Open Tyranoscript scenario folder. |
| tyranoroder.bat | TyranoRiderを実行  |



### Sate machine

![](https://raw.githubusercontent.com/NNNIC/psgg-tyranoscript-sample/master/wiki/gosub.png)

### Modify first.ks at 'data/scenario' folder.

<pre>
@jump storage="testControl.ks" 
</pre>

### Execute

![](https://github.com/NNNIC/psgg-tyranoscript-sample/blob/master/wiki/gosub.gif)

## Note

2019.11.3 Sample updated for 'Gosub' and 'Loop' features.


