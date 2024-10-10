color 15,0
dim shared s(250) as string
dim liness as string
dim counter as integer
dim filenames as string=command(1)
dim f as integer=1
dim numbers as string=command(2)
dim nn as integer
dim  keywords as string
'max recordes
dim g as integer=200000000
dim m as integer
dim shared fff as double=0.0
if filenames = "" or numbers = "" then
    print "use sum <filename csv> <colum number> "
    system()
end if 
nn=val(numbers)

function split(lines as string)as integer
    dim n as integer=0
    dim nnn as integer=0
    dim counts as integer=0
    dim p as integer=1
    dim l as integer=len(lines)
    
    for n=0 to 249
        counts=n+1
        nnn=instr(p,lines,",")
        if nnn<1 then
            s(n)=mid(lines,p,l-p+1)
            n=1000
            
        else
           
           s(n)=mid(lines,p,nnn-p) 
           p=nnn+1
           
        end if
    next
    return counts
end function
sub lists(counters as integer)
    dim n as integer
    print counters 
    for n = 0 to counters
        print s(n)
    next  
    
end sub
sub sums(counters as integer,c as integer,linesss as string)
    dim n as integer
    dim ffff as double=0.0
    
    if counters>=c then
         ffff=val(s(c))
         fff=ffff+fff
         print linesss+","+str(fff)
    end if          
        
    
    
end sub
fff=0.0
open filenames for input as f
for m =0 to 200000000
    line input  #f ,liness
    counter=split(liness)
    if trim(liness)<>"" then
        sums(counter,nn,liness)
    
    end if
    if eof(f) then m=g+20
next