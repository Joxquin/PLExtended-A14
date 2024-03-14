package k;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import j.C1094l;
import j.C1097o;
/* loaded from: classes.dex */
public final class E0 extends C1161s0 {

    /* renamed from: p  reason: collision with root package name */
    public final int f10757p;

    /* renamed from: q  reason: collision with root package name */
    public final int f10758q;

    /* renamed from: r  reason: collision with root package name */
    public D0 f10759r;

    /* renamed from: s  reason: collision with root package name */
    public j.r f10760s;

    public E0(Context context, boolean z4) {
        super(context, z4);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f10757p = 21;
            this.f10758q = 22;
            return;
        }
        this.f10757p = 22;
        this.f10758q = 21;
    }

    @Override // k.C1161s0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        C1094l c1094l;
        int i4;
        int pointToPosition;
        int i5;
        if (this.f10759r != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i4 = headerViewListAdapter.getHeadersCount();
                c1094l = (C1094l) headerViewListAdapter.getWrappedAdapter();
            } else {
                c1094l = (C1094l) adapter;
                i4 = 0;
            }
            j.r item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i5 = pointToPosition - i4) < 0 || i5 >= c1094l.getCount()) ? null : c1094l.getItem(i5);
            j.r rVar = this.f10760s;
            if (rVar != item) {
                C1097o c1097o = c1094l.f10557d;
                if (rVar != null) {
                    this.f10759r.c(c1097o, rVar);
                }
                this.f10760s = item;
                if (item != null) {
                    this.f10759r.j(c1097o, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i4 == this.f10757p) {
            if (listMenuItemView.isEnabled() && listMenuItemView.f2499d.hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        } else if (listMenuItemView == null || i4 != this.f10758q) {
            return super.onKeyDown(i4, keyEvent);
        } else {
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (C1094l) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C1094l) adapter).f10557d.c(false);
            return true;
        }
    }
}
