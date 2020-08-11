require "import"

namespace :import_csv do
  # 起動コマンド記載欄
  desc "hogeデータのインポート"

  task hoge: :environment do
    hoge.import(path: 'db/csv_data/hogehoge')
  end

end
