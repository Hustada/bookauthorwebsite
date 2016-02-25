class SubscriptionsController < ApplicationController
	def new
		@subscription = Subscription.new
	end

	def create
		@subscription = Subscription.create(subscription_params)
   		if @subscription.save
  			@subscription.save
   		redirect_to root_path
  		end
	end

	def show
	end

	def edit
	end

	def destroy
	end

	def update
	end

	private

	def subscription_params
	  params.require(:subscription).permit(:email)
	end

end