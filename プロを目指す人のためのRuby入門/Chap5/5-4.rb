# シンボルをキーとして活用する方が処理速度が上がる
currencies = {
  'USD' => "アメリカドル",
  :EUR => "ユーロ",
  JPY: "日本円",    # キーがシンボルの場合は、省略した書き方を使用できる
}
puts currencies['USD']   # アメリカドル
puts currencies['EUR']   # nil
puts currencies['JPY']   # nil
puts currencies[:USD]    # nil
puts currencies[:EUR]    # ユーロ
puts currencies[:JPY]    # 日本円

# キーワード引数
# ※ 引数自体はシンボルに見えてただの引数なので、関数定義内ではシンボルとして使用できない
# ※ 関数呼び出し時にはシンボルではある
def buy_burger(menu, potatoes: true, drink:)  # デフォルト値を設定しない場合は、必須の引数になる
  puts "#{menu}を購入しました"
  puts "ポテトは#{potatoes ? 'あり' : 'なし'}です"
  puts "ドリンクは#{drink}です"
end
buy_burger("ハンバーガー", drink: "コーラ")                   # ポテトはデフォルト値を使用する
buy_burger("ハンバーガー", potatoes: false, drink: "コーラ")  # ポテトはfalseを指定する
# 以下のようにキーワード引数を渡すこともできる
# params = { potatoes: false, drink: "コーラ" } 
# buy_burger("ハンバーガー", **params) # キーワード引数を展開する 

# これ以外にも、ステータスを表現する文字列としての代用もできるなぁと思った