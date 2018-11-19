MORSE_CODE_DICT = { 'A':'.-', 'B':'-...', 'C':'-.-.', 'D':'-..', 'E':'.', 
                    'F':'..-.', 'G':'--.', 'H':'....', 
                    'I':'..', 'J':'.---', 'K':'-.-', 
                    'L':'.-..', 'M':'--', 'N':'-.', 
                    'O':'---', 'P':'.--.', 'Q':'--.-', 
                    'R':'.-.', 'S':'...', 'T':'-', 
                    'U':'..-', 'V':'...-', 'W':'.--', 
                    'X':'-..-', 'Y':'-.--', 'Z':'--..', 
                    '1':'.----', '2':'..---', '3':'...--', 
                    '4':'....-', '5':'.....', '6':'-....', 
                    '7':'--...', '8':'---..', '9':'----.', 
                    '0':'-----', ', ':'--..--', '.':'.-.-.-', '?':'..--..', '/':'-..-.', '-':'-....-', '(':'-.--.', ')':'-.--.-'} 

#P = 'ALPHA'
P = ("PLAINTEXTMORSET")
Cip = ""

for i in P:
# Cip.append(MORSE_CODE_DICT[i]) 
 Cip += (MORSE_CODE_DICT[i])
 Cip += 'x'
 if(i==" "):
  Cip += 'xx'
  
KEY_DICT = { 'L':'...', 'E':'..-', 'M':'..x', 'O':'.-.', 'N':'.--',
             'A':'.-x', 'B':'.x.', 'C':'.x-', 'D':'.xx',
             'F':'-..', 'G':'-.-', 'H':'-.x', 
             'I':'--.', 'J':'---', 'K':'--x', 
             'P':'-x.', 'Q':'-x-', 
             'R':'-xx', 'S':'x..', 'T':'x.-', 
             'U':'x.x', 'V':'x-.', 'W':'x--', 
             'X':'x-x', 'Y':'xx.', 'Z':'xx-'} 

KEY_INVERT = {value: key for key, value in KEY_DICT.items()}

C=""

i=0
while i<len(Cip)-3:
 C += KEY_INVERT[Cip[i:i+3]]  
 i += 3           


#Attack: Frequency analysis
