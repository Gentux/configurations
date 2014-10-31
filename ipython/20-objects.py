class Db():
    db_connection = None
    db_database = None

    def __init__(self, database_name):
        self.db_connection = db_connection
        self.db_database = self.db_connection[database_name]
        for collection_name in self.db_database.collection_names():
            setattr(self, collection_name, self.db_database[collection_name])
