import os
import time


image_url = "https://drive.google.com/file/d/1CT4z1P6jElWZs5MLh_aOiuZoyPweVMpe/view?usp=share_link"

FILEID = '1CT4z1P6jElWZs5MLh_aOiuZoyPweVMpe'

FILENAME = '/local/repository/qemu-images/image.qcow2'

c1 = [f"wget --load-cookies /tmp/cookies.txt \"https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \'https://docs.google.com/uc?export=download&id={FILEID}\' -O- | sed -rn \'s/.*confirm=([0-9A-Za-z_]+).*/\1\n/p\')&id={FILEID}\" -O {FILENAME} && rm -rf /tmp/cookies.txt"]



for command in c1:
	os.system(command)
	time.sleep(1) 
