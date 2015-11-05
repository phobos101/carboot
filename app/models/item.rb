class Item < ActiveRecord::Base
  # Establish database relationship
  belongs_to :user
  belongs_to :category
  has_many :request_trade, class_name: 'Trade', foreign_key: 'receiver_item_id'
  has_many :response_trade, class_name: 'Trade', foreign_key: 'sender_item_id'

  # Set up paperclip
  has_attached_file(:image, :default_url => 'missing_image.png')

  # Validate the item
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :condition, presence: true, length: { minimum: 3 }
  validates :value, presence: true
  validates :category, presence: true

  # Validate paperclip uploads
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 3.megabytes

  # Define search method
  def self.search(search, id)
    where('name ilike ?', "%#{search}%")
  end
end
