Given /^the following assets:$/ do |assets|
  assets.hashes.each do |a|
    Asset.create!(a)
  end
end

When /^I delete the (\d+)(?:st|nd|rd|th) asset$/ do |pos|
  visit assets_path
  within("#assets .asset:nth-child(#{pos.to_i}) .actions") do
    click_link "Destroy"
  end
end

Then /^I should see the following assets:$/ do |expected_assets|
  expected_assets.diff!(tableish('.asset', 'img,a'))
end

