# expo-init-docker-compose

0. env file を作成。 `REACT_NATIVE_PACKAGER_HOSTNAME` にローカルPCの ip を入力する。
https://stackoverflow.com/questions/43696813/react-native-expo-change-default-lan-ip
例)
```
REACT_NATIVE_PACKAGER_HOSTNAME=192.168.0.1
```

1.
```
docker-compose build
```

2.
```
docker-compose up -d
```

3.
```
docker-compose exec app bash
```

4.
```
expo start
```
