class CreateAwsTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :aws_texts do |t|
      t.title :string
      t.content :text
      t.timestamps
    end
  end
end
