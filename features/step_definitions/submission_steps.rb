When /^the system receives a POST hook$/ do
  post '/submissions', provider_params
end

Then /^a new submission should be created$/ do
  Submission.count.should be > 0
end
