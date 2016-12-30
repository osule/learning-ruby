class Race
  include Mongoid::Document
  include Mongoid::Timestamps

  field :n, type: String, as: :name 
  field :date, type: Date
  field :loc, type: Address, as: :location

  embeds_many :events, as: :parent, order: [:order.asc]

  scope :past, -> { where(:date.lt => Date.current)}
  scope :upcoming, -> {where(:date.gte => Date.current )}
end