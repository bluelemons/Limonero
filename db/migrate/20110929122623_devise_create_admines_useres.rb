class DeviseCreateAdminesUseres < ActiveRecord::Migration
  def self.up
    create_table(:admines_useres) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    # Create a default user
    AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')

    add_index :admines_useres, :email,                :unique => true
    add_index :admines_useres, :reset_password_token, :unique => true
    # add_index :admines_useres, :confirmation_token,   :unique => true
    # add_index :admines_useres, :unlock_token,         :unique => true
    # add_index :admines_useres, :authentication_token, :unique => true
  end

  def self.down
    drop_table :admines_useres
  end
end
