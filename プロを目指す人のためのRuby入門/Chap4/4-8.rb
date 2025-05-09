numbers = [1, 2, 3, 4, 5, 6]
dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

# インデックス付きのループ
# eachやmap、selectはEnumeratorオブジェクトを返し、そこにwith_indexメソッドが定義されている
numbers.each.with_index { |number, index| puts "#{index}: #{number}" }     # with_indexメソッドはeach以外にもmapやselectでも使える 
numbers.each.with_index(3) { |number, index| puts "#{index}: #{number}" }  # インデックスのスタートを指定
numbers.each_with_index { |number, index| puts "#{index}: #{number}" }     # eachだけ特殊な構文が用意されているが、、、

# ブロックパラメータに配列を渡す
# あくまで第一引数は展開した値、第二引数はインデックス
dimensions.each.with_index { |dimension, index| puts "#{index}: #{dimension[0]} x #{dimension[1]}" }
dimensions.each.with_index { |(height, width), index| puts "#{index}: #{height} x #{width}" }
dimensions.each.with_index { puts "#{_2}: #{_1[0]} x #{_1[1]}" }   # _1や_2は引数の順番を示しており、ブロックパラメータとして定義しなくても使える（番号指定パラメータ）

# do-endと{}の違いが現れるパターン
# 前提として、{}は結合度が強く、メソッドに対してしか定義できない
# 例）a.delete(100) {'OK'}
# 例）a.delete 100 {'OK'}   # ()を省略すると、数値に対して{}が適用されているようになり、エラーとなる（そもそも()を省略するべきではないと思うが）

# メソッドチェーンもできるよ

# ファイル操作（明示的にCloseする必要はない）
File.open('test.txt', 'w') do |file|
  file.puts 'Hello, world!'
  file.puts 'Goodbye, world!'
end