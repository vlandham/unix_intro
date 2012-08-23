#!/usr/bin/env ruby

input_filename = ARGV[0]

lines = File.open(input_filename,'r').read

  puts "<div id=\"toc\"><ul>"
lines.each_line do |line|
  if line =~ /^##(.*)\[(.*)\]/ and line[2..2] != "#"
    title = $1
    id = $2
    puts "<li><a href=\"index.html##{id}\">#{title.strip}</a></li>"

  end
end
  puts "</ul></div>"
