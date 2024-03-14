package k;

import android.view.View;
/* loaded from: classes.dex */
public final class a1 extends androidx.core.view.Q {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10853a = false;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f10854b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.b f10855c;

    public a1(androidx.appcompat.widget.b bVar, int i4) {
        this.f10855c = bVar;
        this.f10854b = i4;
    }

    @Override // androidx.core.view.P
    public final void a() {
        if (this.f10853a) {
            return;
        }
        this.f10855c.f2688a.setVisibility(this.f10854b);
    }

    @Override // androidx.core.view.Q, androidx.core.view.P
    public final void b(View view) {
        this.f10853a = true;
    }

    @Override // androidx.core.view.Q, androidx.core.view.P
    public final void c() {
        this.f10855c.f2688a.setVisibility(0);
    }
}
