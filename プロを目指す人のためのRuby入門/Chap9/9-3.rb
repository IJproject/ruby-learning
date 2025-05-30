# 意図的に例外を発生させる
def raise_exception
  raise "意図的な例外です"                    # テキストはエラーメッセージとして扱われる
  raise RuntimeError, "意図的な例外です"      # 例外クラスの指定もできる
  raise ArgumentError.new("意図的な例外です") # 引数を指定して例外を発生させる
end