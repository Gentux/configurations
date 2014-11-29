class Db():
    db_connection = None
    db_database = None

    def __init__(self, database_name):
        self.db_connection = db_connection
        self.db_database = self.db_connection[database_name]
        for collection_name in self.db_database.collection_names():
            setattr(self, collection_name, self.db_database[collection_name])


class Visualizer():
    obj = None

    def __init__(self, obj):
        self.obj = obj

    def attributes(self, with_value=False):
        keys = []
        for key, value in self.obj.__dict__.iteritems():
            if with_value:
                keys.append(u'{} = {}'.format(key, value))
            else:
                keys.append(key)

        return keys
