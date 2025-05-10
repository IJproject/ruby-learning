# n回の繰り返し処理
sum = 0
5.times { |n| sum += n}
puts sum   # 10

# uptoとdowntoで、設定した初期値から上限値まで繰り返し処理
1.upto(5) { |n| puts n }   # 1, 2, 3, 4, 5
5.downto(1) { |n| puts n } # 5, 4, 3, 2, 1

# stepメソッドで、指定した間隔で繰り返し処理（上限値, ステップ幅）
1.step(10, 2) { |n| puts n } # 1, 3, 5, 7, 9

# while文で繰り返し処理（これの真偽値が裏返ったバージョンがuntil文）
array = []
while array.length < 5
  array << 1
end
# array << 1 while array.length < 5 とも書ける
puts array   # [1, 1, 1, 1, 1]

# for文で展開する
# eachとの違いは、for文内で定義された変数がfor文の外でも呼び出せる
numbers = [1, 2, 3, 4, 5]
for number in numbers 
  sum += number
end
puts number # 5
puts sum    # 15

dice = [1, 2, 3, 4, 5, 6]
loop do
  n = dice.sample  # ランダムに抽出
  break if n == 6
end

# Enumerableモジュールは重要(ArrayクラスやRangeオブジェクトなどにIncludeされている)
even_numbers = 1.upto(6).select { |n| n.even? }
puts even_numbers  # [2, 4, 6]