hello = "hello, World!" # 文字列を作成

# クラス名を確認することができる
puts hello.class  # String 

# %記法を用いることで、エスケープ処理が不要な文字列を作成することができる
puts %q!Don't stop.! # Don't stop.
puts %Q!#{hello}!    # hello, World!

# 長い文字列を作成する場合、ヒアドキュメントを用いることができる(コードやSQL、HTMLなどの描画に使える？)
puts <<~TEXT
  Welcome to Ruby!
  #{hello}
TEXT
# Welcome to Ruby!
# hello, World!

# joinメソッドを使用して、配列要素の結合をすることができる
[1, 2, 3].join(',')  # "1,2,3"

# *演算子を使用して、配列の要素を展開することができる
puts "Hello," * 5  # Hello,Hello,Hello,Hello,Hello,