# Platformatic DB with Authorization

## Configure Authorization

In `platformatic.db.json`, add the `authorization` object.

```json
{
    "authorization": {
        "jwt": {
            "secret": "yoursecret"
        }
    }
}
```

Make sure the authentication service/server respond with JWT that has the following properties on the claim:

```json
{
    "X-PLATFORMATIC-USER-ID": "exampleid",
    "X-PLATFORMATIC-ROLE": [
        "user"
    ]
}
```

> You can put any user ID or role according to your system needs. The above value is just an example.

Then, create rules under the authorization object. Here's an example


```json
{
    "authorization": {
        "rules": [
            {
                "role": "user",
                "entity": "book",
                "find": true
            }
        ]
    }
}
```

The example rules allows `find` operation on entity `book` for user with role `user`.

Let's say that you have obtained the JWT from the authentication service/server. Then you can put the JWT on the `Authorization` header

```
Authorization: Bearer $JWT
```
