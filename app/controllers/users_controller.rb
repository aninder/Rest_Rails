class UsersController < ApplicationController
  before_action   :set_user, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render 'users/admin/index'
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render 'users/admin/show'
  end

  # GET /users/1/edit
  def edit
    render 'users/admin/edit'
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      @user.assign_attributes(user_params);
      unless(@user.changed?)
        format.html { redirect_to edit_user_path(@user), notice: 'no changes done , try updating something if u come so far' }
      end
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render 'users/admin/show', status: :ok, location: @user }
      else
        format.html { render 'user/admin/edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def releases
    movie_ids = movies.map(&:id)
    Release.find(:all,
                 :include => :movie,
                 :conditions => ["movie_id IN (?)", movie_ids],
                 :order => 'released_on DESC')
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:admin)
  end
end
