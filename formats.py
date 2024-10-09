import sys

def main():
    t="                                                                                                                                                                      "
    # Verifica se o número de argumentos é suficiente
    print("\033c\033[40;37m")
    if len(sys.argv) != 4:
        print("Use: python formats.py <file csv> <colum number><tab size>")
        return
    
    filename = sys.argv[1]
    colums=int(sys.argv[2])
    sizess=int(sys.argv[3])
    try:
        # Abre o arquivo passado como argumento
        with open(filename, 'rt') as file:
            # Lê o arquivo linha por linha e imprime na consola
            for line in file:
                line=line.strip()
                lines=line.split(",")
                counts=len(lines)
                c=0
                
                
                if line!="":    
                    for cols in range(counts):
                        if cols!=colums:
                            print(lines[cols], end='')
                            if counts>cols and cols!=counts-1:
                                print(",", end='')
                        else:
                            liness=lines[cols]+t
                            liness=liness[:sizess]
                            
                            print(liness, end='')
                            if  cols!=counts-1:
                                print(",", end='')
                    print("")    
    except FileNotFoundError:
        print(f"Erro: file '{filename}' not find.")
    except Exception as e:
        print(f"error: {e}")

if __name__ == "__main__":
    main()

