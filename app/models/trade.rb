class Trade < ActiveRecord::Base
  before_save :update_status

  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

  def update_status
    self.status = "Pending" if self.status.nil?
  end

  def respond(item)
    self.sender_item_id = item.id
    self.status = "Responded" if self.status == "Pending"
  end

  def reject
    self.status = "Rejected"
  end

  def accept
    self.status = "Accepted"
  end
end
