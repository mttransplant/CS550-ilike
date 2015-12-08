require 'eventful/api'
require 'json'

class UsersController < ApplicationController
  
  before_action :load_eventful
  before_action :logged_in_user,      only: [:index, :edit, :update, :destroy]
  before_action :correct_user,        only: [:edit, :update]
  before_action :admin_user,          only: :destroy
  before_action :retrieve_categories, only: [:new, :edit]
  
  def index
    # @users = User.all
    @users = User.paginate(page: params[:page])
  end
  
  def landing
    @user = User.find(session[:user_id])
    @categories = @user.categories
  end
  
  def show
    @user = User.find(params[:id])
    @categories = @eventful.call 'categories/list'
  end
  
  def fetch_events
    
  end
  
  def new
    @user = User.new
    
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the iLike App!"
      redirect_to @user
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
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  private 
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, {:category_ids => []})
    end
    
    def update_user_preferences
      @user_preferences = params[:user][:user_preferences].reject!(&:empty?)
    end
    
    # Before filters
    
      # Confirms a logged-in user.
      def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
      
      # Confirms the correct user.
      def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?(@user)
      end
      
      # Confirms an admin user.
      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
      
      # Loads the Eventful API
      def load_eventful
        @eventful = Eventful::API.new '36d8PjJXGWNdH592'
      end
      
      # Retrieves the list of Categories
      def retrieve_categories
        @categories = Category.order(:name)
      end
    
end
