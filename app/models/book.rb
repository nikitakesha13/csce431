class Book < ApplicationRecord
    has_many :user
    validates   :title, :author, :price, :date, presence: true
end
