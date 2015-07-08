function assoc_keys --description 'Lists associative array keys'
  set --local container ''
  if [ $argv[1] = '--' ]
    if read -l line
        set container $line
    end
  else
    set container $argv[1]
  end
  ruby -rbase64 -rshellwords -e "puts eval(Base64.decode64(ARGV[0]).force_encoding('UTF-8')).keys.map{|v| Shellwords.escape(v)}.join(\"\n\")" $container
end
