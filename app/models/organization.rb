class Organization < ActiveRecord::Base
  belongs_to :place
  has_and_belongs_to_many :users
  has_many :events
  attr_accessible :cnpj, :logo, :name, :place
  validates :name, :place, presence: true

  def serializable_hash(options={})
    options = {include: [:place]}.merge(options)
    super(options)
  end
end
