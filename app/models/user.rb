class User < ActiveRecord::Base
	has_many :stories
	has_many :user_tags, dependent: :destroy
	has_many :tags, through: :user_tags

	class << self
	  def from_omniauth(auth)
	    user = User.find_or_initialize_by(uid: auth['uid'])
	    user.name = auth['info']['name']
	    user.avatar_url = auth['info']['image']
	    user.save!
	    user
	  end
	end
end
