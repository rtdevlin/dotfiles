#!/usr/bin/env ruby 

file = ARGV[0]

fail ArgumentError.new 'Please pass a filename' unless file

file += '.rb' unless file.match(/.rb$/)

`echo "#!/usr/bin/env ruby\n\n" > #{file}`
`chmod u+x #{file}`
