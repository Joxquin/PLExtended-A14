package io.grpc.internal;

import com.google.common.collect.ImmutableSet;
import java.util.Arrays;
/* renamed from: io.grpc.internal.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1047s0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f10280a;

    /* renamed from: b  reason: collision with root package name */
    public final long f10281b;

    /* renamed from: c  reason: collision with root package name */
    public final ImmutableSet f10282c;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r1.l() == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1047s0(int r1, long r2, java.util.Set r4) {
        /*
            r0 = this;
            r0.<init>()
            r0.f10280a = r1
            r0.f10281b = r2
            int r1 = com.google.common.collect.ImmutableSet.f8434f
            boolean r1 = r4 instanceof com.google.common.collect.ImmutableSet
            if (r1 == 0) goto L1b
            boolean r1 = r4 instanceof java.util.SortedSet
            if (r1 != 0) goto L1b
            r1 = r4
            com.google.common.collect.ImmutableSet r1 = (com.google.common.collect.ImmutableSet) r1
            boolean r2 = r1.l()
            if (r2 != 0) goto L1b
            goto L24
        L1b:
            java.lang.Object[] r1 = r4.toArray()
            int r2 = r1.length
            com.google.common.collect.ImmutableSet r1 = com.google.common.collect.ImmutableSet.p(r2, r1)
        L24:
            r0.f10282c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.C1047s0.<init>(int, long, java.util.Set):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1047s0.class != obj.getClass()) {
            return false;
        }
        C1047s0 c1047s0 = (C1047s0) obj;
        return this.f10280a == c1047s0.f10280a && this.f10281b == c1047s0.f10281b && O2.k.a(this.f10282c, c1047s0.f10282c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10280a), Long.valueOf(this.f10281b), this.f10282c});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.d(String.valueOf(this.f10280a), "maxAttempts");
        b4.b("hedgingDelayNanos", this.f10281b);
        b4.a(this.f10282c, "nonFatalStatusCodes");
        return b4.toString();
    }
}
