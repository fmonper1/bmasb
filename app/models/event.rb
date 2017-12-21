class Event < ApplicationRecord
  belongs_to :shop
  belongs_to :type
  belongs_to :state
  belongs_to :user
  has_many :comments


  before_save :do_something, if: :state_id_changed?

private

  def do_something
    # self.class.updateStatus
  end
end
