<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comment = $_POST['text'];
    $file = $_FILES['file']['tmp_name'];
    
    $to = 'korolsut23@gmail.com';
    $subject = 'Новая форма обратной связи';
    $message = "Имя: $name\nEmail или телефон: $email\nКомментарий: $comment";
    $headers = "From: $email";
    
    if (isset($file)) {
        $file_type = $_FILES['file']['type'];
        $file_name = $_FILES['file']['name'];
        $file_size = $_FILES['file']['size'];
        $attachment = chunk_split(base64_encode(file_get_contents($file)));
        
        $boundary = md5(date('r', time()));
        
        $headers .= "\r\nMIME-Version: 1.0\r\n";
        $headers .= "Content-Type: multipart/mixed; boundary=\"_1_$boundary\"";
        
        $message = "--_1_$boundary\r\n";
        $message .= "Content-Type: multipart/alternative; boundary=\"_2_$boundary\"\r\n\r\n";
        $message .= "--_2_$boundary\r\n";
        $message .= "Content-Type: text/plain; charset=\"UTF-8\"\r\n";
        $message .= "Content-Transfer-Encoding: 7bit\r\n\r\n";
        $message .= $message;
        $message .= "\r\n\r\n--_2_$boundary--\r\n";
        $message .= "--_1_$boundary\r\n";
        $message .= "Content-Type: $file_type; name=\"$file_name\"\r\n";
        $message .= "Content-Transfer-Encoding: base64\r\n";
        $message .= "Content-Disposition: attachment; filename=\"$file_name\"\r\n\r\n";
        $message .= $attachment."\r\n\r\n";
        $message .= "--_1_$boundary--";
    }
    
    if (mail($to, $subject, $message, $headers)) {
      header('Location: ' . $_SERVER['HTTP_REFERER']);
        // Если письмо отправлено успешно, выполнить необходимые действия
    } else {
        // Если письмо не удалось отправить, выполнить соответствующие действия
    }
}
?>