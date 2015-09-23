module ApplicationHelper
	 # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
