class CreatePostTags < ActiveRecord::Migration[8.0]
  def change
    create_table :post_tags do |t|
      t.references :post, null: false, foreign_key: { on_delete: :cascade }, comment: '投稿ID'
      t.references :tag, null: false, foreign_key: { on_delete: :cascade }, comment: 'タグID'
      t.timestamps
    end
  end
end
