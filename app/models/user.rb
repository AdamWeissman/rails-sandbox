class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:normal, :moderator, :admin]
  has_many :posts
end
  # ROLES = {
  #   normal: 0,
  #   moderator: 1,
  #   admin: 2,
  #   super_admin: 3
  # }

  # # def normal?
  # #   role == ROLES[:normal]
  # # end

  # # def moderator?
  # #   role == ROLES[:moderator]
  # # end

  # # def admin?
  # #   role == ROLES[:admin]
  # # end

  # def self.define_roles
  #   ROLES.each do |role, number|
  #     define_method "#{role.to_s}?" do
  #       self.role == ROLES[role]
  #     end
  #   end
  # end

  # # define_roles
  # predefined names for simple integer values
  # 0 => normal
  # 1 => moderator
  # 2 => admin
