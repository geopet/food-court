class Business < ActiveRecord::Base
  has_many :inspections, primary_key: 'business_id'
  has_many :violations, primary_key: 'business_id'
end
