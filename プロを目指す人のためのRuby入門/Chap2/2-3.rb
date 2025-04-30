# ダブルクォーテーションを使用する必要がなければ、シングルクォーテーションを使用するのがいいかな？
name = 'Alice'
puts "My name is #{name}."

# エスケープ処理をすることで、ダブルクォーテーションを文字列に含めることができる
puts "#{name} said, \"Hello!\""

# 文字列の比較には大文字と小文字は区別される（文字のバイト数で比較されるため）
puts 'abc' == 'abc' # true
puts 'abc' == 'ABC' # false
puts 'abc' != 'ABC' # true
puts "abc".bytes    # [97, 98, 99]


