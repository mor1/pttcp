/*********************************************************************
 * Trace macros
 *
 * Based on Tim Deegan's (tjd21) and Keir Fraser's (kaf24).
 *
 * $Id: trc.h,v 2.0 2000/05/03 20:26:34 rmm1002 Exp $
 *
 */

/* (C) Cambridge University Computer Laboratory, 2000
 *     All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *      This product includes software developed by the Systems Research
 *      Group at Cambridge University Computer Laboratory.
 * 4. Neither the name of the University nor of the Laboratory may be used
 *    to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#ifdef __KERNEL__
# define dprintf printk
#else
# define dprintf printf
#endif

#define ERROR(fmt,args...) \
    dprintf("*** [%s:%i]:%s: " ## fmt, \
            __FILE__, __LINE__, __PRETTY_FUNCTION__ , ## args)

#ifdef _ENTER_EXIT_
# define ENTER dprintf("[%s:%i]: +++ %s\n", \
                       __FILE__, __LINE__, __PRETTY_FUNCTION__)
# define LEAVE dprintf("[%s:%i]: --- %s\n", \
                       __FILE__, __LINE__, __PRETTY_FUNCTION__)
# define RETURN LEAVE; return
#else
# define ENTER
# define LEAVE
# define RETURN return
#endif // _ENTER_EXIT_

#ifdef _TRACE_
# define TRC(fmt,args...)              \
    dprintf("### [%s:%i]:%s: " ## fmt, \
            __FILE__, __LINE__, __PRETTY_FUNCTION__ , ## args)
#else
# define TRC(fmt,args...)
#endif // _TRACE_
