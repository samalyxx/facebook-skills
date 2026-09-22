import unittest
from lib.approval import Approval, requires_fresh_confirmation
class TestApproval(unittest.TestCase):
 def test_changed_preview_requires_confirmation(self): self.assertTrue(requires_fresh_confirmation(Approval('a','x','draft'), Approval('b','x','draft')))
