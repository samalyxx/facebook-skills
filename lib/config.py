def safe_mode(config): return not bool(config.get('connected_publisher'))
