from dataclasses import dataclass
@dataclass(frozen=True)
class Approval: content: str; account: str; action: str; schedule: str = ''
def requires_fresh_confirmation(before, after): return before != after
