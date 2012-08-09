class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :omniauthable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :authorizations, dependent: :destroy
  validates :name, presence: true

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session[:omniauth] && session[:omniauth]["info"]
        user.email = data["email"] if data["email"].present?
        user.name = data["name"]
        user.username = data["nickname"]
        user.authorizations.build(provider: session[:omniauth]['provider'], uid: session[:omniauth]['uid'])
      end
    end
  end
end
