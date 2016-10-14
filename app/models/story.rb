class Story < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil },
  		  title: proc { |controller, model| model.title }

  belongs_to :user
  has_many :story_tags, dependent: :true 
  has_many :tags, through: :story_tags

  validates :title, presence: true
  validates :body, presence: true

end
