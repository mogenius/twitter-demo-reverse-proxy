# Mogenius demo setup for multiple API services with nginx reverse proxy

## API endpoints

### Routes Service 1
```
get('/', $handle);
get('/user/$id', $handle);
get('/user/$name/$last_name', $handle);
```

### Routes Service 2
```
get('/', $handle);
get('/product/$type/color/:color', $handle);
get('/item/$name', $handle);
```

[Service A: /](/service/1)
[Service A: /user/$id](/service/1/user/foo)
[Service A: /user/$name/$last_name](/service/1/user/foo/bar)
[Service A with params](/service/1?param1=value1)

[Service B: /product/$type/color/:color](/service/2/e-class/color/gray)
[Service B: /item/$name](/service/2/item/t-shirt)
[Service B with path and params](/service/2/new/route2?param1=value1)