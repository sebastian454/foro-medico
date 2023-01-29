class HasHistory < ApplicationRecord
  belongs_to :support
  belongs_to :history
end
