package io.grpc.internal;

import com.google.common.collect.ImmutableSet;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class s2 {

    /* renamed from: a  reason: collision with root package name */
    public final int f10349a;

    /* renamed from: b  reason: collision with root package name */
    public final long f10350b;

    /* renamed from: c  reason: collision with root package name */
    public final long f10351c;

    /* renamed from: d  reason: collision with root package name */
    public final double f10352d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f10353e;

    /* renamed from: f  reason: collision with root package name */
    public final ImmutableSet f10354f;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r1.l() == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public s2(int r1, long r2, long r4, double r6, java.lang.Long r8, java.util.Set r9) {
        /*
            r0 = this;
            r0.<init>()
            r0.f10349a = r1
            r0.f10350b = r2
            r0.f10351c = r4
            r0.f10352d = r6
            r0.f10353e = r8
            int r1 = com.google.common.collect.ImmutableSet.f8434f
            boolean r1 = r9 instanceof com.google.common.collect.ImmutableSet
            if (r1 == 0) goto L21
            boolean r1 = r9 instanceof java.util.SortedSet
            if (r1 != 0) goto L21
            r1 = r9
            com.google.common.collect.ImmutableSet r1 = (com.google.common.collect.ImmutableSet) r1
            boolean r2 = r1.l()
            if (r2 != 0) goto L21
            goto L2a
        L21:
            java.lang.Object[] r1 = r9.toArray()
            int r2 = r1.length
            com.google.common.collect.ImmutableSet r1 = com.google.common.collect.ImmutableSet.p(r2, r1)
        L2a:
            r0.f10354f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.s2.<init>(int, long, long, double, java.lang.Long, java.util.Set):void");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof s2) {
            s2 s2Var = (s2) obj;
            return this.f10349a == s2Var.f10349a && this.f10350b == s2Var.f10350b && this.f10351c == s2Var.f10351c && Double.compare(this.f10352d, s2Var.f10352d) == 0 && O2.k.a(this.f10353e, s2Var.f10353e) && O2.k.a(this.f10354f, s2Var.f10354f);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10349a), Long.valueOf(this.f10350b), Long.valueOf(this.f10351c), Double.valueOf(this.f10352d), this.f10353e, this.f10354f});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.d(String.valueOf(this.f10349a), "maxAttempts");
        b4.b("initialBackoffNanos", this.f10350b);
        b4.b("maxBackoffNanos", this.f10351c);
        b4.d(String.valueOf(this.f10352d), "backoffMultiplier");
        b4.a(this.f10353e, "perAttemptRecvTimeoutNanos");
        b4.a(this.f10354f, "retryableStatusCodes");
        return b4.toString();
    }
}
