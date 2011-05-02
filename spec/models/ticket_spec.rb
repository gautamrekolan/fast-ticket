require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Ticket do

	before :all do
		@required_fields = {
				:name 		=> "Charles Baudelaire",
				:email 		=> "charles@baudelaire.com",
				:message 	=> "How can i to send email to Dostoievsky? Thanks."
		}
	end

	it 'should create a new instance given valid attributes' do
		Ticket.new(@required_fields).should be_valid
	end

	it 'should have name required' do
		Ticket.new(@required_fields.merge(:name => nil)).should have_at_least(1).error_on(:name)
	end
	
	it 'should have email required' do
		Ticket.new(@required_fields.merge(:email => nil)).should have_at_least(1).error_on(:email)
	end

	it 'should have message required' do
		Ticket.new(@required_fields.merge(:message => nil)).should have_at_least(1).error_on(:message)
	end

end
