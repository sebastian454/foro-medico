class CreateHasDiseases < ActiveRecord::Migration[7.0]
  def change
    create_table :has_diseases do |t|
      t.references :disease, foreign_key: true
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
