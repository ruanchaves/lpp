str = "Viajaram 42 passageiros"
mat = string.match(str, "%d%d")
print(mat)
str = "Viajaram 4 passageiros"
mat = string.match(str, "%d%d")
print(mat)
str = "Vencimento em 23/10/2011, às 12h"
mat = string.match(str, "%d%d/%d%d/%d%d%d%d")
print(mat)
str = "Vencimento em 23/10/11, às 12h"
mat = string.match(str, "%d%d/%d%d/%d?%d?%d%d")
print(mat)
str1 = "Vencimento em 23-10-2011, às 12h"
str2 = "Vencimento em 23.10.2011, às 12h"
str3 = "Vencimento em 23/10/2011, às 12h"

preprocess = function(s) return s:gsub("-", "/"):gsub("%.", "/") end

mat = string.match(preprocess(str1), "%d%d/%d%d/%d?%d?%d%d")
print(mat)
mat = string.match(preprocess(str2), "%d%d/%d%d/%d?%d?%d%d")
print(mat)

narray = { "+4", "2", "483", "198.483", "-949", "-38473.483847", "6273,374", "847e2234" }
regex_narray = "^[%-%+]?%d+%.?%d*$"

for i, num in ipairs(narray) do
	mat = string.match(num, regex_narray)
	print(num, " : ", mat)
end

str = "05/10/2011"
patt = "(%d%d)/(%d%d)/(%d%d%d%d)"
dia, mes, ano = string.match(str, patt)
print("Dia : ", dia)
print("Mes : ", mes)
print("Ano : ", ano)

str = "9873264;FULANO;cc9873264@inf.ufg.br"
patt = "(%d+);%u+;%l%l(%d+)@%a+%.%a+%.%a+"
s1, s2 = string.match(str, patt)
print(s1, s2)

str = "05/10/2011"
patt = "(%d%d)[/%.](%d%d)[/%.](%d%d%d%d)"
dia, mes, ano = string.match(str, patt)
print("Dia : ", dia)
print("Mes : ", mes)
print("Ano : ", ano)

str_array = { "Ele disse 'Chega disso' várias vezes", "Você não pode dizer '&@#*%$ aqui' viu!", "Como assim 'São 12h e nada ainda!' ?" }

patt = "'([^']+)'"
for i, num in ipairs(str_array) do
	mat = string.match(num, patt)
	print(num, " : ", mat)
end

