Given /^a newly created Subversion project$/ do
  @reposdir = Tmpdir.where(:repos)
  svnadmin(:create, @reposdir)
  svn(:checkout, "file:///#{@reposdir.realpath}")
end

#Given /^a remote Subversion project named (\w+)$/ do |name|
#end
#
#When /^I run "(.*)"$/ do |command|
#end
#
#Then /^I should see "(.*)"$/ do |regexp|
#end
#
#Then /^I should find a ([\w\/]+) folder$/ do |path|
#end