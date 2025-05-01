# 引数にデフォルト値を設定できる
def add(a = 1,b = 2)
  a + b
end
puts add   # 3

# 真偽値を返すメソッド名は「?」で終わらせることが慣習
# 例）var.is_Empty → var.empty?

# 破壊的メソッドであることを示すために、「!」を付ける
# ただし、同じ命名のメソッドが存在する場合にのみ使うイメージ

# メソッドを1行で書くエンドレスメソッド
def positive?(num) = num > 0 ? "positive" : "negative or zero"