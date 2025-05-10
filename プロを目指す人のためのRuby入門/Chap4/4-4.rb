numbers = [1, 2, 3, 4, 5, 6]

# map/collect：配列内の全要素を一定のルールで書き換える
doubled_numbers = numbers.map { |n| n * 2 }
puts doubled_numbers  # [2, 4, 6, 8, 10, 12]

# select/find_all/reject：条件に合う要素を抽出する
odd_numbers = numbers.select { |n| n.odd? }
puts odd_numbers   # [1, 3, 5]
even_numbers = numbers.reject { |n| n.odd? }
puts even_numbers  # [2, 4, 6]

# sum：特定のルールで合計する
# 値を変更して操作することができるため汎用性が高い
sum_numbers = numbers.sum
doubled_sum_numbers = numbers.sum { |n| n * 2 }
stringed_sum_numbers = numbers.sum('') { |n| n.to_s }
puts sum_numbers           # 21
puts doubled_sum_numbers   # 42
puts stringed_sum_numbers  # "123456"

# join：配列内の要素を結合する
# 文字列と数字がごちゃ混ぜの場合、全て文字列に変換される
joined_numbers = numbers.join('-')
puts joined_numbers  # "1-2-3-4-5-6"

# シンボルを使って簡潔に書くことができるみたいなんだけど、余裕があればやろうかな