class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.integer :review_id
      t.text :text
      t.references :user,        foreign_key: true
      t.references :book,        foreign_key: true
      t.timestamps
    end
  end
end
