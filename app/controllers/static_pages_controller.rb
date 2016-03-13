class StaticPagesController < ApplicationController

def about
end

def contact
end

def author
end

def book
end

def home
end

def new_home
	@subscription = Subscription.new
end

end
