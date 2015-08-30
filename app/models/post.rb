class Post < ActiveRecord::Base
  def recent
    Post.where('created_at >= ?', Time.zone.now.beginning_of_day)
  end
end
