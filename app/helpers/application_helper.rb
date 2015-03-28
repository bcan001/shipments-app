module ApplicationHelper


	def current_user
  	User.find(session[:user_id]) if session[:user_id]
	end


	def sortable(title = nil, column)
		title ||= column.titleize
		# for css
		css_class = column == sort_column ? "current #{sort_direction}" : nil

		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to(title, {:sort => column, :direction => direction}, {:class => css_class})
	end



	def admin?
  	current_user.name == "benny"
	end


end



# .pretty th .asc {
#		background-image: url(/images/up_arrow.gif);
# }