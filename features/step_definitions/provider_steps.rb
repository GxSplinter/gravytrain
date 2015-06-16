Given(/^no Providers exist$/) do
  Provider.delete_all
end

When(/^I am on the registration page$/) do
  visit new_provider_path
end

When(/^I complete the required fields$/) do
  fill_in 'Name', with: 'Dave'
  fill_in 'Address', with: '10 Pie Lane'
  fill_in 'Postcode', with: 'RG2 9FL'
  fill_in 'About me', with: 'Ben is a douche'
  fill_in 'Paypal email', with: 'ding@dong.com'
  check 'Accepted terms'
end

When(/^I submit my information$/) do
  click_button 'Create Provider'
end

Then(/^my Provider account is created$/) do
  expect(Provider.count).to eq (1)
end

Then(/^I see a confirmation message$/) do
  expect(page).to have_content('Done!')
end

Given(/^I do not accept the Terms and Conditions$/) do
  uncheck 'Accepted terms'
end

Then(/^my account is not created$/) do
  expect(Provider.count).to eq (0)
end

Then(/^I am notified that I need to accept the Terms and Conditions$/) do
  expect(page).to have_content('Accepted terms must be accepted')
end
