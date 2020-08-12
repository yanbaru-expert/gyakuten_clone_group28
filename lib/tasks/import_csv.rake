require "import"

namespace :import_csv do
  # 起動コマンド記載欄
  desc "AwsTextデータのインポート"

  task AwsText: :environment do
    Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
  end

end
