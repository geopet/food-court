FactoryGirl.define do
  factory :business do
    business_id  'XXXXXX'
    name         'Barfy Dogs'
    address      '123 Cart St.'
    city         'Nowhereville'
    state        'NM'
    postal_code  '12345'
    phone_number '5055555555'
  end

  factory :violation do
    business_id 'XXXXXX'
    date        '2014-02-01'
    code        '01 01'
    description 'OMG SOMETHING GROSS. CORRECTED AT TIME OF INSPECTION THROUGH BURNING.'
  end

  factory :inspection do
    business_id     'XXXXXX'
    score           100
    date            '2014-02-01'
    Description     'APPROVED'
    inspection_type 'routine'
  end
end
