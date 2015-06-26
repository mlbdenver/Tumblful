class TextPost < ActiveRecord::Base
  scope :recent, lambda { order('created_at DESC').limit(10) }

  belongs_to :user
end
