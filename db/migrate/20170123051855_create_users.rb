class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
        t.string :name
        t.string :enpno
        t.string    :crypted_password,  null: false
        t.string    :password_salt,     null: false
        t.string    :persistence_token, null: false
        t.timestamps
    end
  end
end
