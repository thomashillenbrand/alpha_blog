class Article < ApplicationRecord
  # this gives us getters and setters for articles and the attributes defined in the migration file/tables
  # can create new articles by default with article = Article.new
  # can save to DB with article.save

  # ensure a title and description are present with min/max length
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
