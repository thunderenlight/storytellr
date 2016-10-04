Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '336739436666107', 'e6e5ab3b34f59f74c2ea1cdce58aff7b', scope: 'public_profile'
end