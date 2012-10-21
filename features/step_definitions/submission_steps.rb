When /^the system receives a POST hook$/ do
  post '/submissions', provider_params
end

Then /^a new submission should be created$/ do
  Submission.count.should be > 0
end

When /^I submit a property in Mount Healthy$/ do
  params = params_for_locality({
    address:  "7607 Hamilton Avenue",
    city:     "Cincinati",
    zip_code: "45231"
  })

  post '/submissions', params
  visit "/thank_you/#{params["EntryId"]}"
end

Then /^I should see a contact for my locality$/ do
  page.should have_content @contact_phone_number
end

Given /^there is a Mount Healthy locality$/ do
  @locality = FactoryGirl.create(:locality, name: "Mt Healthy")
end

Given /^there is a resource for this locality$/ do
  @contact_phone_number = "(513) 931-8840"
  FactoryGirl.create(
     :resource,
     phone: @contact_phone_number,
     locality: @locality)
end

Given /^I have submitted a property$/ do
  # nothing to see here
end

Given /^the provider has not yet POSTed the information$/ do
  # nothing to see here
end

When /^I view the results for the submission$/ do
  visit '/submissions/23424'
end

Then /^I should see a waiting for result page$/ do
  page.current_path.should match('waiting')
  page.should have_content('Waiting for information')
end
