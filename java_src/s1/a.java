package S1;

import L1.P;
import X1.m;
import com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class a implements P {

    /* renamed from: a  reason: collision with root package name */
    public final Consumer f1681a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1682b = false;

    public a(m mVar) {
        this.f1681a = mVar;
    }

    @Override // L1.P
    public final void a() {
    }

    @Override // L1.P
    public final void b() {
    }

    @Override // L1.P
    public final void c() {
    }

    @Override // L1.P
    public final void d() {
    }

    @Override // L1.P
    public final void e(b bVar) {
        if (this.f1682b) {
            return;
        }
        this.f1681a.accept(bVar);
    }

    @Override // L1.P
    public final void f() {
    }
}
