package ru.avtopark

import grails.plugin.mail.MailService
import grails.transaction.Transactional

/**
 * Created by Admin on 11.10.14.
 */
@Transactional
class EmailSendService {

    MailService mailService

    def sendEmail(Intent intent, Boolean isMainForm, Map<String, String> params) {

        def forEmail = Settings.findByParam_key("email")
        StringBuffer buffer = new StringBuffer("")
        if (isMainForm) {
            buffer.append("Отправлена форма заявки на перевозку. \r\n")
        } else {
            buffer.append("Отправлена заявка на обратный звонок. \r\n")
        }

        buffer.append("Имя клиента: ").append(intent.userName).append("\r\n")
        buffer.append("Номер телефона: ").append(intent.phone).append("\r\n")



        if (intent.page != null) {
            buffer.append("Страница: ").append(intent.page).append("\r\n")
        }

        if (intent.term != null) {
            buffer.append("Пришел с запроса: ").append(intent.term).append("\r\n")
        }

        if (intent.comment != null) {
            buffer.append("Комментарий: ").append(intent.comment).append("\r\n")
        }

        if (intent.departure != null) {
            buffer.append("Место погрузки: ").append(intent.departure).append("\r\n")
        }

        if (intent.destination != null) {
            buffer.append("Место выгрузки: ").append(intent.destination).append("\r\n")
        }

        if (params != null) {
            for (String key in params.keySet()) {
                String value = params.get(key)
                buffer.append(key + ":").append(value).append("\r\n")
            }
        }

        mailService.sendMail {
            async true
            from 'admin@rfperevozki.ru'
            to forEmail.param_value
            subject "Заявка на звонок!"
            body buffer.toString()
        }
    }


    String createIntent(Map params, String utm_term, Map<String, String> sessionParams) {

        String city_id = params.get("city_id")

        City city = null

        if (city_id != null) {
            city = City.findById(Integer.parseInt(city_id))
        }

        String userName = params.get('userName')
        String phone = params.get('phone')

        if (userName == null || userName.allWhitespace || userName.isEmpty()
                || phone == null || phone.allWhitespace || phone.isEmpty()) {
            throw new IllegalArgumentException("Не заполнена контактная информация !")
        }

        Intent intent = new Intent(userName: params.get('userName'), intentDate: new Date(),
                destination: params.get('destination'), departure: params.get("departure"),
                phone: params.get('phone'), city: city,
                comment: params.get("comment"), term: utm_term, page: params.get("pageType"))

        if (params.get("isMainForm")) {
            intent.setDeparture(params.get("departure"))
            intent.setDestination(params.get("destination"))
            intent.setVolume(params.get("volume"))
        }
        intent.save()


        sendEmail(intent, Boolean.parseBoolean(params.get("isMainForm")), sessionParams)
    }
}
