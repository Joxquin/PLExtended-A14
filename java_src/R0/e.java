package R0;

import com.android.launcher3.pm.UserCache;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1639d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ UserCache f1640e;

    public /* synthetic */ e(UserCache userCache, int i4) {
        this.f1639d = i4;
        this.f1640e = userCache;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1639d) {
            case 0:
                UserCache.b(this.f1640e);
                return;
            case 1:
                UserCache.d(this.f1640e);
                return;
            default:
                UserCache.a(this.f1640e);
                return;
        }
    }
}
