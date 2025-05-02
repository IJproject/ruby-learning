require 'minitest/autorun'
# テスト対象ファイルの読み込みは、もちろん「require_relative」で行う

class SampleTest < Minitest::Test
  # minitestのテストメソッドは、「test_」で始まるものを全て実行していく
  def test_sample
    # 第一引数と第二引数が等しいかを確認するメソッド
    assert_equal 1, 1
    # 第一引数が真であるかを確認するメソッド
    assert true
    # 第一引数が偽であるかを確認するメソッド
    refute false
  end
end