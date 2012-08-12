class City < ActiveRecord::Base
  belongs_to :state

  attr_accessible :name, :state_id, :state
  validates :name, :state, presence: true

  def serializable_hash(options={})
    options = {include: :state}.merge(options)
    super(options)
  end
end
