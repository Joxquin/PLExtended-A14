package v1;

import android.util.Log;
import androidx.dynamicanimation.animation.s;
import androidx.dynamicanimation.animation.t;
import t1.InterfaceC1405d;
/* renamed from: v1.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1437g implements InterfaceC1405d {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC1405d f12639d;

    /* renamed from: e  reason: collision with root package name */
    public final s f12640e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12641f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12642g;

    /* renamed from: h  reason: collision with root package name */
    public float f12643h;

    public C1437g(C1432b c1432b) {
        this.f12639d = c1432b;
        s sVar = new s(C1436f.f12638a, this);
        t tVar = new t();
        tVar.a(1.0f);
        tVar.b(100000.0f);
        tVar.f3222i = 1.0f;
        sVar.f3211x = tVar;
        sVar.f3201h = 0.0f;
        sVar.f3200g = 1.0f;
        sVar.e(0.001f);
        this.f12640e = sVar;
        this.f12643h = 1.0f;
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionFinished() {
        this.f12641f = false;
        this.f12642g = false;
        this.f12639d.onTransitionFinished();
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionProgress(float f4) {
        boolean z4 = this.f12641f;
        if (!z4) {
            Log.e("UnfoldRemoteFilter", "Progress received while not in progress.");
        } else if (this.f12642g) {
            this.f12640e.j(f4);
        } else {
            if (z4) {
                this.f12639d.onTransitionProgress(f4);
            } else {
                Log.e("UnfoldRemoteFilter", "Filtered progress received received while animation not in progress.");
            }
            this.f12643h = f4;
            this.f12642g = true;
        }
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionStarted() {
        this.f12639d.onTransitionStarted();
        this.f12641f = true;
    }
}
