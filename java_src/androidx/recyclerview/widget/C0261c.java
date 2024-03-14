package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0261c implements P {

    /* renamed from: a  reason: collision with root package name */
    public final Z f3928a;

    public C0261c(Z z4) {
        this.f3928a = z4;
    }

    @Override // androidx.recyclerview.widget.P
    public final void a(int i4, int i5) {
        this.f3928a.notifyItemRangeRemoved(i4, i5);
    }

    @Override // androidx.recyclerview.widget.P
    public final void b(int i4, int i5) {
        this.f3928a.notifyItemMoved(i4, i5);
    }

    @Override // androidx.recyclerview.widget.P
    public final void c(int i4, int i5) {
        this.f3928a.notifyItemRangeInserted(i4, i5);
    }

    @Override // androidx.recyclerview.widget.P
    public final void d(int i4, int i5, Object obj) {
        this.f3928a.notifyItemRangeChanged(i4, i5, obj);
    }
}
