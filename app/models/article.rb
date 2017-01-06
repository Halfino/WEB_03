class Article < ActiveRecord::Base
  belongs_to :category

  validates_inclusion_of :published, :in => [true, false]
  validates :title, presence: {message: "Titulek musi byt vyplnen"}
  validates :text, presence: {message: "Text musi byt vyplnen"}

end

