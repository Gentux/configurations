db_connection = pymongo.Connection()

imap_account = None
imapcli_config_connect = imap_cli.config.new_context_from_file(section='imap')
imapcli_config_display = imap_cli.config.new_context_from_file(section='display')
imapcli_config_trash = imap_cli.config.new_context_from_file(section='trash')

li = ['pomme', 'poire', 'raisin', 'banane', 'kiwi', 'annanas']
li2 = ['laitue', 'scarole', 'comcombre', 'courgette', 'poirreaux']

di = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
    'key4': 'value4',
    'key5': 'value5',
    'key6': 'value6',
    }

di2 = {
    '2key1': '2value1',
    '2key2': '2value2',
    '2key3': '2value3',
    '2key4': '2value4',
    '2key5': '2value5',
    '2key6': '2value6',
    }
