require 'spec_helper'

describe Codeship::Status do

  context 'parsing the project status', :vcr do
    Codeship::Status::STATES.each do |state|
      it "should parse #{state}" do
        project_status = Codeship::Status.new state
        project_status.status.should == state
      end
    end
  end

  context 'parsing the project status on a certain branch', :vcr do
    Codeship::Status::STATES.each do |state|
      it "should parse #{state}" do
        project_status = Codeship::Status.new state, branch: 'master'
        project_status.status.should == state
      end
    end
  end
end
