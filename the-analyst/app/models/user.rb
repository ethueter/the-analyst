class User < ApplicationRecord
    has_secure_password
    has_many :articles, through: :user_articles
end
