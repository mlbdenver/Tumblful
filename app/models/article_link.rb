class ArticleLink < ActiveRecord::Base
  scope :recent, lambda { order('created_at DESC').limit(10) }

  validates_presence_of :url
  
  # Set up this side of the polymorphic association
  has_many :likes, as: :likeable
end
