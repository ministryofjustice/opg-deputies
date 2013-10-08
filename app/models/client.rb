class Client
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :telephone, type: String

  # embeds_many :reports
end
