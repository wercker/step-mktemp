# mktemp 

A step to create a temporary file or directory and store the path in a environment variable. This environment variable can be used by other steps to store and read temporary data.

[![wercker status](https://app.wercker.com/status/78dd8423c33d3606752b9197f070dac4/m "wercker status")](https://app.wercker.com/project/bykey/78dd8423c33d3606752b9197f070dac4)

# What's new

- Add badge to README
- Fixed typo in success output

# Options

* `envvar` (required) The environment variable where the path to the file or directory will be stored
* `directory` (optional, default: `false`) If this is `true` a directory will be created, instead of a file.

# Example

Create a temporary file and store the path in the environment variable `$TEMPORARY_FILE`

``` yaml
build:
  steps:
    - mktemp:
        envvar: TEMPORARY_FILE
```

Create a temporary directory and store the path in the environment variable `$TEMPORARY_DIRECTORY`

``` yaml
build:
  steps:
    - mktemp:
        envvar: TEMPORARY_DIRECTORY
        directory: true
```

# License

The MIT License (MIT)

# Changelog

## 1.0.1

- Add badge to README
- Fixed typo in success output

## 1.0.0

- Initial release
