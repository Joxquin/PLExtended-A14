package io.grpc.internal;

import X2.AbstractC0119i;
import io.grpc.InternalChannelz$ChannelTrace$Event$Severity;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1029m {

    /* renamed from: d  reason: collision with root package name */
    public static final Logger f10171d = Logger.getLogger(AbstractC0119i.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final Object f10172a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final X2.Q f10173b;

    /* renamed from: c  reason: collision with root package name */
    public final Collection f10174c;

    public C1029m(X2.Q q4, long j4, String str) {
        O2.m.h(str, "description");
        this.f10173b = q4;
        this.f10174c = null;
        String concat = str.concat(" created");
        InternalChannelz$ChannelTrace$Event$Severity internalChannelz$ChannelTrace$Event$Severity = InternalChannelz$ChannelTrace$Event$Severity.CT_INFO;
        Long valueOf = Long.valueOf(j4);
        O2.m.h(concat, "description");
        O2.m.h(valueOf, "timestampNanos");
        b(new X2.L(concat, internalChannelz$ChannelTrace$Event$Severity, valueOf.longValue(), null));
    }

    public static void a(X2.Q q4, Level level, String str) {
        Logger logger = f10171d;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + q4 + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    public final void b(X2.L l4) {
        int ordinal = l4.f2121b.ordinal();
        Level level = ordinal != 2 ? ordinal != 3 ? Level.FINEST : Level.FINE : Level.FINER;
        synchronized (this.f10172a) {
            Collection collection = this.f10174c;
            if (collection != null) {
                ((ChannelTracer$1) collection).add(l4);
            }
        }
        a(this.f10173b, level, l4.f2120a);
    }
}
