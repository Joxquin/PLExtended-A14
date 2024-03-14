package k;

import android.view.View;
/* renamed from: k.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1125a implements androidx.core.view.P {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10850a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f10851b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC1127b f10852c;

    public C1125a(AbstractC1127b abstractC1127b) {
        this.f10852c = abstractC1127b;
    }

    @Override // androidx.core.view.P
    public final void a() {
        if (this.f10850a) {
            return;
        }
        AbstractC1127b abstractC1127b = this.f10852c;
        abstractC1127b.f10861i = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f10851b);
    }

    @Override // androidx.core.view.P
    public final void b(View view) {
        this.f10850a = true;
    }

    @Override // androidx.core.view.P
    public final void c() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f10850a = false;
    }
}
