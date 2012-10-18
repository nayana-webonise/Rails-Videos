class CreateAuthUsers < ActiveRecord::Migration
  def change
    create_table :auth_users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
