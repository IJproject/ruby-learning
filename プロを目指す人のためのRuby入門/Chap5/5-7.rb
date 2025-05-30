# 次回はここから

# シンボルで使用できる記号
# 「文字」、「_」、「$」、「@」
#　使用できない記号
# 「-」「先頭数字」

# シンボルと文字列
string = "cherry"
symbol = :cherry

puts symbol == string         # false
puts symbol.to_s == string    # true
puts string.to_sym == symbol  # true

# &.：ぼっち演算子（体操座りしているように見えるよね？）
# 変数がnilの場合は、nilを返す
puts string&.upcase()   # CHERRY
puts nil&.upcase()      # nil

# ||=：nilガード
limit = nil
limit ||= 100  # 意味合いとしては、「limit || limit = 10」と同じ
limit ||= 500
puts limit     # 100

# 真偽値の型変換
puts !!nil      # false
puts !!"test"   # true