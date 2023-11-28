# website mirror

## certificate setup

First copy `name.conf`, to work dir.

### create ca

```bash
openssl req -config ca.conf -x509 -new -days 365 -keyout ca.key -out ca.pem
```

### Create website certificate

Create csr:

```bash
openssl req -config domain.conf -new -keyout domain.key  -out domain.csr
```

Sign request for first website:

```bash
openssl x509 -req -extfile domain.conf -in domain.csr -days 365 -CA ca.pem -CAkey ca.key -CAcreateserial -out domain.pem
```

Sign request for other website:

```bash
openssl x509 -req -extfile domain.conf -in domain.csr -days 365 -CA ca.pem -CAkey ca.key -CAserial ca.srl -out domain.pem
```
