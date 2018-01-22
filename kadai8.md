画像は縦550画像，横800画素のディジタルカラー画像である．
 二値化された画像の連結成分にラベルをつける．

下記のプログラムを用いて画像を二値化し，画像の連結成分にラベルをつける．

ORG = imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示
pause;

実行結果

![hana1](https://user-images.githubusercontent.com/34636430/35214703-6200385e-ffa5-11e7-8b9c-daf2d75bed65.jpg)
図１　白黒濃淡画像

![hana2](https://user-images.githubusercontent.com/34636430/35214704-6231ab28-ffa5-11e7-8e93-a93e3a209216.jpg)
図２　閾値１２８で二値化

![hana3](https://user-images.githubusercontent.com/34636430/35214705-628a1ede-ffa5-11e7-82fd-fb3d2afd7382.jpg)
図３　連結成分にラベルづけ
