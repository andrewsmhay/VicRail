require 'rubygems'
require 'uirusu'
require 'digest'

# Virus total API key
VT_API_KEY = ""

digest_sha1 = []
digest_sha256 = []
digest_mdfive = []
filename = []
x = 0
y = 0
a = 0
b = 0
c = 0
d = 0
md5val = 0
sha1val = 0
sha256val = 0
ocidval = 0
orignameval = ""
fileaddval = ""
clamavvalname = ""
kasavvalname = ""
bitavvalname = ""

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

mdfive = Digest::MD5.new
filename.each do |hashmash5|
  digest_mdfive << Digest::MD5.file(hashmash5).hexdigest
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

puts "==== Open Malware - http://oc.gtisc.gatech.edu:8080/ ===="
filename.each do |hashmashom|
  puts "#{hashmashom} - sha256"
  full_url = `curl --silent http://oc.gtisc.gatech.edu:8080/search.cgi?search=#{digest_sha256[c]}`
  if full_url =~ /Found \d{1,} Result\(s\) for/
    puts "Hash identified in the database...\n"
    md5val = "#{full_url}"[/MD5:<\/b>\s<\/td>\s<td id="checksum">\s(.*)/,1]
    sha1val = "#{full_url}"[/SHA1:<\/b>\s<\/td>\s<td id="checksum">\s(.*)/,1]
    sha256val = "#{full_url}"[/SHA256:<\/b>\s<\/td>\s<td id="checksum">\s(.*)/,1]
    ocidval = "#{full_url}"[/OCID:<\/b>\s<\/td>\s<td id="checksum">\s(.*)/,1]
    orignameval = "#{full_url}"[/Original Filename:<\/b>\s<\/td>\s<td id="checksum">\s(.*)/,1]
    fileaddval = "#{full_url}"[/Added:<\/b>\s<\/td>\s<td>\s(.*)/,1]
    clamavvalname = "#{full_url}"[/<b>ClamAV:<\/b>\s<\/td>\s<td>\s(.*)/,1]
    kasavvalname = "#{full_url}"[/<b>Kaspersky:<\/b>\s<\/td>\s<td>\s(.*)/,1]
    bitavvalname = "#{full_url}"[/<b>BitDefender:<\/b>\s<\/td>\s<td>\s(.*)/,1]
    puts "\n"
    puts "MD5: #{md5val}"
    puts "SHA1: #{sha1val}"
    puts "SHA256: #{sha256val}"
    puts "\n"
    puts "OCID: #{ocidval}"
    puts "Original Filename: #{orignameval}"
    puts "File Added: #{fileaddval}"
    puts "ClamAV: #{clamavvalname}"
    puts "Kaspersky: #{kasavvalname}"
    puts "BitDefender: #{bitavvalname}"
    puts "\n"
    c = c + 1
  else 
    puts "The hash was not found in the database...\n"
    puts "\n"
    c = c + 1
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

puts "==== Simseer Search - http://http://www.simseer.com/ ===="
filename.each do |hashmash5|
  puts "#{hashmash5} - md5"
  full_url = `curl --silent http://www.simseer.com/webservices/SimseerSearch/SimseerSearch-print-report.php?h=#{digest_mdfive[d]}`
  #full_url_nul = "#{full_url}"[/No such hash sorry :\(/,1]
  if full_url =~ /AV Results<\/h2>\sAV doesn't report it as malicious.\s/
    puts "The hash was not found in the database...\n"
    puts "\n"
    d = d + 1
  else 
    puts "Hash identified in the database...\n"
    fname_sim = "#{full_url}"[/Filename<\/td><td>(.*)<\/td><\/tr>/,1]
    thresh_sim = "#{full_url}"[/Threshold<\/td><td>(.*)<\/td><\/tr>/,1]
    avres_sim = "#{full_url}"[/AV reports it as <font color="red">(.*)<\/font>/,1]
    heur_sim = "#{full_url}"[/Heuristics<\/h2>\s(.*)\s/,1]
    puts "Filename: #{fname_sim}"
    puts "Threshold: #{thresh_sim}"
    puts "AV reports it as: #{avres_sim}"
    puts "Heuristics: #{heur_sim}"
    #puts full_url
    puts "\n"
    d = d + 1
  end
end
