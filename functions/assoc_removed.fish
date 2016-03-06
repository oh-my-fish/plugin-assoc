function assoc_removed --description 'Removes keys from an associative array'
  set --local container ''
  if [ $argv[1] = '--' ]
    if read -l line
        set container $line
    end
  else
    set container $argv[1]
  end
  ruby -rbase64 -e "tmp = eval(Base64.decode64(ARGV[0]).force_encoding('UTF-8')); ARGV[1..-1].each {|k| tmp.delete(k)}; puts Base64.strict_encode64(tmp.to_s)" $container $argv[2..-1]
end
