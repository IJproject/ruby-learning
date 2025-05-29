# 例外は例外クラス（Exceptionクラス）のインスタンス
# 入れ子になっている場合、入れ子を辿ってrescue節まで戻る

retry_count = 0
begin
  puts "処理スタート"
rescue NoMethodError => e             # 特定の例外クラスの場合のみに対する例外処理を入れることができる
  puts "NoMethodErrorが発生しました"
rescue => e  # 組み込み変数として、エラーは「$!」バックトレースは「$@」で取得できる
  puts "例外が発生しました"
  puts "例外のクラス: #{e.class}"       # 例外クラス
  puts "例外のメッセージ: #{e.message}"  # 例外メッセージ
  puts "バックトレース: #{e.backtrace}"  # プログラムの呼び出し履歴

  retry_count += 1
  puts "リトライ回数: #{retry_count}"
  retry if retry_count <= 3   # begin節の始めから再実行
end