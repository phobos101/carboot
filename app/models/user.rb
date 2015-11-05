class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validate the username
  validates :username, presence: true, length: { in: 3..20 }, uniqueness: true

  # Validate the first name
  validates :first_name, presence: true, length: { maximum: 25 }

  # Validate the last name
  validates :last_name, presence: true, length: { maximum: 25 }

  # Validates the address_1
  validates :address_1, presence: true
  validates :city, presence: true
  validates :postcode, presence: true
  validates :country, presence: true

  # Establish database relationship
  has_many :items
  has_many :trades_as_sender, class_name: 'Trade', foreign_key: 'sender_id'
  has_many :trades_as_receiver, class_name: 'Trade', foreign_key: 'receiver_id'

end
