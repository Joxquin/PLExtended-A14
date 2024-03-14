package io.grpc.internal;

import X2.C0113f;
import io.grpc.Status$Code;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class A1 {

    /* renamed from: g  reason: collision with root package name */
    public static final C0113f f9821g = new C0113f("io.grpc.internal.ManagedChannelServiceConfig.MethodInfo");

    /* renamed from: a  reason: collision with root package name */
    public final Long f9822a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f9823b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f9824c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f9825d;

    /* renamed from: e  reason: collision with root package name */
    public final s2 f9826e;

    /* renamed from: f  reason: collision with root package name */
    public final C1047s0 f9827f;

    public A1(Map map, boolean z4, int i4, int i5) {
        Boolean bool;
        s2 s2Var;
        C1047s0 c1047s0;
        this.f9822a = O0.h(map, "timeout");
        if (map.containsKey("waitForReady")) {
            Object obj = map.get("waitForReady");
            if (!(obj instanceof Boolean)) {
                throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, "waitForReady", map));
            }
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        this.f9823b = bool;
        Integer e4 = O0.e(map, "maxResponseMessageBytes");
        this.f9824c = e4;
        if (e4 != null) {
            O2.m.d("maxInboundMessageSize %s exceeds bounds", e4, e4.intValue() >= 0);
        }
        Integer e5 = O0.e(map, "maxRequestMessageBytes");
        this.f9825d = e5;
        if (e5 != null) {
            O2.m.d("maxOutboundMessageSize %s exceeds bounds", e5, e5.intValue() >= 0);
        }
        Map f4 = z4 ? O0.f(map, "retryPolicy") : null;
        if (f4 == null) {
            s2Var = null;
        } else {
            Integer e6 = O0.e(f4, "maxAttempts");
            O2.m.h(e6, "maxAttempts cannot be empty");
            int intValue = e6.intValue();
            O2.m.c("maxAttempts must be greater than 1: %s", intValue, intValue >= 2);
            int min = Math.min(intValue, i4);
            Long h4 = O0.h(f4, "initialBackoff");
            O2.m.h(h4, "initialBackoff cannot be empty");
            long longValue = h4.longValue();
            O2.m.e(longValue > 0, "initialBackoffNanos must be greater than 0: %s", longValue);
            Long h5 = O0.h(f4, "maxBackoff");
            O2.m.h(h5, "maxBackoff cannot be empty");
            long longValue2 = h5.longValue();
            O2.m.e(longValue2 > 0, "maxBackoff must be greater than 0: %s", longValue2);
            Double d4 = O0.d(f4, "backoffMultiplier");
            O2.m.h(d4, "backoffMultiplier cannot be empty");
            double doubleValue = d4.doubleValue();
            O2.m.d("backoffMultiplier must be greater than 0: %s", Double.valueOf(doubleValue), doubleValue > 0.0d);
            Long h6 = O0.h(f4, "perAttemptRecvTimeout");
            O2.m.d("perAttemptRecvTimeout cannot be negative: %s", h6, h6 == null || h6.longValue() >= 0);
            Set a4 = B2.a(f4, "retryableStatusCodes");
            O2.t.a("%s is required in retry policy", "retryableStatusCodes", a4 != null);
            O2.t.a("%s must not contain OK", "retryableStatusCodes", !a4.contains(Status$Code.OK));
            O2.m.b("retryableStatusCodes cannot be empty without perAttemptRecvTimeout", (h6 == null && a4.isEmpty()) ? false : true);
            s2Var = new s2(min, longValue, longValue2, doubleValue, h6, a4);
        }
        this.f9826e = s2Var;
        Map f5 = z4 ? O0.f(map, "hedgingPolicy") : null;
        if (f5 == null) {
            c1047s0 = null;
        } else {
            Integer e7 = O0.e(f5, "maxAttempts");
            O2.m.h(e7, "maxAttempts cannot be empty");
            int intValue2 = e7.intValue();
            O2.m.c("maxAttempts must be greater than 1: %s", intValue2, intValue2 >= 2);
            int min2 = Math.min(intValue2, i5);
            Long h7 = O0.h(f5, "hedgingDelay");
            O2.m.h(h7, "hedgingDelay cannot be empty");
            long longValue3 = h7.longValue();
            O2.m.e(longValue3 >= 0, "hedgingDelay must not be negative: %s", longValue3);
            Set a5 = B2.a(f5, "nonFatalStatusCodes");
            if (a5 == null) {
                a5 = Collections.unmodifiableSet(EnumSet.noneOf(Status$Code.class));
            } else {
                O2.t.a("%s must not contain OK", "nonFatalStatusCodes", !a5.contains(Status$Code.OK));
            }
            c1047s0 = new C1047s0(min2, longValue3, a5);
        }
        this.f9827f = c1047s0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof A1) {
            A1 a12 = (A1) obj;
            return O2.k.a(this.f9822a, a12.f9822a) && O2.k.a(this.f9823b, a12.f9823b) && O2.k.a(this.f9824c, a12.f9824c) && O2.k.a(this.f9825d, a12.f9825d) && O2.k.a(this.f9826e, a12.f9826e) && O2.k.a(this.f9827f, a12.f9827f);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9822a, this.f9823b, this.f9824c, this.f9825d, this.f9826e, this.f9827f});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9822a, "timeoutNanos");
        b4.a(this.f9823b, "waitForReady");
        b4.a(this.f9824c, "maxInboundMessageSize");
        b4.a(this.f9825d, "maxOutboundMessageSize");
        b4.a(this.f9826e, "retryPolicy");
        b4.a(this.f9827f, "hedgingPolicy");
        return b4.toString();
    }
}
