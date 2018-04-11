class Anotacao < ActiveRecord::Base
  belongs_to :amigo
  def amigo_name
    if self.amigo.blank?
      "-"
    else
      self.amigo.name
    end

  end
end
