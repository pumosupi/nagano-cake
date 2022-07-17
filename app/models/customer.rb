class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
def change
    create_table :customers do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :email, null: false
      t.string :post_code, null: false
      t.string :address, null: false
      t.string :telephone_number, null: false
      t.string :encrypted_password, null: false
      t.boolean :is_deleted, null: false, default: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
end
end