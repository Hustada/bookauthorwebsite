class AddSubscribedToSubscriptions < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :subscribed, :boolean, default: true
  end
end
