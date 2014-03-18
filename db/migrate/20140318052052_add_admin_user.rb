class AddAdminUser < ActiveRecord::Migration
  def up
      AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  end
end
