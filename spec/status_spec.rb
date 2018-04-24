require 'spec_helper'

RSpec.describe Codeship::Status do
  context 'parsing the project status' do
    context 'which returns a png' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.png\""})

          project_status = Codeship::Status.new(state)
          expect(project_status.status).to eq(state)
        end
      end
    end

    context 'which returns a gif' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.gif\""})

          project_status = Codeship::Status.new(state)
          expect(project_status.status).to eq(state)
        end
      end
    end

    context 'which returns a svg' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.svg\""})

          project_status = Codeship::Status.new(state)
          expect(project_status.status).to eq(state)
        end
      end
    end
  end

  context 'parsing the project status on a certain branch' do
    context 'which returns a png' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status?branch=master").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.png\""})

          project_status = Codeship::Status.new(state, branch: 'master')
          expect(project_status.status).to eq(state)
        end
      end
    end

    context 'which returns a gif' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status?branch=master").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.gif\""})

          project_status = Codeship::Status.new(state, branch: 'master')
          expect(project_status.status).to eq(state)
        end
      end
    end

    context 'which returns a svg' do
      Codeship::Status::STATES.each do |state|
        it "should parse #{state}" do

          stub_request(:head, "https://app.codeship.com/projects/#{state}/status?branch=master").
                   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
                   to_return(status: 200, body: "", headers: {'Content-Disposition' => "inline; filename=\"status_#{state}.svg\""})

          project_status = Codeship::Status.new(state, branch: 'master')
          expect(project_status.status).to eq(state)
        end
      end
    end
  end
end
