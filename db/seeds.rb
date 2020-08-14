EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

EMAIL = 'admin@example.com'
PASSWORD = 'password'

# 管理者作成
AdminUser.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts '管理者認識しました。'
end
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
