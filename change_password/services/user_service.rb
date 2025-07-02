require_relative '../models/user'

class UserService
  def self.cambiar_email(old_email, new_email)
    return { status: 400, body: { error: 'Missing data' } } if old_email.nil? || new_email.nil?

    user = User.find_by_email(old_email)
    return { status: 404, body: { error: 'User not found' } } if user.nil?

    User.update_email(old_email, new_email)
    { status: 200, body: { message: 'Email updated successfully' } }
  end

  def self.cambiar_password(email, old_password, new_password)
    return { status: 400, body: { error: 'Missing data' } } if email.nil? || old_password.nil? || new_password.nil?

    user = User.find_by_email_and_password(email, old_password)
    return { status: 401, body: { error: 'Invalid credentials' } } if user.nil?

    User.update_password(email, new_password)
    { status: 200, body: { message: 'Password updated successfully' } }
  end
end
