import unittest
from lib.config import safe_mode
class TestConfig(unittest.TestCase):
 def test_default_is_safe(self): self.assertTrue(safe_mode({}))
