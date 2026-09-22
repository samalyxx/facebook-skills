import unittest
from lib.url_parser import is_http_url
class TestUrls(unittest.TestCase):
 def test_urls(self): self.assertTrue(is_http_url('https://example.com')); self.assertFalse(is_http_url('file:///tmp/a'))
