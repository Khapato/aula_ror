
class Funcionario < ApplicationRecord

      validates :matricula, uniqueness: true

end
