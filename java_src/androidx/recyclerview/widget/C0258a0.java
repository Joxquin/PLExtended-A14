package androidx.recyclerview.widget;

import android.database.Observable;
/* renamed from: androidx.recyclerview.widget.a0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0258a0 extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0260b0) ((Observable) this).mObservers.get(size)).a();
        }
    }

    public final void c(int i4, int i5) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0260b0) ((Observable) this).mObservers.get(size)).d(i4, i5);
        }
    }

    public final void d(int i4, int i5, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0260b0) ((Observable) this).mObservers.get(size)).b(i4, i5, obj);
        }
    }

    public final void e(int i4, int i5) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0260b0) ((Observable) this).mObservers.get(size)).c(i4, i5);
        }
    }

    public final void f(int i4, int i5) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC0260b0) ((Observable) this).mObservers.get(size)).e(i4, i5);
        }
    }
}
