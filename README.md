# mktemp 

A step to create a temporary file or directory and store the path in a environment variable. This environment variable can be used by other steps to store and read temporary data.

[![wercker status](https://app.wercker.com/status/78dd8423c33d3606752b9197f070dac4/m "wercker status")](https://app.wercker.com/project/bykey/78dd8423c33d3606752b9197f070dac4)

# What's new

- Initial release

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

Copyright (c) 2013 wercker

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 1.0.0

- Initial release
