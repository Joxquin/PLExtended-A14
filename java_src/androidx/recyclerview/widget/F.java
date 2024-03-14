package androidx.recyclerview.widget;
/* loaded from: classes.dex */
public final class F extends H {
    @Override // androidx.recyclerview.widget.H
    public final int getSpanIndex(int i4, int i5) {
        return i4 % i5;
    }

    @Override // androidx.recyclerview.widget.H
    public final int getSpanSize(int i4) {
        return 1;
    }
}
