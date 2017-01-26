class Evento < ActiveRecord::Base
    validates :nome, :data, :local, presence: true
end
