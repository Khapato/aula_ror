class Registro < ApplicationRecord
  belongs_to :chave
  belongs_to :funcionario
end
