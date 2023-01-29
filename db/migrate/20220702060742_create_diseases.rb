class CreateDiseases < ActiveRecord::Migration[7.0]
  def change
    create_table :diseases do |t|
      t.string :code
      t.text :description
      t.string :sexo

      t.timestamps
    end
  end
end
