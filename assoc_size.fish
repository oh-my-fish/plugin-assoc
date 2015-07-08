function assoc_size --description 'Get size of an associative array'
  set --local container ''
  if [ $argv[1] = '--' ]
    if read -l line
        set container $line
    end
  else
    set container $argv[1]
  end

  ruby -rbase64 -e "puts eval(Base64.decode64(ARGV[0]).force_encoding('UTF-8')).size" $container
end
