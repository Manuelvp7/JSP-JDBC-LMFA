package com.ipn.mx.Modelo;


import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

public class EnviarMail {

    public void metodo(String correoDestinatario, String asunto, String texto) {
        try {
            Properties prop = new Properties();
            prop.put("mail.smtp.host", "smtp-mail.outlook.com");
            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.port", "587");
            prop.put("mail.smtp.user", "web.escom@outlook.com");
            prop.put("mail.smtp.auth", "true");
            Session s = Session.getDefaultInstance(prop);
            MimeMessage m = new MimeMessage(s);
            m.setFrom(new InternetAddress("web.escom@outlook.com"));
            m.addRecipient(Message.RecipientType.TO, new InternetAddress(correoDestinatario));
            //CC= con copia para
            //BCC=con copia oculta para
            m.setSubject(asunto);
            m.setText(texto);
            Transport t = s.getTransport("smtp");
            t.connect("web.escom@outlook.com", "ASENSIO123");
            t.sendMessage(m, m.getAllRecipients());
            t.close();

        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        EnviarMail e = new EnviarMail();
        String correoDestinario = JOptionPane.showInputDialog(null, "Ingresa el destinario:");
        String asunto = JOptionPane.showInputDialog(null, "Ingresa el asunto:");
        String texto = JOptionPane.showInputDialog(null, "Ingresa el mensaje:");
        e.metodo(correoDestinario, asunto, texto);
    }
}
