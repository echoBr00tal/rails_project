class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    #debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Account Created!  Welcome!"
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update 
    @user = User.find(params[:id])
  end
  
  def destroy 
    @user = User.find(params[:id])
  end
end
