class Value < ApplicationRecord

  belongs_to :user
  belongs_to :hall

  validates :text, presence: true

end
