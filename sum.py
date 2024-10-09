import sys

def main():
    # Verifica se o número de argumentos é suficiente
    print("\033c\033[40;37m")
    if len(sys.argv) != 3:
        print("Use: python sum.py <file csv> <colum number>")
        return

    filename = sys.argv[1]
    colums=int(sys.argv[2])
    sums=0.0
    try:
        # Abre o arquivo passado como argumento
        with open(filename, 'rt') as file:
            # Lê o arquivo linha por linha e imprime na consola
            for line in file:
                line=line.strip()
                if(line!=""):
                    lines=line.split(",")
                    counts=len(lines)
                    
                    if colums<counts:
                    
                        sums+=float(lines[colums])
                    print(line+","+str(sums))
                
                    
    except FileNotFoundError:
        print(f"Erro: file '{filename}' not find.")
    except Exception as e:
        print(f"error: {e}")

if __name__ == "__main__":
    main()

