class User
  def hello
    puts "Hello, world!"
  end

  def target
    puts "target"
  end

  # エイリアスを定義する（greetでhelloメソッドを呼び出せるように設定）
  alias greet hello

  # メソッドの削除
  undef target

  # classの入れ子
  class BloodType
    attr_accessor :type
    @type = 'A'
  end

end

user = User.new
blood_type = User::BloodType.new

puts user.greet        # Hello, world!
puts blood_type.type   # A

# 等価演算子
# equal?：object_idが同じ場合に等価と判断
# eql?：オブジェクトがハッシュのキーとして等価か判断（1と1.0は非等価）
# ==：オブジェクトの内容が同じかどうかのチェック（1と1.0は等価）
# ===：CASE式などの特定のケースで使用されるらしい

# Rubyのクラスはオープンクラス（定義済みのクラスの内容に変更を加えることができる＝モンキーパッチ）
# 特異メソッド（シングルトンメソッド）：特定のオブジェクトに対して定義できるメソッド
# ダックタイピング