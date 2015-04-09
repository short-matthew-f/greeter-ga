class UsersController < ApplicationController
  before_action :set_role
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = role_class.all
  end

  def show
    redirect_to :root unless @user
  end

  def new
    @user = role_class.new
  end

  private

  def set_user
    @user = User.find(params[:id])
    @user = @user.is_a?(role_class) ? @user : nil
  end

  def set_role
    @role = role
  end

  def role
    User.roles.include?(params[:type]) ? params[:type] : "User"
  end

  def role_class
    role.constantize
  end
end
