class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    @temp_solution = current_user.solution.build()
    @solution = Solution.find_by(challenge: @challenge, user: current_user)
  end
end