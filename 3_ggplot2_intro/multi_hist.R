library(ggplot2)
library(plyr) # revalue()関数の読み込み

data <- read.csv(file("r-test/3_ggplot2_intro/office.csv",encoding='Shift_JIS'))
data

# 複数のヒストグラムを別々に描画する
ggplot(data, aes(x = office)) +
  geom_histogram(binwidth = 150, fill = "white", color = "black") +
  facet_grid(division ~ .)

# divisionをファクタに変換する
data$division <- factor(data$division)
levels(data$division)

# ファクターに名称を付ける
data$division <- revalue(data$division, c("0"="Wholesale", "1"="retail"))

# 複数のヒストグラムを重ねて描画する
ggplot(data, aes(x = office, fill = division)) +
  geom_histogram(binwidth = 150, position = "identity", alpha = 0.4)
