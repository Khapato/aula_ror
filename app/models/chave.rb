class Chave < ApplicationRecord

    validates :identificador, uniqueness: true

end
