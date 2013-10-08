class Report

  include Mongoid::Document
  field :period_start, type: Date
  field :period_end, type: Date
  field :decisions, type: String
  field :client_involvement, type: String
  field :assets_list, type: String
  field :capital_expenditure, type: String
  field :property_maintenance, type: String
  field :investments_purchased, type: String
  field :deputy_expenses, type: String
  field :gifts, type: String
  field :further_details, type: String

  embedded_in :client

end
