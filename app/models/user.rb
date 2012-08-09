class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :omniauthable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :authorizations, dependent: :destroy
  validates :name, presence: true
end
