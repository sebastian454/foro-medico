class RemoveUserFromHasDiseases < ActiveRecord::Migration[7.0]
  def change
    remove_reference :has_diseases, :user, null: false, foreign_key: true
  end
end
