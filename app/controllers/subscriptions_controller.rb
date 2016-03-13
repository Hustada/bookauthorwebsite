class SubscriptionsController < ApplicationController
	def new
		@subscription = Subscription.new
	end

	def create
		@subscription = Subscription.create(subscription_params)
   		if @subscription.save
  			@subscription.send_subscription_email
  			SubscriptionMailer.subscription_activation(@subscription).deliver
  			flash[:notice] = "Thanks for subscribing!"
   		redirect_to root_path
   	else
   		flash[:notice] = "There was a problem with some of the information you entered. Be sure to enter to enter a valid email."
   		redirect_to root_path
  		end
	end

	def show
		@subscriptions = Subscription.all.order('created_at DESC').paginate(page: params[:page],per_page: 15)
	end

	def edit
	end

	def unsubscribe
	end

	def destroy
		@subscription = Subscription.find(params[:id])
	  @subscription.destroy
		flash[:notice] = "You have been unsubscribed"
		redirect_to root_path
	end

	def update
	end

	private

	def subscription_params
	  params.require(:subscription).permit(:email, :name)
	end

end