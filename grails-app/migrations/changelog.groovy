databaseChangeLog = {

	changeSet(author: "Valiev (generated)", id: "1412263057261-1") {
		createTable(tableName: "city") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "cityPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "desc", type: "varchar(255)")

			column(name: "genitive_name", type: "varchar(255)")

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "url_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1412263057261-2") {
		createTable(tableName: "intent") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "intentPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "email", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "phone", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1412263057261-3") {
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

			column(name: "price", type: "integer")

			column(name: "url_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Valiev (generated)", id: "1412263057261-4") {
		addForeignKeyConstraint(baseColumnNames: "departure_city_id", baseTableName: "route", constraintName: "FK_95ctvhkyhf9mw155s56e4aior", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "Valiev (generated)", id: "1412263057261-5") {
		addForeignKeyConstraint(baseColumnNames: "destination_city_id", baseTableName: "route", constraintName: "FK_puqsojmyhppxovvj9g3q21204", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}
}
