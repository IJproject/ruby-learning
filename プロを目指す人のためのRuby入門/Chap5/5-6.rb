currencies = {
  USD: 'アメリカドル',
  EUR: 'ユーロ',
  JPY: '日本円',
}

# キーバリューの操作
puts currencies.keys    # [:USD, :EUR, :JPY]
puts currencies.values  # ["アメリカドル", "ユーロ", "日本円"]
puts currencies.has_key?(:JPY)  # true
puts currencies.has_key?(:CNY)  # false

# ハッシュの展開
_more_currencies = {
  **currencies,   # ハッシュを展開して追加
  CNY: '中国元',
}
# 以下のようにmergeメソッドでも同様のことが可能
# _more_currencies = {CNY: '中国元'}.merge(currencies)

# 擬似キーワード引数は無視

# 任意のハッシュを受け取る
def print_currencies(**currencies)
  currencies.each do |key, value|
    puts "#{key}: #{value}"
  end
end
print_currencies(**currencies, CNY: '中国元', GBP: 'ポンド') 

# 配列やハッシュを関数にそのまま渡す場合、最後の引数でない場合を除いて、引数を適切に初期化しないといけない

# 配列からハッシュ、ハッシュから配列
puts currencies.to_a   # [[:USD, "アメリカドル"], [:EUR, "ユーロ"], [:JPY, "日本円"]]
puts currencies.to_h   # {:USD=>"アメリカドル", :EUR=>"ユーロ", :JPY=>"日本円"}

# ハッシュのデフォルト値（ブロックで定義することで、未知引数の値が同じ参照を持たないようにする）
new_currencies = Hash.new { 'default value' }
puts new_currencies[:UNKNOWN]
# 以下のように、未知のキーを指定されたらデータが登録されるようにすることもできる
_new_currencies = Hash.new { |hash, key| hash[key] = 'default value' }

# 引数をまとめて受け取る、非キーワード引数(*)とキーワード引数(**)
# 例）def print_currencies(*currencies, **options)
# 以下のようにまとめて受け取ることもできる
# def print_currencies(...)
