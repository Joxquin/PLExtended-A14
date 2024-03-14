package k;

import android.widget.AbsListView;
/* loaded from: classes.dex */
public final class A0 implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0 f10720a;

    public A0(C0 c02) {
        this.f10720a = c02;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i4, int i5, int i6) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i4) {
        if (i4 == 1) {
            if ((this.f10720a.f10729C.getInputMethodMode() == 2) || this.f10720a.f10729C.getContentView() == null) {
                return;
            }
            C0 c02 = this.f10720a;
            c02.f10751y.removeCallbacks(c02.f10747u);
            this.f10720a.f10747u.run();
        }
    }
}
