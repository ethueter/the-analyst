class Article < ApplicationRecord
    belongs_to :source
    has_many :user_articles
    has_many :users, through: :user_articles

    # validates :title, :author, :content, :article_url, :source_url, presence: true
end
