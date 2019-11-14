# Serverless Mono Dev Dependency Reproduction

## Steps to reproduce

1. Run the following to set everything up

```
cd mono && yarn && yarn package && \
cd ../no-mono && yarn && yarn package && \
cd ../
```

2. Then go into the .serverless folders in these two places and unzip the 

```
