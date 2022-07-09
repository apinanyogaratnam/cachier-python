from cachier_python import Cachier

client = Cachier('http://localhost:8000')

client.set('key', 'value', 600)

cached_value = client.get('key')

print('cached_value:', cached_value)
