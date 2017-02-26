class Delegado < ActiveRecord::Base
  validates :id_wca, presence: true, uniqueness: true

  validates_format_of :id_wca, with: /\A[0-9]{4}[A-Z]{4}[0-9]{2}\Z/
end
