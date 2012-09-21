require 'spec_helper'

describe "When visiting the gallery page" do
	subject { page }
	before { visit galleries_path }
	it { should have_selector('title', text: 'Test') }
end
