class User < ApplicationRecord
  # Include default devise modules. Others available are:

  # :confirmable, :lockale, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :group_relationships
         has_many :posticipated_groups, :through => :group_relationships, :source => :group
end
