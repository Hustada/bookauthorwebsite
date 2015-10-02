class EmailListsController < ApplicationController

def new
	@email_ist = EmailLists.new
end

def create
	@email_list = EmailList.build(params[:id])
		if @email_list.save?
			redirect_to root_path
		end
end

end