json.extract! registro, :id, :chave_id, :funcionario_id, :hora_retirada, :hora_devolucao, :created_at, :updated_at
json.url registro_url(registro, format: :json)
