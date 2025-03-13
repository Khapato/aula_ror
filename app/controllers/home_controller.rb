class HomeController < ApplicationController


def index
end

def action
 respond_to do |format|
   format.json { render  json: Chave.all.count}
 end
end

def n_funcionarios
  respond_to do |format|
   format.json { render  json: Funcionario.all.count}
 end
end
end
