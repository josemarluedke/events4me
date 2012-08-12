class Event < ActiveRecord::Base
  belongs_to :place
  has_many :sessions
  attr_accessible :description, :duration, :image, :min_age, :name, :visible, :place_id, :sessions_id
  validates :description, :min_age, :name, :visible, :place, presence: true

  attr_accessible :sessions_attributes
  accepts_nested_attributes_for :sessions, :allow_destroy => true

  def serializable_hash(options={})
    options = {include: [:place, :sessions]}.merge(options)
    super(options)
  end

end
