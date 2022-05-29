#!/usr/bin/awk -f

# pg_dump used: pg_dump --data-only --inserts --column-inserts -U postgres -d nepher -h 127.0.0.1 -t 'nepher.cad_protocolo_lab_apoio' > protocolos-apoio.sql
# calling this program: awk -v conflict_target=pkey -f pg-update-on-conflict.awk -- inserts-example.sql

/^INSERT INTO/ {
    gsub(/;$/, "")
    for (i = 4; $i != "VALUES"; i++)
        column_names[i] = $i
    print "name1 " column_names[4]
    print "name2 " column_names[5]
    split($0, column_values1, "VALUES", seps)
    split(column_values1[2], column_values2, ",", seps2)
    i = 1
    for (column in column_names)
        final_str = (column "=" column_values2[i++])
    print $0, "ON CONFLICT", conflict_target, "DO UPDATE SET", final_str
}
  # awk -F'[(),]' '/^INSERT INTO/ { print "SET ", $2,"=", $8, "NF=",NF }' cache_historico_pesquisas.script | head  
# BEGIN {
#       a = "abc def"
#       b = gensub(/(.+) (.+)/, "\\2 \\1", "g", a)
#       print b
# }
  # $6 == "May" { sum += $5 } ; $6 == "Apr" { sum1 += $5 }
  # END { printf "Soma total: %s | %s\n", sum, sum1 }
