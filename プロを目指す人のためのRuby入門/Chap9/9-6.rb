# begin-end構文には返り値もあるよ
begin

rescue => e
  # 例外が発生した場合の処理
  puts "#{e.class}: #{e.message}"
else
  # 例外が発生しなかった場合の処理
ensure
  # 例外の有無に関わらず実行される処理
end

# rescue修飾子を用いて、例外処理を簡潔に書くことができる
1 / 0 rescue puts "0で割ることはできません"

# ルートスコープにある場合、beginとendは省略することができる
# rescueした上で、異常終了させたい場合、rescue内でraiseを使えばOK