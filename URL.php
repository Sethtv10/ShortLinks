<?php
    
    $cont = 0;
    class URL {
        public  $original;
        public  $short;        
        private  $experationDate;


        public function generateShort ($array){
            require_once "conection.php";
            $cont = 0;
            foreach ($array as $value) {
                $short = sprintf( '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',

                    mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ),
            
                    mt_rand( 0, 0xffff ),
            
                    mt_rand( 0, 0x0fff ) | 0x4000,
            
                    mt_rand( 0, 0x3fff ) | 0x8000,
        
                    mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff )
                );
                $experationDate = date('d-m-y', strtotime("+7 days"));
                $check = explode(',', trim($value));
            
                if($check[1] != 'null'){
                    $sql = "INSERT INTO url (short, original, expirationDate) VALUES ('".$check[1] ."', '".$check[0]."', '".$experationDate."')";
                }else{ 
             
                   
                    $sql = "INSERT INTO url (short, original, expirationDate) VALUES ('".$short."', '".$check[0]."', '".$experationDate."')";
                    
                    
                }
                if ($conn->query($sql) === TRUE) {
                    //   echo "Nueva UUID \n";
                    } else {
                        echo "Error: " . $sql . "<br>" . $conn->error;
                    }
               
                $cont ++;
            }
            $conn->close();
            return $cont;
                
            
        }

        public function chooseShort ($original,$short){
            $experationDate = date('d-m-y', strtotime("+7 days"));
            require_once "conection.php";
     
            
            $sql = "INSERT INTO url (short, original, expirationDate)
            VALUES ('".$short."', '".$original."', '".$experationDate."')";
            
            if ($conn->query($sql) === TRUE) {
                echo "Nueva UUID \n";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
            
            $conn->close();
        }

        public function deleteShort(){
            require_once "conection.php";
            
            $sql = "DELETE FROM url WHERE expirationDate < CURDATE() ";
            
            if ($conn->query($sql) === TRUE) {
               echo "Se Eliminaron registros Correctamente";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
            
            $conn->close();

        }
        public function redirectLink($short){

            require_once "conection.php";
            
            $sql = "SELECT * FROM url WHERE short = '".$short."'";
            
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    header('Location: '.$row["original"]);
                    die();
                }
            }else{ echo "Error shortLink inexistente";}
            $conn->close();

        }
        




    }
    $cont = 0;
    $URL = new URL();
    $array = explode("\n", file_get_contents('file.txt'));
    $cont = $URL->generateShort($array);
    echo "<br>";
    echo "Se agregaron ".$cont." Nuevas URL";
    echo "<br>";
    //echo($URL->chooseShort("Adrian","00000000-0000-0000-C000-000000000046"));
    //$URL->deleteShort();
    //$URL->redirectLink("ecdc77d1-27e1-462e-a358-eeda3cf59876");




?>