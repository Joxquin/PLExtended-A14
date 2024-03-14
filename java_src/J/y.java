package j;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
/* loaded from: classes.dex */
public abstract class y implements InterfaceC1076G, InterfaceC1072C, AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public Rect f10632d;

    public static int l(C1094l c1094l, Context context, int i4) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = c1094l.getCount();
        int i5 = 0;
        int i6 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i7 = 0; i7 < count; i7++) {
            int itemViewType = c1094l.getItemViewType(i7);
            if (itemViewType != i6) {
                view = null;
                i6 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = c1094l.getView(i7, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i4) {
                return i4;
            }
            if (measuredWidth > i5) {
                i5 = measuredWidth;
            }
        }
        return i5;
    }

    public static boolean t(C1097o c1097o) {
        int size = c1097o.size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = c1097o.getItem(i4);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // j.InterfaceC1072C
    public final boolean c(r rVar) {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void f(Context context, C1097o c1097o) {
    }

    @Override // j.InterfaceC1072C
    public final boolean h(r rVar) {
        return false;
    }

    public abstract void k(C1097o c1097o);

    public abstract void m(View view);

    public abstract void n(boolean z4);

    public abstract void o(int i4);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (C1094l) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C1094l) listAdapter).f10557d.q((MenuItem) listAdapter.getItem(i4), this, (this instanceof View$OnKeyListenerC1091i) ^ true ? 0 : 4);
    }

    public abstract void p(int i4);

    public abstract void q(PopupWindow.OnDismissListener onDismissListener);

    public abstract void r(boolean z4);

    public abstract void s(int i4);
}
