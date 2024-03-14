package io.grpc.internal;

import X2.InterfaceC0122j0;
import X2.InterfaceC0136q0;
import java.util.concurrent.TimeUnit;
/* renamed from: io.grpc.internal.o0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1036o0 implements O2.q, InterfaceC0136q0, InterfaceC0122j0 {
    @Override // X2.InterfaceC0136q0
    /* renamed from: a  reason: collision with other method in class */
    public byte[] mo10a(Object obj) {
        return (byte[]) obj;
    }

    @Override // X2.InterfaceC0136q0
    public Object b(byte[] bArr) {
        return bArr;
    }

    @Override // X2.InterfaceC0122j0
    public Object c(String str) {
        O2.m.b("empty timeout", str.length() > 0);
        O2.m.b("bad timeout format", str.length() <= 9);
        long parseLong = Long.parseLong(str.substring(0, str.length() - 1));
        char charAt = str.charAt(str.length() - 1);
        if (charAt != 'H') {
            if (charAt != 'M') {
                if (charAt != 'S') {
                    if (charAt != 'u') {
                        if (charAt != 'm') {
                            if (charAt == 'n') {
                                return Long.valueOf(parseLong);
                            }
                            throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(charAt)));
                        }
                        return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(parseLong));
                    }
                    return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(parseLong));
                }
                return Long.valueOf(TimeUnit.SECONDS.toNanos(parseLong));
            }
            return Long.valueOf(TimeUnit.MINUTES.toNanos(parseLong));
        }
        return Long.valueOf(TimeUnit.HOURS.toNanos(parseLong));
    }

    @Override // O2.q
    public Object get() {
        return new O2.o();
    }

    @Override // X2.InterfaceC0122j0
    public String a(Object obj) {
        Long l4 = (Long) obj;
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (l4.longValue() >= 0) {
            if (l4.longValue() < 100000000) {
                return l4 + "n";
            } else if (l4.longValue() < 100000000000L) {
                return timeUnit.toMicros(l4.longValue()) + "u";
            } else if (l4.longValue() < 100000000000000L) {
                return timeUnit.toMillis(l4.longValue()) + "m";
            } else if (l4.longValue() < 100000000000000000L) {
                return timeUnit.toSeconds(l4.longValue()) + "S";
            } else if (l4.longValue() < 6000000000000000000L) {
                return timeUnit.toMinutes(l4.longValue()) + "M";
            } else {
                return timeUnit.toHours(l4.longValue()) + "H";
            }
        }
        throw new IllegalArgumentException("Timeout too small");
    }
}
