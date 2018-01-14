画像は縦550画像，横800画素のディジタルカラー画像である．

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．
![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)

図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．
![hana1](https://user-images.githubusercontent.com/34636430/34911526-b0237cd6-f90f-11e7-872d-0865d948d609.png)

図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![hana2](https://user-images.githubusercontent.com/34636430/34911528-b1f02ef6-f90f-11e7-92e2-2ce5f576f673.png)

図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～６に示す．

![hana3](https://user-images.githubusercontent.com/34636430/34911529-b4197f98-f90f-11e7-9e2b-e14e8c08e779.png)

図4 1/8サンプリング

![hana4](https://user-images.githubusercontent.com/34636430/34911531-b86f86c8-f90f-11e7-9d6c-816de9370dca.png)

図5 1/16サンプリング

![hana5](https://user-images.githubusercontent.com/34636430/34911533-bb0f3f22-f90f-11e7-9d9d-8024de43c68c.png)

図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
