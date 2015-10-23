class Post < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	validates :body,  presence: true
	has_many :comments, dependent: :destroy
	belongs_to :user

	auto_html_for :body do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => true)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
	
end
