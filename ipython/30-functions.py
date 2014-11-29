def init_imap_cli():
    global imap_account
    imap_account = imap_cli.connect(**imapcli_config_connect)


def grep(iterable, exp):
    ret = []
    for elem in iterable:
        if elem.find(exp) >= 0:
            ret.append(elem)
    return ret
