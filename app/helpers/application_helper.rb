module ApplicationHelper
	def page_header
		content_for(:page_header) {header.to_s}
	end
end
