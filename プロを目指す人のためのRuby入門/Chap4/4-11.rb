numbers = [1, 2, 3, 4, 5, 6]

# 繰り返し処理の脱出
# breakを使うことで繰り返し処理から脱出できる（入れ子の場合、一番内側の繰り返し処理を脱出する）
# breakの後に値を指定すると、その値が返される
numbers.each do |number|
  break if number == 4
end

# catch-throw構文を使用することで、同一タグの付いた入れ子の繰り返し処理から脱出できる
catch :exit do
  numbers.each do |number|
    throw :exit, false if number == 4
  end
end

# nextを使うことで、次の繰り返し処理にスキップできる（入れ子の場合、一番内側の繰り返し処理をスキップする）

# redoを使うことで、現在の繰り返し処理を再実行できる（入れ子の場合、一番内側の繰り返し処理を再実行する）