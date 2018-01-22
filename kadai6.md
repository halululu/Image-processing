画像は縦550画像，横800画素のディジタルカラー画像である．
下記のプログラムを参考にし画像の二値化を行う．

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)  
図1 原画像

サンプルプログラム

clear; % 変数のオールクリア
ORG=imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause; % 一時停止


IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

実行結果は次のようになった

![hana1](https://user-images.githubusercontent.com/34636430/35213076-c2d07df2-ff9f-11e7-9892-fc4ac605a1db.jpg)  
図２　グレースケール画像

![hana2](https://user-images.githubusercontent.com/34636430/35213077-c303ef20-ff9f-11e7-9665-11234e280e91.jpg)  
図３　128による画像の二値化

![hana4](https://user-images.githubusercontent.com/34636430/35213079-c364f748-ff9f-11e7-8ab4-c8798eeaf6e9.jpg)  
図４　ディザ法による二値化

ディザ法では点の集合で画像を表現しているため128による二値化よりも原画像に近い白黒画像が表示された
