ORG = imread('C:\Users\Ryo\Downloads\hana.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
pause;
ORG = double(ORG);
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
ORG = uint8(ORG); % ���̍s�ɂ��čl�@����
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\���@�@
pause;
ORG = uint16(ORG);
imhist(ORG);
pause;