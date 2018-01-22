画像は縦550画像，横800画素のディジタルカラー画像である．
画素の濃度ヒストグラムを生成する

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)
図1 原画像

原画像を白黒濃淡画像に変換する

![hana1](https://user-images.githubusercontent.com/34636430/35211661-c46f0e58-ff9a-11e7-98f5-48f8827f7039.jpg)
図２　白黒濃淡画像

図２からヒストグラムを生成する

![hana2](https://user-images.githubusercontent.com/34636430/35211662-c4ae0b4e-ff9a-11e7-8c1e-b3afdc65dbae.jpg)
図３　ヒストグラム

ヒストグラムから図２の画像は輝度値が150から220の間で高い
