package ru.avtopark

class IntentController {

    def index() {
        List<Intent> intents = Intent.findAll("from Intent order by id desc", [max: 50])
        render view: 'index', model: [intents: intents]
    }
}
