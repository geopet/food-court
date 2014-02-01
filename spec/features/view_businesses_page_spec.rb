require 'spec_helper'

feature 'view the businesses page' do
  scenario 'should render' do
    visit businesses_path
    expect(page).to have_text('Businesses')
  end

  scenario 'should list a variety of businesses' do
    create(:business)
    visit businesses_path
    expect(page).to have_css('li.business')
  end

  scenario 'should be able to see business detail links' do
    business = create(:business)
    visit businesses_path
    expect(page).to have_link(business.name)
  end
end
