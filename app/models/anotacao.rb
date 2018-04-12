class Anotacao < ActiveRecord::Base
  belongs_to :amigo
  def amigo_name
    if self.amigo.blank?
      "-"
    else
      self.amigo.name
    end

  end

  # def self.buscar(palavra)
  #   where(" body LIKE ?", "%#{palavra}%")
  # end

  scope :buscar, ->(palavra) { where(" body LIKE ?", "%#{palavra}%")}
end
