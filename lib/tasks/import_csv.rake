require "import"

namespace :import_csv do
  # rake import_csv:AwsText
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

  # rake import_csv:Movie 
  desc "Movieデータのインポート"

  task Movie: :environment do
    list = Import.csv_data(path: 'db/csv_data/movie_data.csv')
    puts "インポート処理を開始"
    Movie.transaction do
      # 例外が発生する可能性のある処理
      Movie.create!(list)
    end
    # 正常に動作した場合の処理
    puts "インポート完了!!"
  end
end


