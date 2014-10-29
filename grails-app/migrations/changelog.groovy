databaseChangeLog = {

	changeSet(author: "Valiev (generated)", id: "1414594792106-1") {
		createTable(tableName: "city") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "cityPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "descr", type: "longtext")

			column(name: "descr1", type: "longtext")

			column(name: "gname", type: "varchar(255)")

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "url_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-2") {
		createTable(tableName: "intent") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "intentPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "city_id", type: "bigint")

			column(name: "comment", type: "varchar(255)")

			column(name: "departure", type: "varchar(255)")

			column(name: "destination", type: "varchar(255)")

			column(name: "email", type: "varchar(255)")

			column(name: "intent_date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "phone", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "volume", type: "varchar(255)")

			column(name: "weight", type: "varchar(255)")
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-3") {
		createTable(tableName: "route") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "routePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "departure_city_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "destination_city_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "distance", type: "integer")

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "price", type: "integer")

			column(name: "url_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-4") {
		createTable(tableName: "settings") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "settingsPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "param_key", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "param_value", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-5") {
		createTable(tableName: "transport") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "transportPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "price", type: "integer") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-9") {
		createIndex(indexName: "FK_bbyw97opl7hms8p7rpdqr9iy6", tableName: "intent") {
			column(name: "city_id")
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-10") {
		createIndex(indexName: "FK_95ctvhkyhf9mw155s56e4aior", tableName: "route") {
			column(name: "departure_city_id")
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-11") {
		createIndex(indexName: "FK_puqsojmyhppxovvj9g3q21204", tableName: "route") {
			column(name: "destination_city_id")
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-12") {
		createIndex(indexName: "param_key_uniq_1414594792018", tableName: "settings", unique: "true") {
			column(name: "param_key")
		}
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-6") {
		addForeignKeyConstraint(baseColumnNames: "city_id", baseTableName: "intent", constraintName: "FK_bbyw97opl7hms8p7rpdqr9iy6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-7") {
		addForeignKeyConstraint(baseColumnNames: "departure_city_id", baseTableName: "route", constraintName: "FK_95ctvhkyhf9mw155s56e4aior", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "Valiev (generated)", id: "1414594792106-8") {
		addForeignKeyConstraint(baseColumnNames: "destination_city_id", baseTableName: "route", constraintName: "FK_puqsojmyhppxovvj9g3q21204", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}
}
