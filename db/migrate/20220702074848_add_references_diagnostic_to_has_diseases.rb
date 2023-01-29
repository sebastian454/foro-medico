class AddReferencesDiagnosticToHasDiseases < ActiveRecord::Migration[7.0]
  def change
    add_reference :has_diseases, :diagnostic, foreign_key: true
  end
end
