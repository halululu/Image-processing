ORG = imread('C:\Users\Ryo\Downloads\hana.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'prewitt'); % �G�b�W���o�i�v���E�B�b�g�@�j
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'sobel'); % �G�b�W���o�i�\�x���@�j
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'canny'); % �G�b�W���o�i�L���j�[�@�j
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
pause; % �ꎞ��~