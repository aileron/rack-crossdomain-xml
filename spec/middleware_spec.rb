require_relative './spec_helper'

require 'rack/client'

describe Rack::Crossdomain::Xml::Middleware do
  before do
    @client = Rack::Client.new do
      use Rack::Crossdomain::Xml::Middleware

      run lambda {|e| [200, {'Content-Type' => 'text/plain'}, ['Nothing here...']]}
    end
  end

  it "should serve a crossdomain.xml" do
    xml_path = File.expand_path("../../lib/rack/crossdomain/xml/documents/crossdomain.xml", __FILE__)
    xml_file = File.read(xml_path)
    response = @client.get "/crossdomain.xml"
    response.body.must_equal xml_file
    response.headers['Content-Type'].must_equal "application/xml"
    response.headers['Content-Length'].must_equal File.size(xml_path).to_s
  end

  it "should not interfere with the app" do
    response = @client.get "/"
    response.body.must_equal 'Nothing here...'
  end
end