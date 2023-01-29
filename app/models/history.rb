class History < ApplicationRecord    
    # validaciones
    validates :name,  presence: true, length: {minimum: 2, too_short: "Minimo son %{count} caracteres." , maximum: 200 }
    # relaciones
    belongs_to :user
    has_many :has_histories, :dependent => :destroy        
    has_many :supports, through: :has_histories, :dependent => :destroy

end
