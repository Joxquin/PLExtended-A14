package io.grpc.binder;

import O2.j;
import X2.AbstractC0116g0;
import android.content.Context;
import io.grpc.internal.C1044r0;
import io.grpc.internal.C1063x1;
import io.grpc.internal.H2;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class d extends AbstractC0116g0 {

    /* renamed from: a  reason: collision with root package name */
    public final C1063x1 f9709a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f9710b;

    /* renamed from: c  reason: collision with root package name */
    public final H2 f9711c = new H2(C1044r0.f10245l);

    /* renamed from: d  reason: collision with root package name */
    public h f9712d;

    /* renamed from: e  reason: collision with root package name */
    public final e f9713e;

    /* renamed from: f  reason: collision with root package name */
    public final a f9714f;

    public d(Context context, AndroidComponentAddress androidComponentAddress) {
        Object obj = B.c.f105a;
        this.f9710b = context.getMainExecutor();
        int i4 = g.f9719a;
        this.f9712d = new f();
        this.f9713e = e.f9715d;
        this.f9714f = a.f9695b;
        this.f9709a = new C1063x1(androidComponentAddress, androidComponentAddress.b().getPackageName(), new b(this, context));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final X2.AbstractC0114f0 a() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.binder.d.a():X2.f0");
    }

    /* renamed from: b */
    public final String toString() {
        O2.i b4 = j.b(this);
        b4.a(this.f9709a, "delegate");
        return b4.toString();
    }
}
