class User
  attr_accessor :name         # ゲッターメソッドとセッターメソッドを自動生成する（アクセサメソッド）
  attr_reader :age            # ゲッターメソッドのみを生成する

  def initialize(name, age)   # 初期化時に実行されるプライベートメソッド
    @name = name              # インスタンス変数はクラス内で共有される（外部からは参照できない）
    @age = age               
  end

  def hello                   # インスタンスメソッドの定義
    puts "Hello, #{@name}!"   # インスタンス変数は定義されていなくてもエラーは出ない
  end

  # def name=(value)            # セッターメソッドの定義（メソッド名と引数の間に「=」を入れる）
  #   @name = value             # インスタンス変数の値を変更する
  # end                         # ただの更新であれば、attr_accessorを使って同様のことができる
end

# オブジェクトの作成
user = User.new("Alice", 25)
user.hello   # Hello, Alice!

# 次回はP.246のクラスメソッドの定義から