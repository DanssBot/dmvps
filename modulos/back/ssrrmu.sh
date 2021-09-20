#!/bin/bash
echo ""
wget -q -O /tmp/ssr https://www.dropbox.com/s/m8ec2n3jyjkb7bq/msg 
cat /tmp/ssr > /tmp/ssrrmu.sh
wget -q -O /tmp/ssr https://www.dropbox.com/s/xqj60wk53d71ljg/C-SSR.sh
cat /tmp/ssr >> /tmp/ssrrmu.sh
#curl  https://www.dropbox.com/s/3qjgd6v27l87z6t/C-SSR.sh >> 
sed -i "s;VPS•MX;ADM-VPS;g" /tmp/ssrrmu.sh
sed -i "s;@Kalix1;NEW-ADM;g" /tmp/ssrrmu.sh
sed -i "s;VPS-MX;ADM-VPS;g" /tmp/ssrrmu.sh
chmod +x /tmp/ssrrmu.sh && bash /tmp/ssrrmu.sh
#sed '/gnula.sh/ d' /tmp/ssrrmu.sh > /bin/ejecutar/crontab
