require 'spec_helper'

feature 'view the businesses page' do
  scenario 'should render' do
    visit businesses_path
    expect(page).to have_text('Businesses')
  end

  scenario 'should list a variety of businesses' do
    pending 'need to set up factories'
    #visit businesses_path
    #expect(page).to have_css('li')
  end
end
