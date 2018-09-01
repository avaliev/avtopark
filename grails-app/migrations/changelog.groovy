databaseChangeLog = {

	changeSet(author: "Airat (generated)", id: "1535827031158-1") {
		createTable(tableName: "admin") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "login", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-2") {
		createTable(tableName: "city") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "descr", type: "LONGTEXT")

			column(name: "descr1", type: "LONGTEXT")

			column(name: "gname", type: "VARCHAR(255)")

			column(name: "name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "url_name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-3") {
		createTable(tableName: "custom_page") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "content", type: "LONGTEXT")

			column(name: "group_id", type: "BIGINT")

			column(name: "meta_tag", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "title", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "url", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-4") {
		createTable(tableName: "intent") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "city_id", type: "BIGINT")

			column(name: "comment", type: "VARCHAR(255)")

			column(name: "email", type: "VARCHAR(255)")

			column(name: "intent_date", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "phone", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "departure", type: "VARCHAR(255)")

			column(name: "destination", type: "VARCHAR(255)")

			column(name: "volume", type: "VARCHAR(255)")

			column(name: "weight", type: "VARCHAR(255)")

			column(name: "client_type", type: "VARCHAR(10)")

			column(name: "page", type: "VARCHAR(255)")

			column(name: "term", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-5") {
		createTable(tableName: "page_group") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "title", type: "VARCHAR(100)") {
				constraints(nullable: "false")
			}

			column(name: "url", type: "VARCHAR(100)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-6") {
		createTable(tableName: "route") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "departure_city_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "destination_city_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "distance", type: "INT")

			column(name: "name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "price", type: "INT")

			column(name: "url_name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-7") {
		createTable(tableName: "settings") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "param_key", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "param_value", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-12") {
		createIndex(indexName: "UK_379uxu53mf6ssiil72v4d24sp", tableName: "custom_page", unique: "true") {
			column(name: "url")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-13") {
		createIndex(indexName: "UK_6982bf82nh0pun3crok7xrfp4", tableName: "page_group", unique: "true") {
			column(name: "url")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-14") {
		createIndex(indexName: "UK_8m5lsou5cpm5rs5fq8ft3n8cx", tableName: "page_group", unique: "true") {
			column(name: "title")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-15") {
		createIndex(indexName: "UK_ehj36xryock95wguwxogct524", tableName: "settings", unique: "true") {
			column(name: "param_key")
		}
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-8") {
		addForeignKeyConstraint(baseColumnNames: "group_id", baseTableName: "custom_page", baseTableSchemaName: "perevozki_test", constraintName: "FK_c3pu880citbfevnpo2k73lkk1", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "page_group", referencedTableSchemaName: "perevozki_test", referencesUniqueColumn: "false")
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-9") {
		addForeignKeyConstraint(baseColumnNames: "city_id", baseTableName: "intent", baseTableSchemaName: "perevozki_test", constraintName: "FK_bbyw97opl7hms8p7rpdqr9iy6", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "city", referencedTableSchemaName: "perevozki_test", referencesUniqueColumn: "false")
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-10") {
		addForeignKeyConstraint(baseColumnNames: "departure_city_id", baseTableName: "route", baseTableSchemaName: "perevozki_test", constraintName: "FK_95ctvhkyhf9mw155s56e4aior", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "city", referencedTableSchemaName: "perevozki_test", referencesUniqueColumn: "false")
	}

	changeSet(author: "Airat (generated)", id: "1535827031158-11") {
		addForeignKeyConstraint(baseColumnNames: "destination_city_id", baseTableName: "route", baseTableSchemaName: "perevozki_test", constraintName: "FK_puqsojmyhppxovvj9g3q21204", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "city", referencedTableSchemaName: "perevozki_test", referencesUniqueColumn: "false")
	}

	include file: 'updated-domain.groovy'

	include file: 'updated-domain-prod.groovy'
}
