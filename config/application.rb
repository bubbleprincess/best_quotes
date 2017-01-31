require "rilakkuma"

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app","controllers")

module BestQuotes
  class Application < Rilakkuma::Application
  end
end