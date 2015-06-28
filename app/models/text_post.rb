class TextPost < ActiveRecord::Base
  scope :recent, lambda { order('created_at DESC').limit(10) }

  belongs_to :user
  
  # Set up this side of the polymorphic association
  has_many :likes, as: :likeable
end
