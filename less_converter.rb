module Jekyll
  class LessConverter < Converter
    VERSION = '1.0'

    safe true
    priority :high

    def setup
      return if @setup
      require 'less'
      @setup = true
      rescue LoadError
        STDERR.puts "The less gem is required for this generator\n"
        STDERR.puts "Please install less with the following command:\n"
        STDERR.puts "gem install less"
        raise FatalException.new("Missing dependency: less")
    end

    def matches(ext)
      ext =~ /less|lcss/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      setup
      begin
        Less::Parser.new.parse(content).to_css(:compress => true)
      rescue => e
        puts "LessParser Exception: #{e.message}"
      end
    end
  end
end
