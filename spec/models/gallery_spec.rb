require 'spec_helper'

describe Gallery do
	let(:user) { FactoryGirl.create(:user) }
	before do
		@gallery = Gallery.new(title: "Test", user_id: user.id)
	end
	subject { @gallery }
  it { should respond_to :title }
  it { should respond_to :user_id }
  it { should respond_to :file }
end
