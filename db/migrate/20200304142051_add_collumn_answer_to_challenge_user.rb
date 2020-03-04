class AddCollumnAnswerToChallengeUser < ActiveRecord::Migration[6.0]
  def change
    add_column :challenge_users, :answer, :text
  end
end
