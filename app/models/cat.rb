class Cat < ApplicationRecord
    has_many :hangouts
    has_many :locations, through: :hangouts

end
