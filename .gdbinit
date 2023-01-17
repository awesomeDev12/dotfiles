

# completely disable debuginfod
set debuginfod enabled off

# To skip all .h files in /usr/include/c++/5/bits
skip -gfi /usr/include/c++/5/bits/*.h
skip -gfi /usr/include/c++/12/bits/*.h
skip -gfi /usr/include/c++/12.2.0/bits/*.h

skip -gfi /usr/src/debug/gcc-build/x86_64-pc-linux-gnu/libstdc++-v3/include/bits/*.h
skip -gfi /usr/src/debug/gcc-build/x86_64-pc-linux-gnu/libstdc++-v3/include/bits/*.tcc
skip function std::ios_base::sync_with_stdio
skip function std::basic_ios<char,std::char_traits<char>>::tie
skip function freopen

#
set pagination off
set confirm off

#
wh cmd +3


#custom commands
define my1
s
bt f
end

define my2
n
bt f
end


#One way to see the GDB output history in TUI mode is to enable logging:
set trace-commands on
#set logging enabled on
set logging overwrite on
set logging enabled on
#and then tail the log in another shell:
#cd where/gdb/is/running
#tail -f gdb.txt


