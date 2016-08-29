Kannel Server (without WAP)
----------------------------

Building The Docker Image
=========================

   `
     docker build -t juneym/kannel-server  .
   `

Running an Instance
===================

   `
    docker run --rm -t juneym/kannel-server -name kannel-server
   `
   
Running An Instance with mounted /var/log/kannel
=================================================
   
   ` 
     docker run --rm --publish-all=true -v kannel-logs:/var/log/kannel --name kannel-server -t juneym/kannel-server
   `
