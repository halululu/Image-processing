画像は縦550画像，横800画素のディジタルカラー画像である．
判別分析法を用いて画像二値化を行う．

ORG=imread('Lenna.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

![hana0](https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png)
図1 原画像

以下のプログラムをMATLabで実行する．


ORG=imread('https://user-images.githubusercontent.com/34636430/34911525-a747cd6a-f90f-11e7-902e-50e7a29854bd.png'); % 原画像の入力

ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar;

pause;

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納

myu_T = mean(H);

max_val = 0;

max_thres = 1;

for i=1:255

C1 = H(1:i); %ヒストグラムを2つのクラスに分ける

C2 = H(i+1:256);

n1 = sum(C1); %画素数の算出

n2 = sum(C2);

myu1 = mean(C1); %平均値の算出

myu2 = mean(C2);

sigma1 = var(C1); %分散の算出

sigma2 = var(C2);

sigma_w = (n1 sigma1+n2sigma2)/(n1+n2); %クラス内分散の算出

sigma_B = (n1 (myu1-myu_T)^2+n2(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出

if max_val<sigma_B/sigma_w

max_val = sigma_B/sigma_w;

max_thres =i;

end;

end;

IMG = ORG > max_thres;

imagesc(IMG); colormap(gray); colorbar;

pause;


実行結果

![hana1](https://user-images.githubusercontent.com/34636430/35211661-c46f0e58-ff9a-11e7-98f5-48f8827f7039.jpg)
図２　白黒濃淡表示

![hana2](https://user-images.githubusercontent.com/34636430/35211662-c4ae0b4e-ff9a-11e7-8c1e-b3afdc65dbae.jpg)
図３　画像二値化
