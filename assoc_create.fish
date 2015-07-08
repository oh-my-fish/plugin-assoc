function assoc_create --description 'Creates a new associative array'
  ruby -rbase64 -e "puts Base64.strict_encode64(ARGV.each_slice(2).map {|a,b| [a,b]}.to_h.to_s)" $argv
end
