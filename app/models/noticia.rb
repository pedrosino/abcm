class Noticia < ActiveRecord::Base
  #belongs_to :autor, class_name: "User"

  validates :slug, presence: true, uniqueness: true

  before_validation :compute_slug
  private def compute_slug
    self.slug = titulo.parameterize
  end
end
