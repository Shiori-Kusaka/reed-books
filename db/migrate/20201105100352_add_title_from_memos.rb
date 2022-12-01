class AddTitleFromMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :title, :text
  end
end
