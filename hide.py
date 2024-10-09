import sys

def main():
    # Verifica se o número de argumentos é suficiente
    print("\033c\033[40;37m")
    if len(sys.argv) != 4:
        print("Use: python hide.py <file csv> <colum number to hide> <word to find>")
        return

    filename = sys.argv[1]
    colums=int(sys.argv[2])
    strs=sys.argv[3]
    try:
        # Abre o arquivo passado como argumento
        with open(filename, 'rt') as file:
            # Lê o arquivo linha por linha e imprime na consola
            for line in file:
                line=line.strip()
                lines=line.split(",")
                counts=len(lines)
                c=0
                if colums<counts and line!="":
                    liness=lines[colums].find(strs)
                    if liness<0:
                        print(line)
                
                
                    
    except FileNotFoundError:
        print(f"Erro: file '{filename}' not find.")
    except Exception as e:
        print(f"error: {e}")

if __name__ == "__main__":
    main()

