## Module AWS.SMS

Amazon Server Migration Service automates the process of migrating servers to EC2.

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


