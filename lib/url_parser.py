from urllib.parse import urlparse
def is_http_url(value): return urlparse(value).scheme in ('http','https') and bool(urlparse(value).netloc)
