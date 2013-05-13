require 'rubygems'
require 'uirusu'
require 'digest'

# Virus total API key
VT_API_KEY = ""

digest_sha1 = []
digest_sha256 = []
filename = []
x = 0
y = 0
a = 0
b = 0

ARGV.each do |arg|
  filename << arg
end

# calculate hashes
sha1 = Digest::SHA1.new
filename.each do |hashmash|
  digest_sha1 << Digest::SHA1.file(hashmash).hexdigest
end

sha256 = Digest::SHA256.new
filename.each do |hashmash256|
  digest_sha256 << Digest::SHA256.file(hashmash256).hexdigest
end

puts "==== VirusTotal - www.virustotal.com ===="
filename.each do |hashmashvt|
  puts "#{hashmashvt} - sha1"
  results = Uirusu::VTFile.query_report(VT_API_KEY, digest_sha1[x])
  result = Uirusu::VTResult.new(digest_sha1[x], results)
  if result != nil
    puts "Hash identified in the database...\n"
    puts result.to_stdout
    puts "\n"
    x = x + 1
  else
    puts "The hash was not found in the database...\n"
    x = x + 1
  end
end

filename.each do |hashmashvt256|
  puts "#{hashmashvt256} - sha256"
  results = Uirusu::VTFile.query_report(VT_API_KEY, digest_sha256[y])
  result = Uirusu::VTResult.new(digest_sha256[y], results)
  if result != nil
    puts "Hash identified in the database...\n"
    puts result.to_stdout
    puts "\n"
    y = y + 1
  else
    puts "The hash was not found in the database...\n"
    y = y + 1
  end
end

puts "==== Shadowserver - http://bin-test.shadowserver.org/ ===="
filename.each do |hashmashss|
  puts "#{hashmashss} - sha1"
  full_url = `curl --silent http://bin-test.shadowserver.org/api?sha1=#{digest_sha1[b]}`
  if full_url =~ /{}/
    puts "The hash was not found in the database...\n"
    puts "\n"
    b = b + 1
  else 
    puts "Hash identified in the database...\n"
    puts full_url
    puts "\n"
    b = b + 1
  end
end

puts "==== Team Cymru Malware Hash Registry - http://www.team-cymru.org/Services/MHR/ ===="
filename.each do |hashmashcym|
  puts "#{hashmashcym} - sha1"
  results = `whois -h hash.cymru.com #{digest_sha1[a]}`
  if results =~ /NO_DATA/
    puts "The hash was not found in the database...\n"
    puts "\n"
    a = a + 1
  else
    puts "Hash identified in the database...\n"
    puts results
    puts "\n"
    a = a + 1
  end
end
