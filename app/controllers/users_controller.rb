class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # GET /users
  # GET /users.json

  def welcome
  if current_user==NIL
    redirect_to '/'
  end
  end

  def index
    if current_user!=NIL
    @users = User.all
  else
    redirect_to '/'
  end

    
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if current_user!=NIL
    
  else
    redirect_to '/'
  end

  end

  
  
  # GET /users/new
  def new
    if current_user!=NIL
    @user = User.new
  else
    redirect_to '/'
  end
end

  # GET /users/1/edit
  def edit
    if current_user!=NIL
  
  else
    redirect_to '/'
  end
  end

  # POST /users
  # POST /users.json
  def create
    if current_user!=NIL
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
      else
    redirect_to '/'
  end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if current_user!=NIL
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
      else
    redirect_to '/'
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:cuenta, :nombre, :password, :password_confirmation, :password_digest, :rol)
    end
end
