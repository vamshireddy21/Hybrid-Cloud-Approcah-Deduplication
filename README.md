# Hybrid-Cloud-Approcah-Deduplication
This is project is to eliminate the duplicate copies of repeating data in storage and enforce data confidentiality. It encrypts/ decrypts a data copy with a convergent key, which is obtained by computing the cryptographic hash value of the content of the data copy. After key generation and data encryption, users retain the keys and send the cipher text to the cloud. To prevent unauthorized access, a secure proof of ownership protocol is also needed to provide the proof that the user indeed owns the same file when a duplicate is found. A user can download the encrypted file with the pointer from the server, which can only be decrypted by the corresponding data owners with their convergent keys. 

Steps to do this project
  Set the Tomcat Server Path in genHash.jsp
