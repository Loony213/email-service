require_relative '../db/db'

class User
  def self.find_by_email(email)
    DB_CLIENT.execute("SELECT * FROM users WHERE email = '#{email}'").each.first
  end

  def self.find_by_email_and_password(email, password)
    DB_CLIENT.execute("SELECT * FROM users WHERE email = '#{email}' AND password = '#{password}'").each.first
  end

  def self.update_email(old_email, new_email)
    DB_CLIENT.execute("UPDATE users SET email = '#{new_email}' WHERE email = '#{old_email}'").do
  end

  def self.update_password(email, new_password)
    DB_CLIENT.execute("UPDATE users SET password = '#{new_password}' WHERE email = '#{email}'").do
  end
end
