Given /^the following posts:$/ do |posts|
  posts.hashes.each do |p|
    Post.create!(p)
  end
end

When /^I delete the (\d+)(?:st|nd|rd|th) post$/ do |pos|
  visit posts_path
  within("ul#posts li.post:nth-child(#{pos.to_i}) .actions") do
    click_link "Destroy"
  end
end

Then /^I should see the following posts:$/ do |expected_posts|
  expected_posts.diff!(tableish('ul li', 'div,h2'))
end
