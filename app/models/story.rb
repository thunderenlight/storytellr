class Story < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

  include PublicActivity::Model
  tracked
end
