package X2;

import io.grpc.InternalChannelz$ChannelTrace$Event$Severity;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class L {

    /* renamed from: a  reason: collision with root package name */
    public final String f2120a;

    /* renamed from: b  reason: collision with root package name */
    public final InternalChannelz$ChannelTrace$Event$Severity f2121b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2122c;

    /* renamed from: d  reason: collision with root package name */
    public final P f2123d;

    /* renamed from: e  reason: collision with root package name */
    public final P f2124e;

    public L(String str, InternalChannelz$ChannelTrace$Event$Severity internalChannelz$ChannelTrace$Event$Severity, long j4, P p4) {
        this.f2120a = str;
        O2.m.h(internalChannelz$ChannelTrace$Event$Severity, "severity");
        this.f2121b = internalChannelz$ChannelTrace$Event$Severity;
        this.f2122c = j4;
        this.f2123d = null;
        this.f2124e = p4;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof L) {
            L l4 = (L) obj;
            return O2.k.a(this.f2120a, l4.f2120a) && O2.k.a(this.f2121b, l4.f2121b) && this.f2122c == l4.f2122c && O2.k.a(this.f2123d, l4.f2123d) && O2.k.a(this.f2124e, l4.f2124e);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2120a, this.f2121b, Long.valueOf(this.f2122c), this.f2123d, this.f2124e});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2120a, "description");
        b4.a(this.f2121b, "severity");
        b4.b("timestampNanos", this.f2122c);
        b4.a(this.f2123d, "channelRef");
        b4.a(this.f2124e, "subchannelRef");
        return b4.toString();
    }
}
