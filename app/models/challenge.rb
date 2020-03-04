class Challenge < ApplicationRecord
    has_many :solution
    has_many :comments
    has_many :users, through: :solution
end
