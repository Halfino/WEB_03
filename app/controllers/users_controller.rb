class UsersController < ApplicationController
  def show
    @sideArticles = Article.where(category_id: 2).where(published: "t")
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to root_url, notice: "User deleted."
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render 'admin/userList'
      # Handle a successful update.
    else
      render 'admin/userList'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :image, :name, :city, :age, :phone, :description, :remove_image)
  end
end
