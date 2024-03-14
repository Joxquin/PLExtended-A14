package L1;

import J1.C0022e;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class W implements InterfaceC0047b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ K1.a f1125a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Y f1126b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0046a0 f1127c;

    public W(C0046a0 c0046a0, K1.a aVar, Y y4) {
        this.f1127c = c0046a0;
        this.f1125a = aVar;
        this.f1126b = y4;
    }

    @Override // L1.InterfaceC0047b
    public final void a(Bundle bundle) {
        M1.b.f("Fetched content back in callback");
        try {
            C0046a0 c0046a0 = this.f1127c;
            this.f1125a.getClass();
            Bundle bundle2 = bundle.getBundle("Contents");
            C0046a0.a(c0046a0, bundle2 == null ? new C0022e() : new C0022e(bundle2), this.f1126b);
        } catch (Throwable th) {
            M1.b.d("Failed to handleContentData", th);
        }
    }
}
