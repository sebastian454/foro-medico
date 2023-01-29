class HasDisease < ApplicationRecord
  belongs_to :disease
  belongs_to :diagnostic
end
  