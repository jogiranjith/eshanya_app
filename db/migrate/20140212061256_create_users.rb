class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ##database authenticatable
      t.string  :name ,                 :default => ""
      t.string  :username,              :default => ""
      t.string  :email,                 :default => "" 
      t.string  :about,                 :default => ""  
      t.string  :encrypted_password,    :default => ""  
      t.string  :city,                  :default => ""  

      ## Recoverable
      t.string  :reset_password_token  
      t.time    :reset_password_sent_at 

      ## Rememberable
      t.time    :remember_created_at 

      ## Trackable
      t.integer :sign_in_count,         :default => 0
      t.time    :current_sign_in_at  
      t.time    :last_sign_in_at 
      t.string  :current_sign_in_ip  
      t.string  :last_sign_in_ip  
      t.string  :stripe_customer_id  
      t.boolean :deleted,               :default => false

      ## Confirmable
      t.string  :confirmation_token  
      t.time    :confirmed_at  
      t.time    :confirmation_sent_at  
      t.string  :unconfirmed_email   

      ## Lockable
      t.integer :failed_attempts,        :default => 0
      t.string  :unlock_token  
      t.time    :locked_at 

      ## Token authenticatable
      t.string  :authentication_token  
      t.timestamps
    end
  end
end
