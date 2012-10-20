When /^the system receives a POST hook$/ do
  post '/submissions', provider_params
end

Then /^a new submission should be created$/ do
  Submission.count.should be > 0
end

When /^I submit my property in "Mount Healthy"$/ do
  locality = {
                address: "7607 Hamilton Avenue",
                city:    "Cincinati",
                zip_code: "45231" }
  post '/submissions', params_for_locality(locality)
  visit "/thank_you/#{provider_params["EntryId"]}"
end

Then /^I should see a contact for my locality$/ do
  page.should have_content("(513) 931-8840")
end

Given /^there is a "(.*?)" locality$/ do |name|
  l = Locality.new
  l.name = name
  l.save
  l.resources.create(phone: "(513) 931-8840")
end
