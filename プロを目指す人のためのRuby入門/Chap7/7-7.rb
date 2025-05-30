class User 
  attr_accessor :name

  def hello
    puts "Hello, #{self.custom_name}!"   
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected
  # 外部から呼び出すことはできないが、同じクラスやサブクラスからはレシーバ付きで呼び出すことができる

  def weight
    @weight
  end

  private
  # プライベート指定することで、クラス外部から呼び出せない
  # ・子クラスに継承される
  # ・オーバーライドが可能で、可視性も同様に変更可能
  # ・クラスメソッドをprivateにすることはできなくもないがするか？（private_class_methodとして登録するなどの方法がある）

  def custom_name
    "Super #{@name}"
  end

  上記以外にもprivateメソッドを定義する方法がある（protectedについても同様）
  # private :custom_name     この行より下はpublicメソッドのまま
  # private def custom_name  直接プライベート関数として定義する
  # private attr_accessor    アトリビュートをprivateにする
end

