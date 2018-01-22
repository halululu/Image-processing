画像は縦550画像，横800画素のディジタルカラー画像である．
２階調，４階調，８階調の画像を生成する.

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)
図1 原画像

元画像をグレースケールにした画像は次のようになった　　
![hana0](https://user-images.githubusercontent.com/34636430/35209977-c02bad76-ff93-11e7-8ca5-1330a35f2d82.jpg)　　
図２　グレースケール表示　

2階調で表示した画像は次のようになった．
![hana1](https://user-images.githubusercontent.com/34636430/35209978-c0596090-ff93-11e7-9d80-2b1004b3732a.jpg)
図３　2階調表示

４階調で表示した画像は次のようになった．
![hana2](https://user-images.githubusercontent.com/34636430/35209979-c0887484-ff93-11e7-9bdd-9fe5de280172.jpg)
図４　４階調表示

８階調で表示した画像は次のようになった．
![hana3](https://user-images.githubusercontent.com/34636430/35209980-c0b6657e-ff93-11e7-9717-57392aee58a4.jpg)
図５　８階調表示

グレースケールの画像を２階調，４階調，８階調で表示することで擬似輪郭が現れた．
