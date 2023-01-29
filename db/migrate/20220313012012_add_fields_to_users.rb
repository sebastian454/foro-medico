class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :username
    add_column :users, :sign_in_count, :integer, default: 0, null: false
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :string
    add_column :users, :last_sign_in_ip, :string
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :last_name, :string
    add_column :users, :second_last, :string
    add_column :users, :type_document, :string
    add_column :users, :cellphone, :string
    add_column :users, :no_document, :string
    add_column :users, :genero, :string
    add_column :users, :birthdate, :date
    add_column :users, :permission_level, :integer
    change_column :users, :username, :string , unique: true

  end
end  