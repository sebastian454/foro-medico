class Support < ApplicationRecord
    belongs_to :user
    has_many :has_histories, :dependent => :destroy
    has_many :histories, through: :has_histories, :dependent => :destroy
    after_create :save_histories
    validate :valide_histories

    
    

    #imagenes
    has_one_attached :soporte

    def histories=(value)
        @histories = value
    end
    def getHistories
          @histories
    end
  
    private
    def save_histories
        @histories.each do |history_id|
            HasHistory.create(history_id: history_id, support_id: self.id)
        end
    end
    def valide_histories
      if self.getHistories.blank? && self.id.nil?
        errors.add(:histories, "Debe agregar una categoria.")
      end
    end
end
