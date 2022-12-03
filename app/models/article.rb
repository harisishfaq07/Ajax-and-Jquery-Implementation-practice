class Article < ApplicationRecord

    has_many :article_categories
    has_many :categories , through: :article_categories 
    has_one_attached :image
    has_many :comments , as: :commentable
end