require 'spec_helper'

feature 'view a single business details page' do
  scenario 'visit from main businesses page' do
    business = create(:business)
    visit businesses_path
    click_link(business.name)
    expect(page).to have_text(business.name)
    expect(page).to have_text(business.address)
    expect(page).to have_text(business.city)
    expect(page).to have_text(business.state)
    expect(page).to have_text(business.postal_code)
    expect(page).to have_text(business.phone_number)
  end
end
