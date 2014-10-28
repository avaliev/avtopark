package avto.park

import grails.plugin.mail.MailService
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
            to forEmail.param_value
            subject "Заявка на звонок!"
            body buffer
        }
    }


    def String createIntent(String phone,Map data){

    }
}
