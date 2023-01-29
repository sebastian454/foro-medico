class CreateHasHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :has_histories do |t|
      t.references :support, null: false, foreign_key: true
      t.references :history, null: false, foreign_key: true

      t.timestamps
    end
  end
end
