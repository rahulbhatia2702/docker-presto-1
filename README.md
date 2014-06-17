docker-presto
==============

This project containerizes Presto. See http://prestodb.io/ for more information.

```
wget http://central.maven.org/maven2/com/facebook/presto/presto-server/0.69/presto-server-0.69.tar.gz
./build_image.sh
./run_image.sh
```

Inside the image, run the following to start Presto:

```
/configure.sh
```

You can see what URL and PORT is being used by Presto this way:

```
./what-is-ui-url.sh
```

# Important Note

This is a transient instance. It does not store information outside the image. Therefore when the image is stopped, the information is gone. 
