class CreateTags < ActiveRecord::Migration[8.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false, default: '', comment: 'タグ名'
      t.timestamps
    end
  end
end
