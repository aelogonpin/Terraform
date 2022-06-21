 #!/bin/bash
yum update -y
yum install php-pdo php-fpm php-mysqlnd php-cli php-json
cat <<'EOF' >> /var/www/html/index.php
<?php
phpinfo();
?>
EOF
service httpd restart