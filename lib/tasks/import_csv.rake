require "import"

namespace :import_csv do
  # 起動コマンド記載欄
  desc "AwsTextデータのインポート"

  task AwsText: :environment do
    list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
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
