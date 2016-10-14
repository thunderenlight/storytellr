class Tag < ActiveRecord::Base
	has_many :story_tags, dependent: :destroy
	has_many :stories, through: :story_tags

	has_many :user_tags, dependent: :destroy
	has_many :users, through: :user_tags
end
