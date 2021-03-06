class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :omniauthable

  attr_accessible :name, :email, :password, :image_url, :password_confirmation, :remember_me, :admin, :push, :birthdate, :locale
  has_many :authorizations, dependent: :destroy
  has_many :devices, dependent: :destroy
  has_many :events
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :events
  validates :name, :birthdate, presence: true
  before_save :ensure_authentication_token

  def admin?
    admin
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session[:omniauth] && session[:omniauth]["info"]
        user.email = data["email"] if data["email"].present?
        user.name = data["name"]
        user.image_url = data["image"]
        user.authorizations.build(provider: session[:omniauth]['provider'], uid: session[:omniauth]['uid'])
      end
    end
  end

  def avatar_url
    if image_url
      return image_url
    else
      "http://gravatar.com/avatar/#{Digest::MD5.new.update(email)}.jpg?s=50"
    end
  end
end
