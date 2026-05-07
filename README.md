# Docker container for CollateX

## HTTP POST requests with CURL

curl --header "Accept: application/tei+xml" --request POST --data '{"witnesses":[{"id":"W1","content":"<p>Hallo</p>"},{"id":"W2","content":"<p>Hello</p>"}],"algorithm":"dekker","tokenComparator":{"type":"equality"},"joined":true,"transpositions":true}' http://localhost:7369/collate


