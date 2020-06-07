<?php
require_once "Mail.php";                                                // Including mail script
$email= "17rohandhere@gmail.com";
            $from = '<apsitmlproject@gmail.com>';                                   //sender's email id
            //taking email id form html form.
            $subject = 'Trial';   
            $body = " Hi \n Thank you! ";                                  

            $headers = array(                                                      //making an header of mail
            'From' => $from,
            'To' => $email,
            'Subject' => $subject
            );

            $smtp = Mail::factory('smtp', array(                                    // Mail::factory() creates mailer instance // smtp is type of backend  
            'host' => 'ssl://smtp.gmail.com',                               //name of host
            'port' => '465',                                                // port number of smtp server
            'auth' => true,                                                 //SMTP Authentication true. because we need to authenticate with gmail username and password
            'username' => 'apsitmlproject@gmail.com',                       //mail of sender(Only gmail)
            'password' => 'apsitmlproject@3128'                                  //password of account
            ));

            $mail = $smtp->send($email, $headers, $body);                              //   object-> send to send the mail,prameters are (recipient,email header,email body)

            if (PEAR::isError($mail)) {                                             //  $mail returns a value on failure. PHP Exception Handling is used.
            echo('<p>' . $mail->getMessage() . '</p>');
            } else {
            echo('<p>Successfully sent.....</p>');
            }

?>
