class Tag < ActiveRecord::Base
	has_many :story_tags, dependent: :destroy
	has_many :stories, through: :story_tags
end
