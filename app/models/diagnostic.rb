  # como skill
class Diagnostic < ApplicationRecord
   validates :code, presence: true, length: { minimum: 2, maximum: 20 }
   validates :description, presence: true, length: { minimum: 5, maximum: 500 }       
   has_many :has_diseases
   has_many :diseases, through: :has_diseases, :dependent => :destroy 
end

