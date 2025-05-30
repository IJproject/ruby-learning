# スーバークラス（親クラス）：汎化クラス
# サブクラス（子クラス）：特化クラス

# 明示的に継承をしていないクラスは、Objectクラスを継承している
class User
end
puts User.superclass      # Object

# インスタンスのクラスを確認
user = User.new
puts user.class                  # User
puts user.is_a?(User)            # true
puts user.is_a?(Object)          # true
puts user.instance_of?(User)     # true
puts user.instance_of?(Object)   # false

# スーパークラス
class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def info
    puts "#{@name} (#{@price}円)"
  end
end

# クラスの継承（サブクラス）
class Book < Product
  attr_accessor :page

  def initialize(name, price)
    super(name, price)          # スーパークラスのinitializeメソッドを呼び出す
    # super                     # これでもOK
  end
  # 下記のように書くこともできる（このメソッド内で明示的に定義する必要がない場合）
  # def initialize(*, **)
  #   super
  # end

  def info
    super                       # スーパークラスのinfoメソッドを呼び出す
    puts "これはサブクラス側のテキストです"
  end
end