class Book < ApplicationRecord
    has_one_attached :image
    has_many :comments , as: :commentable
    validates :name, uniqueness: true
end
