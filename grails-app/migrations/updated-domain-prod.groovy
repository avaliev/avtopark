databaseChangeLog = {

	changeSet(author: "Airat (generated)", id: "1535829244450-2") {
		dropIndex(indexName: "city_url", tableName: "city")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-3") {
		createIndex(indexName: "name_uniq_1535829241339", tableName: "route", unique: "true") {
			column(name: "name")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-4") {
		dropColumn(columnName: "descr1", tableName: "city")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-5") {
		dropColumn(columnName: "client_type", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-6") {
		dropColumn(columnName: "email", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-7") {
		dropColumn(columnName: "weight", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-8") {
		dropColumn(columnName: "distance", tableName: "route")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-9") {
		dropColumn(columnName: "price", tableName: "route")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-10") {
		dropTable(tableName: "transport")
	}

	changeSet(author: "Airat (generated)", id: "1535829244450-1") {
		addForeignKeyConstraint(baseColumnNames: "city_id", baseTableName: "intent", constraintName: "FK_bbyw97opl7hms8p7rpdqr9iy6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}
}
