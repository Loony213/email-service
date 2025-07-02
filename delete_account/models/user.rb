require_relative '../db/db'

class User
  # Método para eliminar un usuario por su correo electrónico
  def self.delete_user(email)
    # Consulta SQL para eliminar al usuario
    begin
      result = DB_CLIENT.execute("DELETE FROM users WHERE email = '#{email}'")

      # Verifica si la operación afectó alguna fila
      if result && result.count > 0
        return true  # El usuario fue eliminado
      else
        return false # No se encontró el usuario
      end
    rescue StandardError => e
      puts "Error al eliminar el usuario: #{e.message}"
      return false
    end
  end
end

