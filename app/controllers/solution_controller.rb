class SolutionController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    @solution = Solution.find(params[:id])
    @user = current_user
  end

  def create
    @solution = current_user.solution.build(answer: params[:answer], challenge_id: params[:challenge_id])
    @solution.save!
    redirect_to challenge_path(params[:challenge_id])
  end
end