class AddLifestyleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tobacco_consumption, :string    
    add_column :users, :drugs_consumption, :string
    add_column :users, :alcohol_consumption, :string
    add_column :users, :sexual_activity, :string
  end
end
