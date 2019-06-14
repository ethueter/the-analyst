class User < ApplicationRecord
    has_secure_password
    has_many :user_articles
    has_many :articles, through: :user_articles

    validates :username, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true
    validates :password, presence: true, length: {in: 5..15}

end
