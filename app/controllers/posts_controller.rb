class PostsController < ApplicationController
  before_action :admin_user,     only: [:create, :edit, :destroy, :update]

def index
  @posts = Post.all.order('created_at DESC').paginate(page: params[:page],per_page: 3)
  @comments = Comment.all
end

def new
  @post = Post.new
end

def create
  @user = current_user
  @post = current_user.posts.create(post_params)
   if @post.save
  @post.save
   redirect_to @post
  else
  render 'new'
  end
end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  if @post.update(params[:post].permit(:title, :body))
    redirect_to @post
  else
    render 'edit'
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to root_path
end

private

def post_params
  params.require(:post).permit(:title, :body)
end

# Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end