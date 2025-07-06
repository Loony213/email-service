require_relative '../db/db'

class User
  # Método para actualizar la descripción del usuario
  def self.update_description(email, description)
    result = DB_CLIENT.execute("UPDATE users SET description = '#{description}' WHERE email = '#{email}'")
    return result > 0 # Retorna true si la actualización fue exitosa
  end
end


