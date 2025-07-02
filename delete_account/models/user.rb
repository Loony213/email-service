require_relative '../db/db'

class User
  # Método para eliminar un usuario por su correo electrónico
  def self.delete_user(email)
    # Primero eliminamos las relaciones en la tabla 'friends'
    DB_CLIENT.execute("DELETE FROM friends WHERE user_id = (SELECT id FROM users WHERE email = '#{email}') OR friend_id = (SELECT id FROM users WHERE email = '#{email}')")

    # Ahora procedemos a eliminar al usuario
    result = DB_CLIENT.execute("DELETE FROM users WHERE email = '#{email}'")

    if result
      return true  # El usuario fue eliminado
    else
      return false # No se encontró el usuario
    end
  end
end


