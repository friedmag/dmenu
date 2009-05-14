require 'fileutils'

class DMenu

  class Helper

    def self.getopts(args, *opts)
      values = []
      ret = []
      hash = args.inject({}) do |hash, arg|
        if Hash === arg
          hash.merge!(arg)
        end
        hash
      end
      args.each {|arg| values.push arg unless Hash === arg}
      opts.each do |opt|
        if hash[opt]
          ret.push hash[opt]
        else
          ret.push nil
        end
      end
      ret.push values
    end

  end

  def self.dmenu(*args)
    cmd, values = Helper.getopts(args, :cmd)
    dm = IO.popen((cmd or 'dmenu'), 'w+')
    values.each do |value|
      dm.puts value
    end
    dm.close_write
    value = dm.read
    dm.close
    unless $? == 0
      raise 'Operation cancelled'
    end
    value
  end

end
