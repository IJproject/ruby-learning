# nilとfalse以外の値はtrueとみなされる
# つまり、ないことを表現する方法として0を渡す的なことはできないのか、、nilを返すようなメソッドを生成するようにしないとね
puts !!0       # true
puts !!1       # true
puts !!"true"  # true
puts !!""      # true
puts !!nil     # false
puts !!false   # false

# 「&&」の方が「||」よりも優先度が高い
t1 = true
t2 = false
f1 = false
f2 = true
puts t1 && t2 || f1 && f2 # true

# if文により条件分岐を実装できる
# if文は、戻り値を返す（戻り値が不明な場合、nilを返す）
country = 'Japan'
greeting = 
  if country == 'Japan'
    'こんにちは'
  elsif country == 'USA'
    'Hello'
  else
    'お前は誰だ'
  end
  # 以下のように書くこともできる
  # if country == 'Japan' then 'こんにちは'
  # elsif country == 'USA' then 'Hello'
  # else 'お前は誰だ'
puts greeting # こんにちは

# 後置ifを使うこともできる（Pythonみたいだね）
_japanese_greeting = 'こんにちは' if country == 'Japan'