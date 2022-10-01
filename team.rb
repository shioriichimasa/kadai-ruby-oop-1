# クラス定義
class Team
  
  # インスタンスが持つ変数
  attr_accessor :name, :win, :lose, :draw
  
  # インスタンスを初期化
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  # 勝率計算メソッド
  def calc_win_rate()
    return self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  # 成績表示メソッド
  def show_team_result()
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は#{self.calc_win_rate}です。"
  end

end


# ジャイアンツ
giants = Team.new("Giants", 67, 45, 8)
giants.show_team_result()

# タイガース
tigers = Team.new("Tigers", 60, 53, 7)
tigers.show_team_result()

# ドラゴンズ
dragons = Team.new("Dragons", 60, 55, 5)
dragons.show_team_result()

# ベイスターズ
baystars = Team.new("BayStars", 56, 58, 6)
baystars.show_team_result()

# カープ
carp = Team.new("Carp", 52, 56, 12)
carp.show_team_result()

# スワローズ
carp = Team.new("Swallows", 41, 69, 10)
carp.show_team_result()