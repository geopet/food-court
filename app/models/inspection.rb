class Inspection < ActiveRecord::Base
  belongs_to :business, primary_key: 'business_id'
end
