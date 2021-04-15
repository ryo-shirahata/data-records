class Hall < ApplicationRecord

  belongs_to :user
  has_many   :values

  with_options presence: true do
    validates :name
    validates :machine
    validates :data
  end

end
