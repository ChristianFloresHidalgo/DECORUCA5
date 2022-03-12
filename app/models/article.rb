class Article < ApplicationRecord
  belongs_to :user

  validates :name, :description, :price, :photo1, :stock, presence: true

end
