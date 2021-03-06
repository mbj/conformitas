begin
  require 'rspec'  # try for RSpec 2
rescue LoadError
  require 'spec'   # try for RSpec 1
  RSpec = Spec::Runner
end

require 'conformitas'

# require spec support files and shared behavior
Dir[File.expand_path('../shared/**/*.rb', __FILE__)].each { |file| require file }

RSpec.configure do |config|
end

# change the heckle timeout to be 5 seconds
if defined?(::Heckle)
  class ::Heckle
    @@timeout = 5
  end
end
