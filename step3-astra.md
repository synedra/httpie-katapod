<!-- Step 3: Working with Data -->
<!-- CodeTour step content is provided by the tour descriptions -->

# Step 3: Working with Data

```
http POST :/rest/v2/keyspaces/library/users json:='
{
    "firstname": "Mookie",
    "lastname": "Betts",
    "favorite color": "blue"
}'
```

```
http POST :/rest/v2/keyspaces/library/users json:='
{
    "firstname": "Janesha",
    "lastname": "Doesha",
    "favorite color": "grey"
}'
```

```
http :/rest/v2/keyspaces/library/users where=='{"firstname":{"$in":["Mookie","Janesha"]}}' -vvv
```

```
http PUT :/rest/v2/keyspaces/library/users/Janesha/Doesha json:='{ "favorite color": "Fuchsia"}'
```

```
http DELETE :/rest/v2/keyspaces/library/users/Janesha/Doesha
```

```
http DELETE :/rest/v2/schemas/keyspaces/library/tables/users
