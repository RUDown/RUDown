When(/^I am on the post page$/) do
    visit root_path
end

Then(/^I should see the "(.*?)" button$/) do |arg1|
    page.should have_content arg1
end

When(/^I press the "(.*?)" button$/) do |arg2|
    visit root_path
    page.should have_content arg2
end

Then(/^an event is created$/) do
    visit root_path
end