class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  # validates :phone_number, presence: false, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/ }
end
