Then(/^I get logged out$/) do
    visit root_path
end

Then(/^I should see a "(.*?)" button$/) do |arg1|
    page.should have_content "Sign in with Facebook"
end

When(/^I pressed the "(.*?)" button$/)do |arg1|
    visit root_path
end
