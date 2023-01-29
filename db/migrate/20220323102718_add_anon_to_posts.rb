class AddAnonToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :anonimo, :boolean
  end
end
