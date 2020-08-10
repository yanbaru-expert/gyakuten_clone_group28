require "import"

namespace :import_csv do
  desc "hogeデータのインポート"

  task: :environment do
    hoge.import(path 'db/csv_data/hogehoge')
  end

end
