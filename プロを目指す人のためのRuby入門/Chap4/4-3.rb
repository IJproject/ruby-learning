numbers = [1, 2, 3, 4, 5]

sum = 0
# eachメソッドを使って配列の要素を順に取り出す
numbers.each do |number|
  sum += number
end
# ブロック記法を用いて、do-end構文を{}で表現できる（1行で書ける際にはこちらの方が見やすいかも）
# numbers.each { |number| sum += number}
puts sum  # 15

# 戻り値がtrueになれば、配列から該当の要素を削除する
numbers.delete_if do |number|
  number.odd?
end
puts numbers  # [2, 4]