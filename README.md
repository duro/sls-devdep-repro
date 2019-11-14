# Serverless Mono Dev Dependency Reproduction

## The Problem

It would appear that when using `serverless-plugin-monorepo` if your service package.json has a `devDependency` which also happens to be a non-dev `dependency` of another module, and the versions are the same (so they both rely on the module installed at the top of node_modules), what will happen is that the `devDependency` gets removed.

In this reproduction, the example module we are using is `uuid`, which in this case, is a core dependency of the @nestjs/common package, but a devDependency of our own service.

## Steps to reproduce

1. Run the following to set everything up

```
./setup.sh
```

2. Then go inspect the node_modules folder of the following paths

`mono/services/test-service/.serverless/test-service`
`no-mono/.serverless/test-service`

What you'll find is that in the `mono` one, which uses `serverless-plugin-monorepo`, the package `uuid` will not be present

However, in the `no-mono` version, which does not use `serverless-plugin-monorepo`, and just relies on Serverless's packager raw, `uuid` is still there.