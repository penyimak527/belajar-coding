total = 0
barang = []
harga = []

while True:
       print("""===hallo selamat datang di toko Pak Zaki===
              \n ada yang bisa kami bantu:
                 daftar barang dan harga
                 1.sabun \t 2.000
                 2.mie indomie \t 3.000
                 3.kinder joy \t 22.000
                 4.sabuk \t 10.000
                 5.burger \t 5.000
                 """)
     
       kode= int(input("masukkan kode yang diinginkan : "))
       if kode == 1:
               barang.append('sabun')
               harga.append(2000)
               total += 2000
       elif kode == 2:
               barang.append('mie indomie')
               harga.append(3000)
               total += 3000
       elif kode == 3:
              barang.append('kinder joy')
              harga.append(22000)
              total += 22000
       elif kode == 4:
              barang.append('sabuk')
              harga.append(10000)
              total += 10000
       
       elif kode == 5:
              barang.append('burger')
              harga.append(5000)
              total += 5000


       else:
          print('gak ada di menu')

       lanjut = input('lanjut belanja {y/t} : ')
       if lanjut == 't':
              print('')
              break

print('barang yang dibeli : ',barang)
print('harga barang : ',harga)
print('total harga : ' ,total, )
uang =int(input("masukkan jumlah uang : "))
if uang > total :
              print('kembaliannya : ', uang-total)
elif uang == total :
              print('uang pas')
else :
              print('uang kurang ', uang-total)
