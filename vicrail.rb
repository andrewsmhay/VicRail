require 'rubygems'
require 'uirusu'
require 'digest'

# Virus total API key
APT_KEY = "INSERT YOUR KEY"

filename = []
ARGV.each do |arg|
  filename << arg
end

sha256 = Digest::SHA256.new
filename.each do |hashmash|
  digest = Digest::SHA256.file(hashmash).hexdigest 
  #To query a hash(sha1/sha256/md5)
  puts hashmash
  results = Uirusu::VTFile.query_report(APT_KEY, digest)
  result = Uirusu::VTResult.new(digest, results)
  puts result.to_stdout if result != nil
end
