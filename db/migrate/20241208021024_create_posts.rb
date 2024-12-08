class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: '', comment: 'タイトル'
      t.text :body, null: false, default: '', comment: '本文'
      t.integer :status, null: false, default: 0, comment: 'ステータス'
      t.timestamps
    end
  end
end
