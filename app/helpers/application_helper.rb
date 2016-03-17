module ApplicationHelper
	 # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    def login_required
    	redirect_to('/') if current_user.blank?
  	end


end
