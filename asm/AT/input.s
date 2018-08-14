.section .bbs
.lcomm  buf,50    #.lcomm用来声明一个名称为buf、长度为50 byte的储存区

.section .text
.globl _start    #.globl指定程序入口，建议标号设置为“_start”,否则如果在linux中用ld链接时会有警告

_start:        #下面将参数存入相应的寄存器
movl $buf,%ecx    
movl $50,%edx
movl $0,%ebx
movl $3,%eax    #将3存入eax，执行“int $0x80”后，系统会调用sys_read,读取字符
int $0x80
movl $1,%ebx
movl $4,%eax    #将4存入eax，执行“int $0x80”后，系统会调用sys_write相应的函数,向屏幕输出buf内存区的字符
int $0x80

movl $0,%ebx    
movl $1,%eax
int $0x80



