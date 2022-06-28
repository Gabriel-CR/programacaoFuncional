def converte(number, base):
    text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    output = ""
    while number != 0:
        resto = number % base
        number = int(number / base)
        output = text[resto] + output
    return output

def main():
    print(converte(25, 10))
    print(converte(17, 2))
    print(converte(26, 16))
    print(converte(26012, 16))
    print(converte(10, 2))

main()