class ProfilesController < ApplicationController
    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          redirect_to profile_path(current_user)
        else
          render :new
        end
      end
    
      def show
        @user = User.find_by(id: current_user.id)
      end
    
      private
      
      def user_params
        params.require(:user).permit(:nickname, :image, :gender, :introduction,
                                     :age, :image_cache)
      end
end
