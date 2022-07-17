class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
def change
    create_table :admins do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
end
end