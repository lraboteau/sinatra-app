# spec/main_spec.rb
require_relative '../app/controllers/main.rb'

RSpec.describe Main do
  include Rack::Test::Methods

  # Prepare
  def app
    Main
  end

  describe 'GET homepage' do
    context "GET /" do
      it "should returns the status 200" do
        # Execute
        get '/'
        # Assert
        expect(last_response.status).to eq 200
      end
    end
  end
end