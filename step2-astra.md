<!-- Step 2: Working with Tables -->
<!-- CodeTour step content is provided by the tour descriptions -->

# Step 2: Working with Tables

```
http :/rest/v2/schemas/keyspaces
```

```
http POST :/rest/v2/schemas/keyspaces/library/tables json:='{
	"name": "users",
	"columnDefinitions":
	  [
        {
	      "name": "firstname",
	      "typeDefinition": "text"
	    },
        {
	      "name": "lastname",
	      "typeDefinition": "text"
	    },
        {
	      "name": "favorite color",
	      "typeDefinition": "text"
	    }
	  ],
	"primaryKey":
	  {
	    "partitionKey": ["firstname"],
	    "clusteringKey": ["lastname"]
	  },
	"tableOptions":
	  {
	    "defaultTimeToLive": 0,
	    "clusteringExpression":
	      [{ "column": "lastname", "order": "ASC" }]
	  }
}'
```

```
http :/rest/v2/schemas/keyspaces/library/tables
