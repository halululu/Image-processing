%メディアンフィルタと先鋭化  
画像は縦550画像，横800画素のディジタルカラー画像である．  
メディアンフィルターを適用し，ノイズ除去する.  
以下のプログラムを用いてノイズを除去する.  


ORG = imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  
pause;  


実行結果  

![hana1](https://user-images.githubusercontent.com/34636430/35215036-6a96e516-ffa6-11e7-9088-e57421a4983f.jpg)  
図１　白黒濃淡表示  

![hana2](https://user-images.githubusercontent.com/34636430/35215037-6ac4682e-ffa6-11e7-8c84-ceee35df5007.jpg)  
図２　ノイズ添付

![hana3](https://user-images.githubusercontent.com/34636430/35215038-6af819a8-ffa6-11e7-84f9-f0cee1b302a7.jpg)  
図３　平滑フィルタ適用

![hana4](https://user-images.githubusercontent.com/34636430/35215039-6b2706d2-ffa6-11e7-93ba-23672b679759.jpg)  
図４　メディアンフィルタ適用  

![hana5](https://user-images.githubusercontent.com/34636430/35215040-6b540560-ffa6-11e7-8de8-626299267b6e.jpg)  
図５　設計したフィルタの適用  
