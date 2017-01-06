class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"

  def userList

  end

  def userAdmin
    @user = User.find(params[:user])
  end

  def userEdit
    @user = User.find(params[:user])
  end
end
