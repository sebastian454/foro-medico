class AddUserReferencesToHistories < ActiveRecord::Migration[7.0]
  def change    
    add_reference :histories, :user, foreign_key: true
  end
end
