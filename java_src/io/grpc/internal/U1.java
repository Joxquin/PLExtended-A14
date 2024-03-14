package io.grpc.internal;

import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class U1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10008d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ V1 f10009e;

    public /* synthetic */ U1(V1 v12, int i4) {
        this.f10008d = i4;
        this.f10009e = v12;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j4;
        switch (this.f10008d) {
            case 0:
                V1 v12 = this.f10009e;
                if (!v12.f10019f) {
                    v12.f10020g = null;
                    return;
                }
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                O2.o oVar = v12.f10017d;
                if (oVar.f1523b) {
                    oVar.f1522a.getClass();
                    int i4 = O2.l.f1520a;
                    j4 = (System.nanoTime() - oVar.f1524c) + 0;
                } else {
                    j4 = 0;
                }
                long convert = timeUnit.convert(j4, timeUnit);
                V1 v13 = this.f10009e;
                long j5 = v13.f10018e - convert;
                if (j5 > 0) {
                    v13.f10020g = v13.f10014a.schedule(new U1(v13, 1, 0), j5, timeUnit);
                    return;
                }
                v13.f10019f = false;
                v13.f10020g = null;
                v13.f10016c.run();
                return;
            default:
                V1 v14 = this.f10009e;
                v14.f10015b.execute(new U1(v14, 0, 0));
                return;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U1(V1 v12, int i4, int i5) {
        this(v12, 0);
        this.f10008d = i4;
        if (i4 != 1) {
        } else {
            this(v12, 1);
        }
    }
}
