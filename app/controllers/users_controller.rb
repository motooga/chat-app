class UsersController < ApplicationController
  def edit
  end

  def update
    current_user.updete(user_params)
  end

  def update
    if current_user.update(user_params)
    rendirect_to _root_path
          
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end

