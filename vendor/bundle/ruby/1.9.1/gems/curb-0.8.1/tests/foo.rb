require 'curb'

SSL_CERT = '/path/to/my/cert'
SSL_KEY = '/path/to/my/key'

curl = Curl::Easy.new('98.129.21.125')
curl.verbose = true
curl.cert = SSL_CERT
curl.cert_key = SSL_KEY
curl.follow_location = true
curl.ssl_verify_host = false
curl.ssl_verify_peer = false
curl.perform
