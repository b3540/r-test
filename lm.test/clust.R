#�t�@�C���̓ǂݍ���
dat <- read.csv("clust.csv",header=T,row.names=1)

#���͗p�f�[�^�t���[���ɑ΂��鐳�K���̎��{
data.scale <- scale(dat)�@#���K���F�e�ϗʂ𕽋ς�0�A���U��1�ƂȂ�悤�ϊ�

#�f�[�^�Ԃ̋������v�Z
data.dist <- dist(data.scale, method="euclidean")

#�������ꂽ�f�[�^�̋����s����m�F
data.dist

#�E�H�[�h�@�ɂ��K�w�I�N���X�^���͂����{
ward.hclust <- hclust(data.dist, method="ward.D2")

#�E�H�[�h�@�ɂ��K�w�I�N���X�^���͂̌��ʂ��f���h���O�����ŕ\��
plot(ward.hclust, hang=-1)
# ����hang=-1�̓��x���̍����𑵂���B

#2�`9�̃N���X�^�ɕ���
ward.cutree <- cutree(ward.hclust, k=2:9)

#cutree�̕������ʂ�\��
ward.cutree




