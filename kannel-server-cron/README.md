Kannel Server (without WAP)
----------------------------

Building The Docker Image
=========================

   `
     docker build -t juneym/kannel-server-cron  .

     docker build -t repo.tnx.solutions:6000/juneym/kannel-server-cron .
     docker build -t repo.tnx.solutions:6000/juneym/kannel-server-cron:v1 .
   `

Running an Instance
===================

   `
    docker run --rm --name kannel-server -t juneym/kannel-server-cron

    or 

    docker run --rm --name kannel-server -t repo.tnx.solutions:6000/juneym/kannel-server-cron
   `
   
Running An Instance with mounted /var/log/kannel
=================================================
   
   ` 
     docker run --rm --publish-all=true -v /path/to/your/kannel-logs:/var/log/kannel --name kannel-server -t juneym/kannel-server-cron

     or 

     docker run --rm --publish-all=true -v /path/to/your/kannel-logs:/var/log/kannel --name kannel-server -t repo.tnx.solutions:6000/juneym/kannel-server-cron
   `

Running An Instance with volume mounts and specific port publishing
====================================================================

    `
     docker run --rm -p13000:13000 -p13013:13013 -v /path/to/your/kannel-logs:/var/log/kannel --name kannel-server -t juneym/kannel-server-cron

     or 

     docker run --rm -p13000:13000 -p13013:13013 -v /path/to/your/kannel-logs:/var/log/kannel --name kannel-server -t repo.tnx.solutions:6000/juneym/kannel-server-cron
    `
