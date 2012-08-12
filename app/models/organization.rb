class Organization < ActiveRecord::Base
  belongs_to :place
  attr_accessible :cnpj, :logo, :name
  validates :name, :place, presence: true

  def serializable_hash(options={})
    options = {include: [:place]}.merge(options)
    super(options)
  end
end
