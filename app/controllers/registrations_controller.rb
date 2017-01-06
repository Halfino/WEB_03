class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:name, :age, :city, :phone, :description, :username, :email, :image, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation,:current_password, :username, :image, :name,
                                 :city, :age, :phone, :description, :remove_image)
  end
end
