# Rack::Crossdomain::Xml

A rack middleware that serves a standard crossdomain.xml

## Usage

Just use the ``Rack::Crossdomain::Xml::Middleware`` middleware in your rack stack. A ``crossdomain.xml`` will automatically served at the root level.

```ruby
require 'rack/crossdomain/xml'

use Rack::Crossdomain::Xml::Middleware
```