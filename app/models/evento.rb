class Evento < ActiveRecord::Base
    validates :nome, :data, :local, presence: true
    validates :slug, presence: true, uniqueness: true

    #before_validation :compute_slug
    #private def compute_slug
        #self.slug = local.parameterize
    #end
end
