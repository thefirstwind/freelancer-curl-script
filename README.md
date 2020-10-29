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

