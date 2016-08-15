Gearman Server
----------------

Configurations: 

  1. -t (threads) is set to 22
  2. -j (job retries) is set to 10
  3. round-robin is set to true
  4. verbose logging is set to WARNING
  5. Default port is exposed
  6. The gearman log server is a volume (so you can set `-v <external-path>:/var/log/gearmand` when running the container)



 
