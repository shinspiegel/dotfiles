mkdir .certs
cd .certs
mkcert -cert-file cert.pem -key-file key.pem -p12-file pkcs.p12 localhost 0.0.0.0 ::1
mkcert -cert-file cert.pem -key-file key.pem -p12-file pkcs.p12 -pkcs12 localhost 0.0.0.0 ::1
mkcert -install