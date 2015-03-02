require 'spec_helper'

RSpec.describe Codeship::Status do

  context 'parsing the project status', :vcr do
    Codeship::Status::STATES.each do |state|
      it "should parse #{state}" do
        project_status = Codeship::Status.new(state)
        expect(project_status.status).to eq(state)
      end
    end
  end

  context 'parsing the project status on a certain branch', :vcr do
    Codeship::Status::STATES.each do |state|
      it "should parse #{state}" do
        project_status = Codeship::Status.new(state, branch: 'master')
        expect(project_status.status).to eq(state)
      end
    end
  end
end
