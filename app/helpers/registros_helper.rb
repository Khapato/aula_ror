module RegistrosHelper

def formatar_data(data)
	return data.strftime("%d/%m/%Y - %H:%M:%S") unless data.nil?
end

end
