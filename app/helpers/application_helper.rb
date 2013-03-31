module ApplicationHelper
# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
		"#{base_title} | #{page_title}"
		end
	end

	def preview_or_default_image(media)
  		case media.image.file.extension #image is name of uploader class
  		when 'jpg', 'jpeg', 'png', 'gif' # , 'png', ...
    		media.image_url
  		#when 'doc', 'docx'
    	#	Rails.root.join('app/assets/images/default.jpg')
  		#when 'xls', 'xlsx'
    	#	Rails.root.join('app/assets/images/default.jpg')
  		#when 'pdf'
    	#	Rails.root.join('app/assets/images/default.jpg')
    	else
    		Rails.root.join('app/assets/images/default.jpg')
  		end
	end
end