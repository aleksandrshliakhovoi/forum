class Post < ApplicationRecord
  belongs_to :topic #if belongs_to by default it is required

  validates :title, presence: true, length: {maximum:300}
  validates :body, presence: true
end
