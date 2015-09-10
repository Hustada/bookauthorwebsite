class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def show
      @user = User.find(params[:id])
      @posts = @user.posts.paginate(:page => params[:page], :per_page => 5)

    end

    def create
      @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      UserMailer.account_activation(@user).deliver
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
