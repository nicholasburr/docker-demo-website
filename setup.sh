apt full-upgrade -y && \
apt install nginx -y && \
systemctl enable nginx --now
rm /var/www/html/index.nginx-debian.html
cat > /var/www/html/index.nginx-debian.html <<EOF
<!DOCTYPE html>
<html>
    <head>
        <title>Test</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body>
        <p id="local-ipaddr"></p>

        <script >
            function codeAddress() {
            var x = location.host;
            document.getElementById("local-ipaddr").innerHTML = x;
            }
        window.onload = codeAddress;
        </script>

    </body>
</html>
