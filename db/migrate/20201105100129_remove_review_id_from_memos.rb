class RemoveReviewIdFromMemos < ActiveRecord::Migration[6.0]
  def change
    remove_column :memos, :review_id, :integer
  end
end
