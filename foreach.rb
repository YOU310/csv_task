# csvファイルを読み込むのに必要
require "csv"
require "pry"

list = []
                          #headers: true １行目をキーとしたハッシュ形式で出力
CSV.foreach("members.csv", headers: true) do |row|
  list << { id: row["id"].to_i, 名前: row["name"], あだ名: row["nickname"], 所属: row["belong"] }
  p row
end

p list