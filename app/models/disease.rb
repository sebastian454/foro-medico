  # como service
class Disease < ApplicationRecord    
    belongs_to :user
    has_many :has_diseases
    has_many :diagnostics, through: :has_diseases, :dependent => :destroy
    after_create :save_diagnostics
    validate :valide_diagnostics

    
    # funcion para obtener diagnostico
    def diagnostics=(value)
      @diagnostics = value
    end
    def getdiagnostics
      @diagnostics
    end
  

    private

    def save_diagnostics
      @diagnostics.each do |diagnostic_id|
        HasDisease.create(diagnostic_id: diagnostic_id, service_id: self.id)
      end
    end
    def valide_diagnostics
      if self.getdiagnostics.blank? && self.id.nil?
        errors.add(:diagnostics, "Debe agregar una diagnostics.")
      end
    end
  
end