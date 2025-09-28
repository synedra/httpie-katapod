<!-- Step 1: Connect to Astra DB and create a database -->
<!-- CodeTour step content is provided by the tour descriptions -->

# Step 1: Connect to Astra DB

```
astra setup
```

```
astra db create workshops -k library --if-not-exist --wait
```

```
astra db get workshops
```

```
astra db create-dotenv -k library workshops
```

```
python assets/set-environment.py .env workshops
```

```
http :/rest/v1/keyspaces
```
