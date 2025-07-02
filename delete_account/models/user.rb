require_relative '../db/db'

class User
  # Métodos para interactuar con la base de datos

  # Método para eliminar un usuario por su correo electrónico
  def self.delete_user(email)
    # Consulta SQL para eliminar al usuario
    result = DB_CLIENT.execute("DELETE FROM users WHERE email = '#{email}'")

    # Verifica si el número de filas afectadas es mayor que 0
    if result
      return true  # El usuario fue eliminado
    else
      return false # No se encontró el usuario
    end
  end
end
