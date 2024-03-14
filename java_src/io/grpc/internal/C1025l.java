package io.grpc.internal;

import X2.AbstractC0119i;
import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.InternalChannelz$ChannelTrace$Event$Severity;
import java.text.MessageFormat;
import java.util.Collection;
import java.util.logging.Level;
/* renamed from: io.grpc.internal.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1025l extends AbstractC0119i {

    /* renamed from: a  reason: collision with root package name */
    public final C1029m f10159a;

    /* renamed from: b  reason: collision with root package name */
    public final K2 f10160b;

    public C1025l(C1029m c1029m, K2 k22) {
        this.f10159a = c1029m;
        O2.m.h(k22, "time");
        this.f10160b = k22;
    }

    public static Level c(ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel) {
        int ordinal = channelLogger$ChannelLogLevel.ordinal();
        return ordinal != 1 ? (ordinal == 2 || ordinal == 3) ? Level.FINE : Level.FINEST : Level.FINER;
    }

    @Override // X2.AbstractC0119i
    public final void a(ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel, String str) {
        boolean z4;
        C1029m c1029m = this.f10159a;
        X2.Q q4 = c1029m.f10173b;
        Level c4 = c(channelLogger$ChannelLogLevel);
        if (C1029m.f10171d.isLoggable(c4)) {
            C1029m.a(q4, c4, str);
        }
        ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel2 = ChannelLogger$ChannelLogLevel.DEBUG;
        boolean z5 = false;
        if (channelLogger$ChannelLogLevel != channelLogger$ChannelLogLevel2) {
            C1029m c1029m2 = this.f10159a;
            synchronized (c1029m2.f10172a) {
                z4 = c1029m2.f10174c != null;
            }
            if (z4) {
                z5 = true;
            }
        }
        if (!z5 || channelLogger$ChannelLogLevel == channelLogger$ChannelLogLevel2) {
            return;
        }
        int ordinal = channelLogger$ChannelLogLevel.ordinal();
        InternalChannelz$ChannelTrace$Event$Severity internalChannelz$ChannelTrace$Event$Severity = ordinal != 2 ? ordinal != 3 ? InternalChannelz$ChannelTrace$Event$Severity.CT_INFO : InternalChannelz$ChannelTrace$Event$Severity.CT_ERROR : InternalChannelz$ChannelTrace$Event$Severity.CT_WARNING;
        Long valueOf = Long.valueOf(this.f10160b.a());
        O2.m.h(str, "description");
        O2.m.h(valueOf, "timestampNanos");
        X2.L l4 = new X2.L(str, internalChannelz$ChannelTrace$Event$Severity, valueOf.longValue(), null);
        synchronized (c1029m.f10172a) {
            Collection collection = c1029m.f10174c;
            if (collection != null) {
                ((ChannelTracer$1) collection).add(l4);
            }
        }
    }

    @Override // X2.AbstractC0119i
    public final void b(ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel, String str, Object... objArr) {
        boolean z4;
        Level c4 = c(channelLogger$ChannelLogLevel);
        boolean z5 = false;
        if (channelLogger$ChannelLogLevel != ChannelLogger$ChannelLogLevel.DEBUG) {
            C1029m c1029m = this.f10159a;
            synchronized (c1029m.f10172a) {
                z4 = c1029m.f10174c != null;
            }
            if (z4) {
                z5 = true;
            }
        }
        a(channelLogger$ChannelLogLevel, (z5 || C1029m.f10171d.isLoggable(c4)) ? MessageFormat.format(str, objArr) : null);
    }
}
