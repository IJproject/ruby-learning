# ハッシュはHashクラスのオブジェクト
puts {}.class  # Hash

currencies = {
  "USD" => "アメリカドル",
  "EUR" => "ユーロ",
  "JPY" => "日本円",
}
currencies["CNY"] = "人民元"  # キーが存在しない場合は追加される
currencies["USD"] = "USドル"  # キーが存在する場合は上書きされる
puts currencies["USD"]   # USドル
puts currencies["None"]  # nil

# 繰り返し処理
currencies.each do |key, value|   # ブロック引数を一つでも受け取ることが可能で、その場合は配列形式になる
  puts "#{key} => #{value}"
end

# 比較演算子に対する作用は、配列の場合と同じ

# ハッシュから指定したキーを削除
currencies.delete("CNY")  
currencies.delete("None") { |key| puts "#{key}は存在しません" }  # 存在しないキーを削除しようとした場合、戻り値を設定できる

# ハッシュのサイズ
puts currencies.size  # 3