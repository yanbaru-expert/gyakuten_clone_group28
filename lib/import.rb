# CSVファイルを扱うときは次が必要
require "csv"

class Import
  def self.csv_data(path:)
    list = []
    # CSVファイルからインポートするデータを取得し配列に格納
    CSV.foreach(path, headers: true) do |row|
      list << {
          title: row["title"],
          content: row["content"]
      }
    end
    puts "インポート処理を開始"

    begin
      AwsText.transaction do
        # 例外が発生する可能性のある処理
        AwsText.create!(list)
      end
      # 正常に動作した場合の処理
      puts "インポート完了!!"
    # 例外処理
    rescue ActiveModel::UnknownAttributeError => invalid
      # 例外が発生した場合の処理
      # インポートができなかった場合の例外処理
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
