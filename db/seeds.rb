# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Test Records for Issue
Issue.transaction do
	(1..10).each do |i|
		Issue.create(:company_name => i % 3, :summary => "Issue Summary #{i}", :received_date => Date.today, :due_date => Date.today + 7, :status => i % 3, :issue_type => i % 3, :assigned_to => i % 3)
	end
end
