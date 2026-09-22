from pathlib import Path
assert Path('README.md').is_file()
assert len(list(Path('skills').glob('*/SKILL.md'))) == 12
print('self-test passed: Facebook Skills')
