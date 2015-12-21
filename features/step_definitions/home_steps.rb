When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the RUDown$/) do
    expect(page).to have_content "R U Down"
end

Given /^I am signed in with provider "(.*)"$/ do |provider|
  visit root_path
end

Then(/^Page should redirect to homepage$/) do
  visit root_path
end

When(/^I click "(.*?)" tab$/) do |arg1|
  visit root_path
  find('a', text: arg1, visible: false).click
end

Then(/^Page will redirect to Create Event page$/) do
    expect(page).to have_content "Create Event"
end

Then(/^Page will redirect to My Requests page$/) do
  page.should have_content "My Requests"
end

Then(/^Page will redirect to My Events page$/) do
  page.should have_content "My Events"  
end