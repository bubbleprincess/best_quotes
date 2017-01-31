class QuotesController < Rilakkuma::Controller
  def a_quote
    "There is nothing either good or badish " +
      "but thinking makes it so."
      "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "It's a bad one!"
  end
end