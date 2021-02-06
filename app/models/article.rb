class Article < ApplicationRecord
  # this gives us getteres and setters for articles and the attributes defined in the migration file/tables
  # can create new articles by default with article = Article.new
  # can save to DB with article.save

  validates :title, presence: true, length: { minimum: 6, maximum: 100 } # ensure a title is present with min/max length
  validates :description, presence: true, length: { minimum: 10, maximum: 300 } #Ensure a non-null description w/ min/max length
end
