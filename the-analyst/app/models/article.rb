class Article < ApplicationRecord
    belongs_to :source
    has_many :users, through :user_articles
end
