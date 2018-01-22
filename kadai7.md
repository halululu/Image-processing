画像は縦550画像，横800画素のディジタルカラー画像である．
下記のプログラムを用いて画素のダイナミックレンジを０から２５５にする．


ORG = imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  
imhist(ORG); % 濃度ヒストグラムを生成、表示  
pause;  
ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  
pause;  
ORG = uint8(ORG);  
imhist(ORG); % 濃度ヒストグラムを生成、表示  　　

実行結果

![hana1](https://user-images.githubusercontent.com/34636430/35214349-38a04e3c-ffa4-11e7-995c-65fe1386b66b.jpg)  
図１　白黒濃淡画像

![hana2](https://user-images.githubusercontent.com/34636430/35214350-38ced7fc-ffa4-11e7-9f3c-367f417d22a9.jpg)  
図２　白黒濃淡画像のヒストグラム

![hana3](https://user-images.githubusercontent.com/34636430/35214351-38fddd22-ffa4-11e7-9dfa-3fbaac501de5.jpg)  
図３　画素のダイナミックレンジを０から255に変換後

![hana4](https://user-images.githubusercontent.com/34636430/35214352-392ddeaa-ffa4-11e7-849a-502bc7ef9254.jpg)  
図４　変換後のヒストグラム


ORG = uint8(ORG);  
この行では原画像の白黒濃淡画像を８ビット符号なし整数へ変換している．  
８ビット表示では２５６階調表現が可能である．  
