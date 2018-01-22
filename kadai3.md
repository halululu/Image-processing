画像は縦550画像，横800画素のディジタルカラー画像である．
閾値を4パターン設定し,閾値処理した画像を表示する．

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)
図1 原画像

原画像を白黒濃淡表示すると図２のようになる
![hana1](https://user-images.githubusercontent.com/34636430/35210814-0bf91ab0-ff97-11e7-951c-12669e26b8c3.jpg)
図２　白黒濃淡画像

輝度値が64以上の画素を1，その他を0に変換したとき図３のようになる

![hana2](https://user-images.githubusercontent.com/34636430/35210815-0d1b935a-ff97-11e7-86f1-7cdb0abfbba7.jpg)
図３　輝度値が64以上


輝度値が96以上の画素を1，その他を0に変換したとき図４のようになる

![hana3](https://user-images.githubusercontent.com/34636430/35210816-0dee3846-ff97-11e7-83df-1a59be6fb52d.jpg)
図４　輝度値が96以上


輝度値が128以上の画素を1，その他を0に変換したとき図５のようになる

![hana4](https://user-images.githubusercontent.com/34636430/35210817-0f2ea330-ff97-11e7-9bd2-dd7f7d3a2678.jpg)
図５　輝度値が128以上


輝度値が192以上の画素を1，その他を0に変換したとき図6のようになる

![hana5](https://user-images.githubusercontent.com/34636430/35210821-106c646c-ff97-11e7-984d-6243a748da96.jpg)
図　輝度値が192以上
