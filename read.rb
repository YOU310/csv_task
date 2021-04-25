# csvファイルを読み込むのに必要
require "csv"
require "pry"

list = CSV.read("members.csv", headers: true).map do |row|
  { id: row["id"].to_i, 名前: row["name"], あだ名: row["nickname"], 所属: row["belong"] }
end
p list