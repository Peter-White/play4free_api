class UsersController < ApplicationController
# GET /users
  def index
    # all the users
    @users = User.all
    render json: @users
  end

  # GET /users/:id
  def show
    # find one User by id
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
     end
  end

  # PATCH /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def delete
    @user = User.find(params[:id])
    @user.delete

    head :no_content
  end

  def count
    count = User.count
    render json: {count: count}
  end

  private
   def user_params
    params.require(:user)
      .permit(:username, :password, :email)
  end
end
