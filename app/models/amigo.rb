class Amigo < ActiveRecord::Base
  #um para muitos
  has_many :anotacaos
  #um para um
  has_one :endereco

  def descricao
    if self.endereco.blank?
      "-"
    else
      self.endereco.lagradouro
    end

  end

  #aceita atributos do relacionamento de endereço
  accepts_nested_attributes_for :endereco
end
