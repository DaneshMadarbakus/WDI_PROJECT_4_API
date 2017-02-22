class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # PATCH/PUT /users/1
  def update
    puts "hi"
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
    params.require(:user).permit(:email, :profile_img, :password, :password_confirmation, :username, :telephone_no, :first_name, :last_name, :address_first_line, :address_second_line, :address_city, :address_postcode)
    end

end
