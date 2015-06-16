#!/usr/bin/env ruby

require 'pathname'
require 'active_support/core_ext/hash/transform_values'

class Dir
  def non_hidden_files
    reject { |file|
      ( file.match /^[.]/ ) ||         # hidden files, `.`, `..`
      ( test ?d, pathname.join(file) ) # dirs
    }
  end

  def tally_files
    files_grouped_by_extension
      .transform_values(&:count)
  end

  def files_grouped_by_extension
    non_hidden_files
      .group_by { |file| File.extname pathname.join(file) }
      .tap do |hash|
        hash['[none]'] = hash.delete('') if hash.has_key? ''
      end
  end

  def pathname
    ::Pathname.new(Dir.pwd).join(self)
  end
end

class PP
  def self.pretty_print_tally_hash(hash)
    longest_count = hash.values.max.to_s.length
    longest_ext   = hash.keys.max_by(&:length).length

    format = "%#{longest_ext}<ext>s => %#{longest_count}<count>d"

    # hash.sort_by(&:last).reverse
    hash.sort{|(_,count_a),(_,count_b)| count_b<=>count_a}
      .each do |(ext, count)| 
        puts format % { ext: ext, count: count }
      end
  end
end

# learned
#   * Enumerable#max_by
#   * Kernel#test http://ruby-doc.org/core-2.2.0/Kernel.html#method-i-test
#   * named sprintf formatting (see `format` above)
#   * remembered / used block param `|(foo,bar)|` syntax
#   * hash.sort_by &:last # also, sort/sort_by use #to_a
#
# todo
#   * vim shortcut to wrap unwrapped args
