class InterestsController < ApplicationController
  def index
    @interests = current_user.interests
  end
  def create
    # binding.pry
     current_user.interests.create(interest_params)
    flash[:notice] = 'You have added an interest in the specified movie'
    redirect_to interests_path
  end
  def destroy
    interest = current_user.interests.find(params[:id])
    interest.destroy
    redirect_to interests_path
  end
  def interest_params
    params.require(:interest).permit(:movie_id)
  end

end
