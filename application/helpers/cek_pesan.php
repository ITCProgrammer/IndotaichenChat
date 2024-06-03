<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
	<script type="text/javascript" src="../assets/js/message/main.js"></script>
<?php
// Lakukan query untuk memeriksa jumlah pesan yang belum dibaca
$current_user_id = $_SESSION['uniqueid']; // Sesuaikan dengan kolom dan nama sesuai kebutuhan
$query = "SELECT COUNT(*) AS unread_count FROM user_messages WHERE receiver_message_id = '$current_user_id' AND status = 'unread'";
$result = $this->db->query($query);
$row = $result->row();
$unread_count = $row->unread_count;

// Jika ada pesan yang belum dibaca, munculkan notifikasi
if ($unread_count > 0) {
    echo "<script>alert('Anda memiliki $unread_count pesan belum dibaca');</script>";
}
?>