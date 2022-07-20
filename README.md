# Cachier Python

A python library wrapper for using a self-hosted cachier service.

URL: [cachier-python](https://pypi.org/project/cachier-python/)

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [Contributing](#contributing)

## Installation

Install the package from pypi:

```sh
pip install cachier-python
```

## Usage

```python
from cachier_python import Cachier, DriverType

# Create a cachier instance to connect to the service
client = Cachier('http://localhost:8000', driver=DriverType.RAM)

# cache expiry in seconds
CACHIER_EXPIRY = 600

# set the cache
client.set(key='my_key', value='my_value', expiry=CACHIER_EXPIRY)

# get the cached value
cached_value = client.get(key='my_key')
```

Available drivers:

```python
from cachier_python import DriverType

DriverType.RAM
DriverType.JSON
DriverType.SQLITE
DriverType.PICKLE
```

check if a driver is valid:

```python
from cachier_python import DriverType

is_valid = DriverType().is_valid(DriverType.RAM)

print(is_valid)
```

## Support

Please [open an issue](https://github.com/apinanyogaratnam/cachier-python/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/apinanyogaratnam/cachier-python/compare/). -->

<!--
TODO: raise a custom error if connection fails
TODO: user would call the types package for getting possible drivers and use the enums to pass into init method instead of passing in raw string when initializing Cachier class
-->
