color 15,0
dim shared s(250) as string
dim liness as string
dim counter as integer
dim filenames as string=command(1)
dim f as integer=1
dim numbers as string=command(2)
dim nn as integer
dim  keywords as string=command(3)
dim g as integer=200000000
dim m as integer
if filenames = "" or numbers = "" or keywords="" then
    print "use find <filename csv> <colum number> <keyword to find on colum>"
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
sub hides(counters as integer,c as integer,linesss as string,findd as string)
    dim n as integer
    if counters>=c then
         n=instr(s(c),findd)
         if n<1 then print linesss
    end if          
        
    
    
end sub

open filenames for input as f
for m =0 to g
    line input  #f ,liness
    counter=split(liness)
    if trim(liness)<>"" then
        hides(counter,nn,liness,keywords)
    
    end if
    if eof(f) then m=g+20
next