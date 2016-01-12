# rails-basic-token-auth
A basic token auth implementation built with Ruby On Rails

To build the project first run `bundle-install`, then run the migrations with `rake db:migrate`, then seed the database with sample data `rake db:seed`.

To log in you have to send a base64 encoded string with the email and password, e.g:

```
Base64.encode64("user@example.com:password")
# This returns dXNlckBleGFtcGxlLmNvbTpwYXNzd29yZA==\n

curl http://localhost:3000/token -H 'Authorization: Basic dXNlckBleGFtcGxlLmNvbTpwYXNzd29yZA==\n'
# This returns a token that you can use in subsequent requests: {"token":"15e8ac31400812e7bfbc2b199b076a86"}
```

Then on any other requests you include that token, e.g:

```
curl localhost:3000/items -H 'Authorization: Token token=15e8ac31400812e7bfbc2b199b076a86'
# This returns [{"id":1,"description":"Computer","price":"120.05"},{"id":2,"description":"Cellphone","price":"50.69"},{"id":3,"description":"Candy","price":"1.02"}]
```

If you want to secure just some specific controllers you can do that by including the authentication filter in your controllers:

```
before_filter :authenticate_user_from_token
```