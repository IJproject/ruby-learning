numbers = [1, 2, 3, 4, 5, 6]

# インデックス番号をもとに要素を取得する
puts numbers[1, 3]  # [2, 3, 4] （インデックス１から３つ分）
puts numbers.values_at(1, 3) # [2, 4] （インデックス１と３）

# 先頭や末尾の要素を取得する
puts numbers[-1]     # 6
puts numbers[-3, 2]  # [4, 5]
puts numbers.first   # 1
puts numbers.last    # 6
puts numbers.last(3) # [4, 5, 6]

# 配列の代入と削除
a = []
a.push(1)  
puts a            # [1]
a.push(2, 3, 2) 
puts a            # [1, 2, 3, 2]
a.delete(2)      
puts a            # [1, 3]

# 配列の連結
b = [1],
c = [2, 3]
puts b + c        # [1, 2, 3]（非破壊的）
puts b.concat(c)  # [1, 2, 3] (bの内容が上書きされる)

# 配列の演算
d = [1, 2, 3]
e = [2, 3, 4]
puts d & e        # [2, 3]（共通部分）
puts d | e        # [1, 2, 3, 4]（和集合）
puts d - e        # [1]（差集合）

# *（可変長設定）
# ・多重代入時に変数の頭につけると、「残り全部」というニュアンスになる
# ・メソッドの引数に使うと、可変長引数を受け取ることができる（rest引数）

# splat演算子
# 配列のコピー機能としても使える
f = [1]
g = [2, 3]
f.push(*g)  # splat演算子で展開してpush
puts f      # [1, 2, 3]

# 配列の等価判定
puts [1, 2] == [1, 2] # true
puts [1, 2] == [1, 2, 3] # false

# %記法を用いて配列を定義する（使い所あるのか？）

# 配列にデフォルト値を設定する
puts Array.new                   # []
puts Array.new(3)                # [nil, nil, nil]
# puts Array.new(3, 0)           # [0, 0, 0]（全要素が同じ参照を持っている）
puts Array.new(3) { 0 }          # [0, 0, 0] 
puts Array.new(3) { |i| i * 2 }  # [0, 2, 4]

# ミュータブルとイミュータブル
# ミュータブルなオブジェクトは、生成後にその内部の値が変更できるオブジェクトのこと（更新しても参照が残る）
# イミュータブルなオブジェクトは、生成後にその内部の値が変更できないオブジェクトのこと（更新する場合、新しいオブジェクトを生成）
# 代入時に参照が渡されるのか、値が渡されるのかはここで決まる

# 配列のような文字列操作
ruby = 'Ruby'
puts ruby[0]              # R
puts ruby[1, 3]           # uby
puts ruby << ' is great!' # Ruby is great!
