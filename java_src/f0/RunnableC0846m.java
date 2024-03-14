package f0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: f0.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0846m implements Runnable, View.OnLayoutChangeListener {

    /* renamed from: g  reason: collision with root package name */
    public static final C0844k f9195g = new C0844k(0);

    /* renamed from: h  reason: collision with root package name */
    public static final C0844k f9196h = new C0844k(1);

    /* renamed from: d  reason: collision with root package name */
    public final Rect f9197d;

    /* renamed from: e  reason: collision with root package name */
    public final ViewGroup f9198e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC0845l f9199f;

    public RunnableC0846m(ViewGroup viewGroup, View view, C0844k c0844k) {
        Rect rect = new Rect();
        this.f9197d = rect;
        this.f9198e = viewGroup;
        this.f9199f = c0844k;
        view.getDrawingRect(rect);
        viewGroup.offsetDescendantRectToMyCoords(view, rect);
        viewGroup.addOnLayoutChangeListener(this);
        viewGroup.requestLayout();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.f9198e.removeOnLayoutChangeListener(this);
        this.f9198e.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<View> arrayList = new ArrayList<>();
        this.f9198e.addFocusables(arrayList, 2, 0);
        Rect rect = new Rect();
        Iterator<View> it = arrayList.iterator();
        int i4 = Integer.MAX_VALUE;
        View view = null;
        while (it.hasNext()) {
            View next = it.next();
            next.getDrawingRect(rect);
            this.f9198e.offsetDescendantRectToMyCoords(next, rect);
            if (this.f9197d.intersect(rect)) {
                int abs = Math.abs(this.f9197d.top - rect.top) + Math.abs(this.f9197d.right - rect.right) + Math.abs(this.f9197d.left - rect.left) + Math.abs(this.f9197d.bottom - rect.bottom);
                if (i4 > abs) {
                    view = next;
                    i4 = abs;
                }
            }
        }
        if (view != null) {
            switch (((C0844k) this.f9199f).f9194a) {
                case 0:
                    view.requestFocus();
                    return;
                default:
                    view.performAccessibilityAction(64, null);
                    return;
            }
        }
    }
}
