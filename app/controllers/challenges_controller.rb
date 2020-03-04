class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    @user = current_user
    @solution = @user.solution.build(answer: params.permit[:answer])
    @solution.challenge = @challenge
    byebug
    @solution.save!
    
    render @solution
  end
end