# สั่งรันใน docker ubuntu:16.04  
apt-get update

apt-get install -y nodejs

apt-get install -y npm

node -v  #ไม่เจอตำสั่งนี้

nodejs  #สามาถเข้าไปทำอะไรบ้างอย่างได้

#การแก้ปัญหาลง Nodejs ติดตั้งด้วย NVM จะดีกว่า 

apt-get update

apt-get install -y build-essential libssl-dev

# ดึงตัวติดตั้ง NVM  มาจาก Github แนะนำให้ดูเลขเวอร์ชั่นในนี้ https://github.com/creationix/nvm  
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh

#สั่งรันสคริปด้วย bash  
bash install_nvm.sh

#คำสั่งด้านบนจะติดตั้ง nvm ไว้ที ~/.nvm เราต้องไปที่เพิ่มไว้ที่ ~/.profile ด้วยเพื่อให้ nvm ทำงานได้
source ~/.profile

# แสดงเวอร์ชั้น Node.js
nvm ls-remote

#ในที่นี้ขอเลือกใช้เวอร์ชั่น v8.11.1
ืnvm install v8.11.1

# check Nodejs  จะแสดงเวอร์ชั้นที่ติดตั้ง
ืnode -v


