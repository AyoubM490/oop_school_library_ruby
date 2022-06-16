$LOAD_PATH << '.'
#!/usr/bin/env ruby
require './app.rb'

def main
  app = App.new
  app.run
end

main