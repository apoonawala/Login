class UsersController < ApplicationController

  def index
    @users = User.fetch_all
  end

  def new
  end

  def create
    User.create_user(params[:fname], params[:lname], params[:email], params[:pic_url], params[:password])
    redirect_to users_list_url
  end

  def detail
    @user = User.select_user(params[:id])
  end

  def edit
    @user = User.select_user(params[:id])
  end

  def update
    User.update_user(params[:id], params[:fname], params[:lname], params[:email], params[:pic_url], params[:password])
    redirect_to user_info_url
  end

  def destroy
    User.destroy_user(params[:id])
    redirect_to users_list_url
  end

  def home
  end

  def login
    if User.user_login(params[:email], params[:password])
      redirect_to users_list_url
    else
      redirect_to home_url
    end
  end

  def signup
  end

  def create_account
    User.create_account(params[:fname], params[:lname], params[:email], params[:pic_url], params[:password])
    redirect_to home_url
  end


end
