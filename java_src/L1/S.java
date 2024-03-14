package L1;

import J1.C0022e;
import android.os.Bundle;
/* loaded from: classes.dex */
public final /* synthetic */ class S implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1106d = 1;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0046a0 f1107e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Y f1108f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f1109g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Object f1110h;

    public /* synthetic */ S(C0046a0 c0046a0, C0022e c0022e, Y y4, C0022e c0022e2) {
        this.f1107e = c0046a0;
        this.f1109g = c0022e;
        this.f1108f = y4;
        this.f1110h = c0022e2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1106d) {
            case 0:
                C0046a0 c0046a0 = this.f1107e;
                K1.a aVar = (K1.a) this.f1109g;
                J1.t tVar = (J1.t) this.f1110h;
                Y y4 = this.f1108f;
                synchronized (c0046a0) {
                    try {
                        AbstractC0048c abstractC0048c = c0046a0.f1142e;
                        int i4 = c0046a0.f1148k;
                        boolean z4 = tVar.f799i;
                        String str = c0046a0.f1139b;
                        String str2 = c0046a0.f1140c;
                        long j4 = c0046a0.f1138a;
                        aVar.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putInt("CONTEXT_IMAGE_BUNDLE_VERSION_KEY", 1);
                        bundle.putBoolean("CONTEXT_IMAGE_PRIMARY_TASK_KEY", z4);
                        bundle.putString("CONTEXT_IMAGE_PACKAGE_NAME_KEY", str);
                        bundle.putString("CONTEXT_IMAGE_ACTIVITY_NAME_KEY", str2);
                        bundle.putLong("CONTEXT_IMAGE_CAPTURE_TIME_MS_KEY", j4);
                        abstractC0048c.c(i4, bundle);
                        AbstractC0048c abstractC0048c2 = c0046a0.f1142e;
                        int i5 = c0046a0.f1148k;
                        abstractC0048c2.d(i5, K1.a.c(c0046a0.f1139b, c0046a0.f1140c, i5, c0046a0.f1138a, tVar, c0046a0.f1150m, new J1.v()), new W(c0046a0, aVar, y4));
                    }
                }
                return;
            default:
                C0046a0 c0046a02 = this.f1107e;
                Y y5 = this.f1108f;
                C0022e c0022e = (C0022e) this.f1110h;
                synchronized (c0046a02) {
                    c0046a02.f1147j.d();
                    y5.a(c0022e);
                }
                return;
        }
    }

    public /* synthetic */ S(C0046a0 c0046a0, K1.a aVar, J1.t tVar, Y y4) {
        this.f1107e = c0046a0;
        this.f1109g = aVar;
        this.f1110h = tVar;
        this.f1108f = y4;
    }
}
