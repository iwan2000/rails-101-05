class User < ApplicationRecord
  # Include default devise modules. Others available are:

  # :confirmable, :lockale, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :groups
         has_many :posts
end
