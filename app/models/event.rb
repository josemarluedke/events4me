class Event < ActiveRecord::Base
  belongs_to :place
  belongs_to :organization
  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"
  has_many :sessions
  has_many :featured_events
  attr_accessible :description, :duration, :image, :min_age, :name, :visible, :place_id, :place, :session, :session_id, :organization, :organization_id, :category_ids
  validates :description, :min_age, :name, :visible, :place, presence: true

  has_and_belongs_to_many :users
  has_and_belongs_to_many :categories
  attr_accessible :sessions_attributes
  accepts_nested_attributes_for :sessions, :allow_destroy => true

  def serializable_hash(options={})
    options = {include: [:place, :sessions, :categories]}.merge(options)
    super(options)
  end

end
