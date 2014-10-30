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

    def sendEmail(Intent intent){

        def forEmail=Settings.findByParam_key("email");
        StringBuffer buffer=new StringBuffer("Отправлена заявка на обратный звонок \r\n");
        buffer.append("Имя клиента: ").append(intent.userName).append("\r\n")
        buffer.append("Номер телефона: ").append(intent.phone).append("\r\n")
        if (intent.comment!=null) {
            buffer.append("Комментарий: ").append(intent.comment)
        }

        mailService.sendMail {
            async true
            from 'rfperevozki@gmail.com'
            to forEmail.param_value
            subject "Заявка на звонок!"
            body buffer
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

        sendEmail(intent)
    }
}
