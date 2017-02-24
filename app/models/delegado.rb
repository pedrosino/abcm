class Delegado < ActiveRecord::Base
  validates :id_wca, presence: true, uniqueness: true

  validates_format_of :id_wca, with: /[0-9]{4}[A-Z]{4}[0-9]{2}/

  # validate :formato_id_wca
  # def formato_id_wca
  #   /[0-9]{4}[A-Z]{4}[0-9]{2}/.match(id_wca) != nil
  # end
end
