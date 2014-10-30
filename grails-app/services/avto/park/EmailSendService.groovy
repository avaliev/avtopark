package avto.park

import grails.plugin.mail.MailService
import ru.avtopark.City
import ru.avtopark.Intent
import ru.avtopark.Settings

/**
 * Created by Admin on 11.10.14.
 */
class EmailSendService {

    MailService mailService;

    def sendEmail(Intent intent,Boolean isMainForm){

        def forEmail=Settings.findByParam_key("email");
        StringBuffer buffer=new StringBuffer("");
        if (isMainForm) {
            buffer.append("Отправлена форма заявки на перевозку. \r\n")
        } else {
            buffer.append("Отправлена заявка на обратный звонок. \r\n")
        }
        buffer.append("Имя клиента: ").append(intent.userName).append("\r\n")
        buffer.append("Номер телефона: ").append(intent.phone).append("\r\n")

        if (intent.email!=null) {
            buffer.append("Email: ").append(intent.email).append("\r\n")
        }

        if (intent.comment!=null) {
            buffer.append("Комментарий: ").append(intent.comment).append("\r\n")
        }

        if (intent.departure!=null) {
            buffer.append("Место погрузки: ").append(intent.departure).append("\r\n")
        }

        if (intent.destination!=null) {
            buffer.append("Место выгрузки: ").append(intent.destination).append("\r\n")
        }

        if (intent.weight!=null) {
            buffer.append("Вес: ").append(intent.weight).append("\r\n")
        }

        if (intent.volume!=null) {
            buffer.append("Объем: ").append(intent.volume).append("\r\n")
        }

        mailService.sendMail {
            async true
            from 'rfperevozki@gmail.com'
            to forEmail.param_value
            subject "Заявка на звонок!"
            body buffer.toString()
        }
    }


    def String createIntent(Map params){

        String city_id=params.get("city_id");
        City target=null;
        if (city_id!=null) {
            target=City.findById(Integer.parseInt(city_id));
        }
        Intent intent=new Intent(userName: params.get('userName'),intentDate: new Date(),
                phone: params.get('phone'), city: target, comment: params.get("comment"));

        if (params.get("isMainForm")) {
            intent.setDeparture(params.get("departure"))
            intent.setDestination(params.get("destination"))
            intent.setVolume(params.get("volume"))
            intent.setWeight(params.get("weight"))
            intent.setEmail(params.get("email"))
        }
        intent.save();

        sendEmail(intent,Boolean.parseBoolean(params.get("isMainForm")))
    }
}
