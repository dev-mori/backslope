class Tweet < ApplicationRecord

  has_many :likes

  belongs_to :user
  has_many :comments
  validates :text, presence: true
  default_scope -> { order(created_at: :desc) }
  # def search(query)
  #   rel = order("posted_at")
  #   if query.present?
  #   rel=rel.where("title LIKE? OR price LIKE?", 
  # "%#{query}%", "%#{query}%")
  #   end
  #   rel
  # end
end
