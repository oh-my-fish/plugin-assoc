function assoc_get --description 'Gets a value from an associative array'
  set --local container ''
  if [ $argv[1] = '--' ]
    if read -l line
        set container $line
    end
  else
    set container $argv[1]
  end
  ruby -rbase64 -rshellwords -e "puts Shellwords.escape(eval(Base64.decode64(ARGV[0]).force_encoding('UTF-8'))[ARGV[1]].to_s)" $container $argv[2..-1]
end
