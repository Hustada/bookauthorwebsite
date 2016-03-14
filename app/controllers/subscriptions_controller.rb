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
   		flash[:notice] = "Either you entered your email incorrectly or it already exists in our database."
   		redirect_to root_path
  		end
	end

	def show
		@subscriptions = Subscription.all.order('created_at DESC').paginate(page: params[:page],per_page: 15)
	end

	def edit
	end

	def unsubscribe
		@subscription = Subscription.find(params[:id])
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