class RemoveFieldsFromDiseases < ActiveRecord::Migration[7.0]
  def change
    remove_column :diseases, :code, :string
    remove_column :diseases, :description, :text
    remove_column :diseases, :sexo, :string
  end
end
