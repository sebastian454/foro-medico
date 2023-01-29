class AddHistoryToSupports < ActiveRecord::Migration[7.0]
  def change
    add_reference :supports, :history, foreign_key: true
  end
end
