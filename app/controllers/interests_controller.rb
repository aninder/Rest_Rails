class InterestsController < ApplicationController
  skip_before_action :verify_authenticity_token, if: :js_post_request?
  def index
    @interests = current_user.interests.includes(:movie)
    respond_to do |format|
      format.html
      format.json {
        # render :json => @interests.to_json(:methods => [:movie_title] )}
        render :json => @interests.to_json( :only => [], :methods => [:movie_title, :user_email]  )
      }
    end
  end
  def create
    begin
      current_user.interests.create!(interest_params)
      # binding.pry
      flash[:notice] = 'You have added an interest in the specified movie'
    rescue
      flash[:notice] = 'Please add correct movie !'
    end
    respond_to do |format|
      format.html {
        redirect_to interests_path
      }
      format.json {
        render({ :json => current_user.interests.includes(:movie).reload.to_json( :only => [], :methods => [:movie_title, :user_email] ) })
      }
    end
  end
  def destroy
    interest = current_user.interests.find(params[:id])
    interest.destroy
    redirect_to interests_path
  end

  private
  def interest_params
    params.require(:interest).permit(:movie_id, :movie_title)
  end

  private
  def js_post_request?
    request.method=="POST" && request.format == 'json'
  end
end
