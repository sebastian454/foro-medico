class CreateSupports < ActiveRecord::Migration[7.0]
  def change
    create_table :supports do |t|
      t.string :title
      t.string :event_type
      t.date :expiration_date
      t.string :diagnosis

      t.timestamps
    end
  end
end
