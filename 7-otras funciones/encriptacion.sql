SELECT AES_ENCRYPT('password', 'key');
SELECT AES_DECRYPT(AES_ENCRYPT('password', 'key_to_encrypt'), 'key' );

SELECT MD5('password');
SELECT SHA1('password');
SELECT SHA2('password', 256);
