## RDocを使ってドキュメントを生成する（JSDoc的に使用できるはずなんだけどな）
# @param [String] text-名前
# @return [String] "Test"
def test(text)
  text
end

# 変数名は基本的にスネークケース
_test_test_test = "TestTestTest"

# 多重代入が可能（見通し悪くなるので、あまり使うべきではない）
# 先頭に「_」をつけると、未使用変数として定義することができる
_bob, _ = "Bob, Andy".split(",")

# 同じ参照を渡すように定義
# 片方を変更すると、もう片方も変更される
_a = _b = 100