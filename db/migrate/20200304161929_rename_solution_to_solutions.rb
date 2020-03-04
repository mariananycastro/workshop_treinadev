class RenameSolutionToSolutions < ActiveRecord::Migration[6.0]
  def change
    rename_table :solution, :solutions
  end
end
