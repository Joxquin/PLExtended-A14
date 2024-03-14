package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class K implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public int f3083d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f3084e;

    public K(ViewGroup viewGroup) {
        this.f3084e = viewGroup;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3083d < this.f3084e.getChildCount();
    }

    @Override // java.util.Iterator
    public final Object next() {
        ViewGroup viewGroup = this.f3084e;
        int i4 = this.f3083d;
        this.f3083d = i4 + 1;
        View childAt = viewGroup.getChildAt(i4);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        ViewGroup viewGroup = this.f3084e;
        int i4 = this.f3083d - 1;
        this.f3083d = i4;
        viewGroup.removeViewAt(i4);
    }
}
