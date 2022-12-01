class Book < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :memos, dependent: :destroy

  with_options presence: true do
    validates :isbn
    validates :image_url
    validates :title
    validates :url
  end

  validates :user_id,  uniqueness: { scope: :title } 

  
end
