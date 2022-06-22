$LOAD_PATH << '.'
require 'app'

def main
  app = App.new
  app.run
end

main
