# create curl script 


## requestment
Hi,

I need you create for me curl script that check the responses from the servers and filter them

So let me clarify it !

We have 40 differents servers listed on the server configuration file "Servers.xml"
Each server on this list is identified by an "ID" ( un number ex : "4500" ) and an URL

What we need is to check if all the 40 servers are available and working so we will send an CURL request and see the response

We know how to do that, but the problem is that we have 40 server so every time we need to execute the CURL x 40 times !

This is the CURL :

curl -X POST -H 'Content-type:text/xml' -d @4500.xml https://localhost/script/

As you can see the CURL containt a XML content, we have an xml content for each server with the server ID number 'serverIDnumber.xml'

So the script will execute the same CURL request by changing the xml file name we will provide you a text file with all the 40 servers xml files everyone on a line

And the response is :


```xml
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Header/>
<SOAP-ENV:Body>
<ns2:Reponse xmlns:ns2="http://searchsea.com/request/">
<ns2:accord>true</ns2:accord>
<ns2:StatusEnrolement>KO</ns2:StatusEnrolement>
<ns2:Reference>22232323323</ns2:Reference>
<ns2:AcsTransId>2222222222</ns2:AcsTransId>
<ns2:ScadIdTrans>F8E90082112590</ns2:ScadIdTrans>
<ns2:ChoixAuthent>STRONG</ns2:ChoixAuthent>
<ns2:NiveauAuthent>32</ns2:NiveauAuthent>
<ns2:Retour>
<ns2:CodeMessage>03</ns2:CodeMessage>
<ns2:LibelleMessage>Téléphone OK- Mail OK</ns2:LibelleMessage>
<ns2:RetourMetier><![CDATA[<MESSAGE>
<LDISPOSITIF IDNISE="01">
<NUTELF ADRRTC="0120202020" CDPORT="O" />
<ADEMAF ADREMA="email email.com" />
</LDISPOSITIF>
<PARTENAIRESCAD IDPIVOT="F50032065474648 " />
</MESSAGE>]]></ns2:RetourMetier>
</ns2:Retour>
</ns2:Reponse>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>

```

The result that we want is :

The script check all the 40 servers responses and show us the result on a table format :

Server ID | Server Name | Server HTTP code Statut | Server Accord response |



## usage

```shell
sudo ./s1_add_domain_by_root.sh
```

```shell
sh s2_docker_compose.sh
```

```log
container-4 is up-to-date
container-3 is up-to-date
container-1 is up-to-date
container-5 is up-to-date
container-2 is up-to-date
Creating nginx-proxy ... done
Attaching to container-4, container-3, container-1, container-5, container-2, nginx-proxy
container-1            | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
container-1            | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
container-1            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
container-1            | 10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
container-1            | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf differs from the packaged version
container-1            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
container-1            | /docker-entrypoint.sh: Configuration complete; ready for start up
nginx-proxy            | WARNING: /etc/nginx/dhparam/dhparam.pem was not found. A pre-generated dhparam.pem will be used for now while a new one
nginx-proxy            | is being generated in the background.  Once the new dhparam.pem is in place, nginx will be reloaded.
container-2            | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
container-2            | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
container-2            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
container-2            | 10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
container-2            | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf differs from the packaged version
container-2            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
container-2            | /docker-entrypoint.sh: Configuration complete; ready for start up
container-3            | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
container-3            | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
container-3            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
container-3            | 10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
container-3            | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf differs from the packaged version
container-3            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
container-3            | /docker-entrypoint.sh: Configuration complete; ready for start up
container-4            | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
container-4            | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
container-4            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
container-4            | 10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
container-4            | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf differs from the packaged version
container-4            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
container-4            | /docker-entrypoint.sh: Configuration complete; ready for start up
container-5            | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
container-5            | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
container-5            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
container-5            | 10-listen-on-ipv6-by-default.sh: Getting the checksum of /etc/nginx/conf.d/default.conf
container-5            | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf differs from the packaged version
container-5            | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
container-5            | /docker-entrypoint.sh: Configuration complete; ready for start up
nginx-proxy            | forego     | starting dockergen.1 on port 5000
nginx-proxy            | forego     | starting nginx.1 on port 5100
nginx-proxy            | nginx.1    | 2020/10/29 09:23:30 [warn] 31#31: conflicting server name "localhost" on 0.0.0.0:80, ignored
nginx-proxy            | dockergen.1 | 2020/10/29 09:23:30 Generated '/etc/nginx/conf.d/default.conf' from 6 containers
nginx-proxy            | dockergen.1 | 2020/10/29 09:23:30 Running 'nginx -s reload'
nginx-proxy            | dockergen.1 | 2020/10/29 09:23:30 Watching docker events
nginx-proxy            | nginx.1    | 2020/10/29 09:23:30 [warn] 31#31: conflicting server name "server-4501.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | dockergen.1 | 2020/10/29 09:23:31 Contents of /etc/nginx/conf.d/default.conf did not change. Skipping notification 'nginx -s reload'
nginx-proxy            | 2020/10/29 09:23:50 [warn] 46#46: conflicting server name "server-4501.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | nginx: [warn] conflicting server name "server-4501.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | 2020/10/29 09:23:50 [warn] 46#46: conflicting server name "server-4502.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | nginx: [warn] conflicting server name "server-4502.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | 2020/10/29 09:23:50 [warn] 46#46: conflicting server name "server-4503.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | nginx: [warn] conflicting server name "server-4503.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | 2020/10/29 09:23:50 [warn] 46#46: conflicting server name "server-4504.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | nginx: [warn] conflicting server name "server-4504.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | 2020/10/29 09:23:50 [warn] 46#46: conflicting server name "server-4505.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | nginx: [warn] conflicting server name "server-4505.localhost" on 0.0.0.0:80, ignored
nginx-proxy            | 2020/10/29 09:23:50 [notice] 46#46: signal process started
nginx-proxy            | Generating DH parameters, 2048 bit long safe prime, generator 2
nginx-proxy            | This is going to take a long time
nginx-proxy            | dhparam generation complete, reloading nginx
nginx-proxy            | nginx.1    | 2020/10/29 09:23:50 [warn] 31#31: conflicting server name "server-4501.localhost" on 0.0.0.0:80, ignored
```

```
sh s3_delay_call.sh
```


```log
 Server ID	|	         Server Name	|	code Statut	|	    Accord
      4501	|	server-4501.localhost	|	       200	|	      4501
      4502	|	server-4502.localhost	|	       200	|	      4502
      4503	|	server-4503.localhost	|	       200	|	      4503
      4504	|	server-4504.localhost	|	       200	|	      4504
      4505	|	server-4505.localhost	|	       200	|	      4505
      4506	|	server-4506.localhost	|	       000	|
```

