class ProfilesController < ApplicationController
  def index
    @user = User.all
  end
  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to profiles_path
    else
      render :new
    end
  end
    
  def show
    @user = User.find(params[:id])
  end
    
      private
      
      def user_params
        params.require(:user).permit(:nickname, :image, :gender, :introduction,
                                     :age, :image_cache, :id)
      end
      def set_user
        @user = User.find(params[:id])
      end
end
