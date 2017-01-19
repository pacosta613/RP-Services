class User < ApplicationRecord
  has_one :piro_first_call
  has_one :authorize_cremation_and_disposition
  has_one :cremation_permit_path
  has_one :designation_of_intention
  has_one :written_statement
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]

  after_create :send_admin_mail

  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end

  def self.from_omniauth(access_token)
    # data = access_token.info
    # user = User.where(:email => data["email"]).first
    # unless user
    #     user = User.create(name: data["name"],
    #        email: data["email"],
    #        password: Devise.friendly_token[0,20]
    #     )
    # end
    # user
    self.where(:email => access_token["info"]["email"]).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end


end