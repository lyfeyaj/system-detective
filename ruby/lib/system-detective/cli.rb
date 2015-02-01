require 'system-detective'
require 'optparse'

module SystemDetective
  class Cli
    def self.run(args, out = STDOUT)
      OptionParser.new do |opts|
        opts.banner = "Usage:\n    system-detective [options] <log-directory>"
        opts.separator "\nOptions: "

        opts.on_tail("-v", "--version", "Print version number") do
          require "system-detective/version"
          out << "System Detective #{SystemDetective::VERSION}\n"
          exit
        end

        opts.on_tail("-h", "--help", "Print this help") do
          out << "Look up and analyze system logs information by different strategies.\n\n"
          out << opts
          out << "\nCreated and maintained by Felix Liu, available under the MIT License.\n"
          out << "Report bugs and contribute at http://github.com/lyfeyaj/system-detective\n"
          exit
        end
      end.parse!(args)
    end
  end
end
