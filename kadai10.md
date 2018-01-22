% 画像のエッジ抽出  
原画像は画像は縦550画像，横800画素のディジタルカラー画像である．  
下記のプログラムを用いて画像のエッジ抽出を行う.  

ORG = imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  
pause; % 一時停止  

実行結果  

![hana1](https://user-images.githubusercontent.com/34636430/35219366-ade5e98e-ffb5-11e7-93bb-1ce7f74803d6.jpg)  
図１　グレーカラー表示

![hana2](https://user-images.githubusercontent.com/34636430/35219368-ae15dffe-ffb5-11e7-8e97-5f6b13652be6.jpg)  
図２　プレウィット法

![hana3](https://user-images.githubusercontent.com/34636430/35219371-ae455252-ffb5-11e7-9bbb-7ed053d154c0.jpg)  
図３　ソベル法

![hana4](https://user-images.githubusercontent.com/34636430/35219373-ae72ec9e-ffb5-11e7-9514-3f96b66c3d93.jpg)  
図４　キャニー法
