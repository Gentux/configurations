def init_imap_cli():
    global imap_account
    imap_account = imap_cli.connect(**imapcli_config_connect)
