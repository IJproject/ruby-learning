puts [].class  # Array

test_array = [1, 2, 3]
test_array[0]   # 1
test_array[10]  # nil
puts test_array.length     # 3 (.sizeメソッドでも同様)

test_array[4] = 5 
puts test_array  # [1, 2, 3, nil, 5]

# 配列の最後に要素を追加
array = []
array << 1
array << 2
array << 3
puts array  # [1, 2]

# 配列内の要素を削除（インデックスを指定）
array.delete_at(1)  # インデックス番号1の要素を削除
# 以下の構文のように値を指定して削除することもできる
# array.delete(2)   # 値を指定して削除
puts array          # [1, 3]

# 多重代入（これ結構便利だね）
a, b, c = array  # [1, 3]をそれぞれに分割代入
puts a        # 1
puts b        # 3
puts c        # nil