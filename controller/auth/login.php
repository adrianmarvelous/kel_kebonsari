<?php

    $username = htmlentities($_POST['username']);
    $password = htmlentities($_POST['password']);

    $q_user = $db->prepare("SELECT * FROM kebonsari JOIN rb_role ON rb_users.role_id = rb_role.id_role  WHERE username = :username");
    $q_user->bindParam(':username', $username);
    $q_user->execute();

    if($q_user->rowCount() > 0){
        $user_data = $q_user->fetch(PDO::FETCH_ASSOC);
        if(password_verify($password, $user_data['password'])){
            
            $_SESSION['id_user'] = $user_data['id_user'];
            $_SESSION['name'] = $user_data['name'];
            $_SESSION['username'] = $user_data['username'];
            $_SESSION['role_id'] = $user_data['id_role'];
            $_SESSION['role'] = $user_data['role'];
            $_SESSION['auth'] = 'auth';
            // $_SESSION['picture'] = $user_data['picture'];

            header('Location: ../index.php'); // Redirect to the main page after login
            exit;
        }else{
            $_SESSION['alert'] = [
                'type' => 'danger',
                'message' => 'Password salah.'
            ];
            header('Location: ../login.php');
            exit;
        }
    }else{
        $_SESSION['alert'] = [
            'type' => 'danger',
            'message' => 'Email tidak terdaftar.'
        ];
        header('Location: ../login.php');
        exit;
    }
?>