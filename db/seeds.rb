# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Test Records for Issue
Issue.transaction do
	Issue.delete_all
	Issue.connection.execute("ALTER TABLE issues AUTO_INCREMENT = 1")

	(1..10).each do |i|
		Issue.create(:company_name => (i % 3) + 1, :summary => "Issue Summary #{i}", :received_date => Date.today, :due_date => Date.today + 7, :status => (i % 3) + 1, :issue_type => (i % 3) + 1, :assigned_to => (i % 3) + 1)
	end
end

# Test Records for Activity
Activity.transaction do
	Activity.delete_all
	Activity.connection.execute("ALTER TABLE activities AUTO_INCREMENT = 1")

	(1..10).each do |i|
		Activity.create(:activity_id => 1, :issue_id => i, :date_time => Date.today, :activity_type => (i % 3) + 1, :activity_note => "Activity Note #{i}", :hours => 1, :minutes => 30, :entered_by => (i % 3) + 1)
	end
end

# Test Records for Company
Company.transaction do
	Company.delete_all
	Company.connection.execute("ALTER TABLE companies AUTO_INCREMENT = 1")

	Company.create(:name => "SCSK", :telephone => "012-3456-7890", :fax => "012-3456-0987", :is_deleted => 0)
	Company.create(:name => "Hoge Company", :telephone => "012-3456-7890", :fax => "012-3456-0987", :is_deleted => 0)
	Company.create(:name => "Rails Club", :telephone => "012-3456-7890", :fax => "012-3456-0987", :is_deleted => 0)
	Company.create(:name => "MCP", :telephone => "012-3456-7890", :fax => "012-3456-0987", :is_deleted => 0)
	Company.create(:name => "Team MAK", :telephone => "012-3456-7890", :fax => "012-3456-0987", :is_deleted => 0)	
end

# Test Records for Location
Location.transaction do
	Location.delete_all
	Location.connection.execute("ALTER TABLE locations AUTO_INCREMENT = 1")

	Location.create(:company_id => 1, :name => "Toyosu Head Office", :address_1 => "1-2-3 Toyosu", :address_2 => "Koto-ku", :city => "TOKYO", :county => "", :postcode => "123-1234", :country => "JAPAN")
	Location.create(:company_id => 2, :name => "Head Office", :address_1 => "1-2-3 Hoge", :address_2 => "Hoge", :city => "Hoge", :county => "Hoge", :postcode => "123-1234", :country => "HOGE")
	Location.create(:company_id => 3, :name => "Head Office", :address_1 => "320 Rails", :address_2 => "Matsue-shi", :city => "SHIMANE", :county => "", :postcode => "123-1234", :country => "JAPAN")
	Location.create(:company_id => 4, :name => "Head Office", :address_1 => "1-2-3 Matsumoto", :address_2 => "Fuji-shi", :city => "SHIZUOKA", :county => "", :postcode => "123-1234", :country => "JAPAN")
	Location.create(:company_id => 5, :name => "Head Office", :address_1 => "1601 Amphitheatre Parkway", :address_2 => "Mountain View", :city => "California", :county => "", :postcode => "94043", :country => "USA")
end

# Test Records for Customer
Customer.transaction do
	Customer.delete_all
	Customer.connection.execute("ALTER TABLE customers AUTO_INCREMENT = 1")

	Customer.create(:company_id => 1, :location_id => 1, :title => "Mr", :name => "Taro Yamada", :direct_number => "1234", :email => "hogehoge@example.com", :main_contact => 1)
	Customer.create(:company_id => 2, :location_id => 2, :title => "Dr", :name => "Hoge Hoge", :direct_number => "1234", :email => "hogehoge@example.com", :main_contact => 1)
	Customer.create(:company_id => 3, :location_id => 3, :title => "Mr", :name => "God of Rails", :direct_number => "1234", :email => "hogehoge@example.com", :main_contact => 1)
	Customer.create(:company_id => 4, :location_id => 4, :title => "Mr", :name => "Shigekazu Murata", :direct_number => "1234", :email => "hogehoge@example.com", :main_contact => 1)
	Customer.create(:company_id => 5, :location_id => 5, :title => "Mr", :name => "Junichiro Murata", :direct_number => "1234", :email => "hogehoge@example.com", :main_contact => 1)
end

# Test Records for User
User.transaction do
	User.delete_all
	User.connection.execute("ALTER TABLE users AUTO_INCREMENT = 1")

	(1..10).each do |i|
		User.create(:userid => "user#{i}", :password => "password", :password_confirmation => "password", :name => "User #{i}", :level => 99, :accountlockflg => 0, :delflg => 0, :email => "user#{i}@hogehoge.com")
	end
end

# Code Table setup
Code.transaction do
	Code.delete_all
	Code.connection.execute("ALTER TABLE codes AUTO_INCREMENT = 1")

	Code.create(:codetype => 1, :codekey => 1, :codevalue => "Remote")
	Code.create(:codetype => 1, :codekey => 2, :codevalue => "Onsite")
	Code.create(:codetype => 2, :codekey => 1, :codevalue => "Open")
	Code.create(:codetype => 2, :codekey => 2, :codevalue => "Closed")
	Code.create(:codetype => 2, :codekey => 3, :codevalue => "Pending")
	Code.create(:codetype => 3, :codekey => 1, :codevalue => "Inquiry")
	Code.create(:codetype => 3, :codekey => 2, :codevalue => "Request")
	Code.create(:codetype => 3, :codekey => 3, :codevalue => "Trouble")
end
