# (C) Cambridge University Computer Laboratory, 2000
#     All Rights Reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. All advertising materials mentioning features or use of this software
#    must display the following acknowledgement:
#      This product includes software developed by the Systems Research
#      Group at Cambridge University Computer Laboratory.
# 4. Neither the name of the University nor of the Laboratory may be used
#    to endorse or promote products derived from this software without
#    specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.

CC      = gcc
CFLAGS  = -Wall
LDFLAGS	= -lm

SRCS    = pttcp.c pttcp_util.c		\
	simple_tx.c simple_rx.c			\
	simple_svr.c simple_clt.c		\
	cts_clt.c surge_clt.c

OBJS = $(SRCS:.c=.o)

all: pttcp 

clean: 
	$(RM) core *.o pttcp \#*\# *~ 

pttcp: $(OBJS)
	$(CC) $(LDFLAGS) -o pttcp $(OBJS)

depend:
	makedepend -- $(CFLAGS) -- $(SRCS)

# DO NOT DELETE THIS LINE -- make depend depends on it.

pttcp.o: /usr/include/ctype.h /usr/include/runetype.h /usr/include/_types.h
pttcp.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
pttcp.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
pttcp.o: /usr/include/stdlib.h /usr/include/Availability.h
pttcp.o: /usr/include/AvailabilityInternal.h /usr/include/sys/wait.h
pttcp.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
pttcp.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
pttcp.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
pttcp.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
pttcp.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
pttcp.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
pttcp.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
pttcp.o: /usr/include/machine/types.h /usr/include/i386/types.h
pttcp.o: /usr/include/stdio.h /usr/include/secure/_stdio.h
pttcp.o: /usr/include/secure/_common.h /usr/include/unistd.h
pttcp.o: /usr/include/sys/unistd.h /usr/include/sys/select.h
pttcp.o: /usr/include/sys/_select.h /usr/include/string.h
pttcp.o: /usr/include/secure/_string.h /usr/include/errno.h
pttcp.o: /usr/include/sys/errno.h /usr/include/sys/types.h
pttcp.o: /usr/include/sys/socket.h /usr/include/machine/_param.h
pttcp.o: /usr/include/i386/_param.h /usr/include/sys/ioctl.h
pttcp.o: /usr/include/sys/ttycom.h /usr/include/sys/ioccom.h
pttcp.o: /usr/include/sys/filio.h /usr/include/sys/sockio.h
pttcp.o: /usr/include/netinet/in.h /usr/include/stdint.h
pttcp.o: /usr/include/netinet6/in6.h /usr/include/netinet/tcp.h
pttcp.o: /usr/include/arpa/inet.h /usr/include/netdb.h /usr/include/signal.h
pttcp.o: /usr/include/sys/time.h /usr/include/time.h /usr/include/_structs.h
pttcp.o: /usr/include/getopt.h trc.h pttcp.h pttcp_util.h surge_clt.h
pttcp_util.o: /usr/include/stdio.h /usr/include/_types.h
pttcp_util.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
pttcp_util.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
pttcp_util.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
pttcp_util.o: /usr/include/stdarg.h /usr/include/stdlib.h
pttcp_util.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
pttcp_util.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
pttcp_util.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
pttcp_util.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
pttcp_util.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
pttcp_util.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
pttcp_util.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
pttcp_util.o: /usr/include/libkern/_OSByteOrder.h
pttcp_util.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
pttcp_util.o: /usr/include/machine/types.h /usr/include/i386/types.h
pttcp_util.o: /usr/include/netdb.h /usr/include/stdint.h
pttcp_util.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
pttcp_util.o: /usr/include/sys/types.h /usr/include/machine/_param.h
pttcp_util.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
pttcp_util.o: /usr/include/sys/time.h /usr/include/time.h
pttcp_util.o: /usr/include/_structs.h /usr/include/sys/_select.h
pttcp_util.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
pttcp_util.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
pttcp_util.o: /usr/include/sys/sockio.h /usr/include/errno.h
pttcp_util.o: /usr/include/sys/errno.h /usr/include/unistd.h
pttcp_util.o: /usr/include/sys/unistd.h /usr/include/sys/select.h
pttcp_util.o: /usr/include/string.h /usr/include/secure/_string.h trc.h
pttcp_util.o: pttcp.h pttcp_util.h
simple_tx.o: /usr/include/stdio.h /usr/include/_types.h
simple_tx.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
simple_tx.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
simple_tx.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
simple_tx.o: /usr/include/stdarg.h /usr/include/stdlib.h
simple_tx.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
simple_tx.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
simple_tx.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
simple_tx.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
simple_tx.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
simple_tx.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
simple_tx.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
simple_tx.o: /usr/include/libkern/_OSByteOrder.h
simple_tx.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
simple_tx.o: /usr/include/machine/types.h /usr/include/i386/types.h
simple_tx.o: /usr/include/netdb.h /usr/include/stdint.h
simple_tx.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
simple_tx.o: /usr/include/sys/types.h /usr/include/machine/_param.h
simple_tx.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
simple_tx.o: /usr/include/sys/time.h /usr/include/time.h
simple_tx.o: /usr/include/_structs.h /usr/include/sys/_select.h
simple_tx.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
simple_tx.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
simple_tx.o: /usr/include/sys/sockio.h /usr/include/errno.h
simple_tx.o: /usr/include/sys/errno.h /usr/include/unistd.h
simple_tx.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h
simple_tx.o: pttcp_util.h pttcp.h
simple_rx.o: /usr/include/stdio.h /usr/include/_types.h
simple_rx.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
simple_rx.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
simple_rx.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
simple_rx.o: /usr/include/stdarg.h /usr/include/stdlib.h
simple_rx.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
simple_rx.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
simple_rx.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
simple_rx.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
simple_rx.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
simple_rx.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
simple_rx.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
simple_rx.o: /usr/include/libkern/_OSByteOrder.h
simple_rx.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
simple_rx.o: /usr/include/machine/types.h /usr/include/i386/types.h
simple_rx.o: /usr/include/netdb.h /usr/include/stdint.h
simple_rx.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
simple_rx.o: /usr/include/sys/types.h /usr/include/machine/_param.h
simple_rx.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
simple_rx.o: /usr/include/sys/time.h /usr/include/time.h
simple_rx.o: /usr/include/_structs.h /usr/include/sys/_select.h
simple_rx.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
simple_rx.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
simple_rx.o: /usr/include/sys/sockio.h /usr/include/errno.h
simple_rx.o: /usr/include/sys/errno.h /usr/include/unistd.h
simple_rx.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h
simple_rx.o: pttcp.h pttcp_util.h
simple_svr.o: /usr/include/stdio.h /usr/include/_types.h
simple_svr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
simple_svr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
simple_svr.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
simple_svr.o: /usr/include/stdarg.h /usr/include/stdlib.h
simple_svr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
simple_svr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
simple_svr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
simple_svr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
simple_svr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
simple_svr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
simple_svr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
simple_svr.o: /usr/include/libkern/_OSByteOrder.h
simple_svr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
simple_svr.o: /usr/include/machine/types.h /usr/include/i386/types.h
simple_svr.o: /usr/include/netdb.h /usr/include/stdint.h
simple_svr.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
simple_svr.o: /usr/include/sys/types.h /usr/include/machine/_param.h
simple_svr.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
simple_svr.o: /usr/include/sys/time.h /usr/include/time.h
simple_svr.o: /usr/include/_structs.h /usr/include/sys/_select.h
simple_svr.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
simple_svr.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
simple_svr.o: /usr/include/sys/sockio.h /usr/include/errno.h
simple_svr.o: /usr/include/sys/errno.h /usr/include/unistd.h
simple_svr.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h
simple_svr.o: pttcp.h pttcp_util.h
simple_clt.o: /usr/include/stdio.h /usr/include/_types.h
simple_clt.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
simple_clt.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
simple_clt.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
simple_clt.o: /usr/include/stdarg.h /usr/include/stdlib.h
simple_clt.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
simple_clt.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
simple_clt.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
simple_clt.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
simple_clt.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
simple_clt.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
simple_clt.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
simple_clt.o: /usr/include/libkern/_OSByteOrder.h
simple_clt.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
simple_clt.o: /usr/include/machine/types.h /usr/include/i386/types.h
simple_clt.o: /usr/include/netdb.h /usr/include/stdint.h
simple_clt.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
simple_clt.o: /usr/include/sys/types.h /usr/include/machine/_param.h
simple_clt.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
simple_clt.o: /usr/include/sys/time.h /usr/include/time.h
simple_clt.o: /usr/include/_structs.h /usr/include/sys/_select.h
simple_clt.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
simple_clt.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
simple_clt.o: /usr/include/sys/sockio.h /usr/include/errno.h
simple_clt.o: /usr/include/sys/errno.h /usr/include/unistd.h
simple_clt.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h
simple_clt.o: pttcp.h pttcp_util.h
cts_clt.o: /usr/include/stdio.h /usr/include/_types.h
cts_clt.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
cts_clt.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
cts_clt.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
cts_clt.o: /usr/include/stdarg.h /usr/include/stdlib.h
cts_clt.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
cts_clt.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
cts_clt.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
cts_clt.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
cts_clt.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
cts_clt.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
cts_clt.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
cts_clt.o: /usr/include/libkern/_OSByteOrder.h
cts_clt.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
cts_clt.o: /usr/include/machine/types.h /usr/include/i386/types.h
cts_clt.o: /usr/include/netdb.h /usr/include/stdint.h
cts_clt.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
cts_clt.o: /usr/include/sys/types.h /usr/include/machine/_param.h
cts_clt.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
cts_clt.o: /usr/include/sys/time.h /usr/include/time.h
cts_clt.o: /usr/include/_structs.h /usr/include/sys/_select.h
cts_clt.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
cts_clt.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
cts_clt.o: /usr/include/sys/sockio.h /usr/include/errno.h
cts_clt.o: /usr/include/sys/errno.h /usr/include/unistd.h
cts_clt.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h pttcp.h
cts_clt.o: pttcp_util.h
surge_clt.o: /usr/include/stdio.h /usr/include/_types.h
surge_clt.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
surge_clt.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
surge_clt.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
surge_clt.o: /usr/include/stdarg.h /usr/include/stdlib.h
surge_clt.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
surge_clt.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
surge_clt.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
surge_clt.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
surge_clt.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
surge_clt.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
surge_clt.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
surge_clt.o: /usr/include/libkern/_OSByteOrder.h
surge_clt.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
surge_clt.o: /usr/include/machine/types.h /usr/include/i386/types.h
surge_clt.o: /usr/include/netdb.h /usr/include/stdint.h
surge_clt.o: /usr/include/netinet/in.h /usr/include/sys/socket.h
surge_clt.o: /usr/include/sys/types.h /usr/include/machine/_param.h
surge_clt.o: /usr/include/i386/_param.h /usr/include/netinet6/in6.h
surge_clt.o: /usr/include/sys/time.h /usr/include/time.h
surge_clt.o: /usr/include/_structs.h /usr/include/sys/_select.h
surge_clt.o: /usr/include/sys/ioctl.h /usr/include/sys/ttycom.h
surge_clt.o: /usr/include/sys/ioccom.h /usr/include/sys/filio.h
surge_clt.o: /usr/include/sys/sockio.h /usr/include/errno.h
surge_clt.o: /usr/include/sys/errno.h /usr/include/math.h
surge_clt.o: /usr/include/architecture/i386/math.h /usr/include/string.h
surge_clt.o: /usr/include/secure/_string.h /usr/include/unistd.h
surge_clt.o: /usr/include/sys/unistd.h /usr/include/sys/select.h trc.h
surge_clt.o: pttcp.h pttcp_util.h surge_clt.h
