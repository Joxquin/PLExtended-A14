package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0302x extends AbstractC0290q0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ A f4037a;

    public C0302x(A a4) {
        this.f4037a = a4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0290q0
    public final void onScrolled(RecyclerView recyclerView, int i4, int i5) {
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        A a4 = this.f4037a;
        int computeVerticalScrollRange = a4.f3753v.computeVerticalScrollRange();
        int i6 = a4.f3752u;
        int i7 = computeVerticalScrollRange - i6;
        int i8 = a4.f3735d;
        a4.f3754w = i7 > 0 && i6 >= i8;
        int computeHorizontalScrollRange = a4.f3753v.computeHorizontalScrollRange();
        int i9 = a4.f3751t;
        boolean z4 = computeHorizontalScrollRange - i9 > 0 && i9 >= i8;
        a4.f3755x = z4;
        boolean z5 = a4.f3754w;
        if (!z5 && !z4) {
            if (a4.f3756y != 0) {
                a4.c(0);
                return;
            }
            return;
        }
        if (z5) {
            float f4 = i6;
            a4.f3746o = (int) ((((f4 / 2.0f) + computeVerticalScrollOffset) * f4) / computeVerticalScrollRange);
            a4.f3745n = Math.min(i6, (i6 * i6) / computeVerticalScrollRange);
        }
        if (a4.f3755x) {
            float f5 = computeHorizontalScrollOffset;
            float f6 = i9;
            a4.f3749r = (int) ((((f6 / 2.0f) + f5) * f6) / computeHorizontalScrollRange);
            a4.f3748q = Math.min(i9, (i9 * i9) / computeHorizontalScrollRange);
        }
        int i10 = a4.f3756y;
        if (i10 == 0 || i10 == 1) {
            a4.c(1);
        }
    }
}
