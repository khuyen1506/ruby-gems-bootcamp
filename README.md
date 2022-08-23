# README
tesst 3

.
Xin chao toi la khuyen
TAO SSH: KEY MA HOA 
BUOC1:  cd den thu muc du an 

BUOC 2: ssh-keygen -C "khuyenho93@gmail.com"

BUOC 3: cat ~/.ssh/id_rsa
- copy doan key vua hien ra tren terminal
- Login vao github: > setting > SSH and GPG Keys
  	+ Dat ten title
	+ Paste doan key cua copy vao o key.
	+ Click Add SSH key > Nhap password de confirm
BUOC 4: Doi link htpps sang SSH
- Xoa link https da ton tai tai terminal nhap:
 		git remote remove origin
		git remote -v (kiem tra xem link da xoa thanh cong chua)

- vao du an> khuyen> ruby gems bootcamp > click “code” button > click tab “ssh”> copy link ssh
- Thiet lap link ssh vao terminal nhap
		git remote add origin link_ssh_vua_copy
		git remote -v (kiem tra xem da push thanh cong chua)
		
CAC LENH LAM VIEC VOI GITHUB

BUOC 1: Kiem tra minh dang tren nhanh nao
git branch
BUOC 2: Kiem tra nhung file dang thay doi
git status
sau do git status kiem tra lai da chuyen sang mau xanh chua
BUOC 3: Them file de push
git add .
Hoac
git add name_file (ap dung khi co nhieu file chi chon 1 hoac nhieu file can push, cac file viet cach nhau)
BUOC 4: Tao commit de day file
git commit -m ‘name_reason’ (name_reason: cai nay minh tu dat ten ly do thay doi)

git push origin master (master: ten nhanh hien tai)

CAC BUOC CLONE CODE TREN GITHUB VE

BUOC 1: 	cd khuyen
di den thu muc can luu du an
BUOC 2: mkdir name_project (tao ten du an can luu code ve )
BUOC 3: cd name_project (di den thu muc vua tao de clone code ve)
BUOC 4: git clone paste_link_clone (dan link copy can clone tren github ve)
BUOC 5: ls (kiem tra xem code tren github da ve chua)