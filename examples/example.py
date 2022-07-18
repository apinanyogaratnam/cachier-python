from cachier_python import Cachier

# Create a cachier instance to connect to the service
client = Cachier('http://localhost:8000', driver='ram')

# cache expiry in seconds
CACHIER_EXPIRY = 600

# set the cache
client.set(key='my_key', value='my_value', expiry=CACHIER_EXPIRY)

# get the cached value
cached_value = client.get(key='my_key')
