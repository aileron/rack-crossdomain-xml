module Rack::Crossdomain::Xml
  class Middleware
    XML_PATH = File.expand_path("../documents", __FILE__)

    def initialize(app)
      @app = app
    end

    def call(env)
      return crossdomain_xml(env) if crossdomain_path?(env)
      @app.call(env)
    end

    protected
    def crossdomain_path?(env)
      env['PATH_INFO'] == '/crossdomain.xml'
    end

    def crossdomain_xml(env)
      xml_app.call(env)
    end

    def xml_app
      @xml_app ||= Rack::File.new(XML_PATH)
    end
  end
end