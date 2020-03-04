class RenameChallengeUsersToResolution < ActiveRecord::Migration[6.0]
  def change
    rename_table :challenge_users, :resolution
  end
end
