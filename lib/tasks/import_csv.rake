require "import"

namespace :import_csv do
  # 起動コマンド記載欄
  desc "AwsTextデータのインポート"

  task AwsText: :environment do
    list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
    puts "インポート処理を開始"
    AwsText.transaction do
      # 例外が発生する可能性のある処理
      AwsText.create!(list)
    end
    # 正常に動作した場合の処理
    puts "インポート完了!!"
  end

  desc "Movieデータのインポート"

  task Moviedate: :environment do
    list = Import.csv_data(path: 'db/csv_date/movie_date.csv')
    puts "インポート処理を開始"
    Moviedate.transaction do
      # 例外が発生する可能性のある処理
      Moviedate.create!(list)
    end
    # 正常に動作した場合の処理
    puts "インポート完了!!"
  end
end


  