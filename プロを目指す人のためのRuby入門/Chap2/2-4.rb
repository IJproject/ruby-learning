# 負の数をテクく定義できる
n = 1
puts -n       # -1

# 有効数字は考えようね
puts 1 / 2    # 0
puts 1.0 / 2  # 0.5 
puts n.to_f   # 1.0

# 累乗
puts 2 ** 3   # 8

# 値の増減（「++」や「--」の構文は無効）
m = 1
puts m += 1   # 2

# 丸め誤差の回避
# Rationalクラスを使用する or BigDecimalクラスを使用する
a = 0.1
b = 3.0
puts a * b                                         # 0.30000000000000004
puts a.rationalize * b.rationalize                 # 3/10
puts BigDecimal(a.to_s) * BigDecimal(b.to_s).to_f  # 0.3 （文字列として渡さないといけない）