def tambah( a, b):
    return a + b
def kurang( a, b):
    return a - b
def kali( a, b):
    return a * b
def bagi( a , b):
    if b !=0:
        return (a / b)
    else:
        print("tidak dapat dibagi")


print("""pilih operasi : \n
      1.penjumlahan
      2.pengurangan
      3.pengkalian
      4.pembagian""")

pilihan= input("masukkan angka 1/2/3/4/5 : ")
angka1=float(input("masukkan angka pertama : "))
angka2= float(input("masukkan angka kedua : "))

if pilihan == '1' :
    print(angka1,"+",angka2 ,"=",tambah (angka1, angka2) )
elif pilihan == '2' :
    print(angka1,"-",angka2 ,"=",kurang (angka1, angka2))
elif pilihan == '3':
    print(angka1,"*",angka2,"=",kali (angka1, angka2))
elif pilihan == '4':
    print(angka1,"/",angka2,"=",bagi (angka1, angka2))
else :
    print("tidak valid")