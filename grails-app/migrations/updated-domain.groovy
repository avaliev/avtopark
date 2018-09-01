databaseChangeLog = {

	changeSet(author: "Airat (generated)", id: "1535827189276-1") {
		createIndex(indexName: "name_uniq_1535827186415", tableName: "city", unique: "true") {
			column(name: "name")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-2") {
		createIndex(indexName: "url_name_uniq_1535827186417", tableName: "city", unique: "true") {
			column(name: "url_name")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-3") {
		createIndex(indexName: "name_uniq_1535827186425", tableName: "route", unique: "true") {
			column(name: "name")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-4") {
		createIndex(indexName: "url_name_uniq_1535827186425", tableName: "route", unique: "true") {
			column(name: "url_name")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-5") {
		dropColumn(columnName: "descr1", tableName: "city")
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-6") {
		dropColumn(columnName: "client_type", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-7") {
		dropColumn(columnName: "email", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-8") {
		dropColumn(columnName: "weight", tableName: "intent")
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-9") {
		dropColumn(columnName: "distance", tableName: "route")
	}

	changeSet(author: "Airat (generated)", id: "1535827189276-10") {
		dropColumn(columnName: "price", tableName: "route")
	}
}
