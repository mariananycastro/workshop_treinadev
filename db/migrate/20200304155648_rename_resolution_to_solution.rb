class RenameResolutionToSolution < ActiveRecord::Migration[6.0]
  def change
    rename_table :resolution, :solution
  end
end
