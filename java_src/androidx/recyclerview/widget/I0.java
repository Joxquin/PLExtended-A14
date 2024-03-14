package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class I0 extends AbstractC0290q0 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3810a = false;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ V f3811b;

    public I0(V v4) {
        this.f3811b = v4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrollStateChanged(RecyclerView recyclerView, int i4) {
        if (i4 == 0 && this.f3810a) {
            this.f3810a = false;
            this.f3811b.f();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
        if (i4 == 0 && i5 == 0) {
            return;
        }
        this.f3810a = true;
    }
}
