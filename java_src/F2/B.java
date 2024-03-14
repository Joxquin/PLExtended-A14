package F2;

import android.view.View;
import android.widget.AdapterView;
import k.C0;
/* loaded from: classes.dex */
public final class B implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ D f409d;

    public B(D d4) {
        this.f409d = d4;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        Object item;
        D d4 = this.f409d;
        if (i4 < 0) {
            C0 c02 = d4.f413h;
            item = !c02.b() ? null : c02.f10732f.getSelectedItem();
        } else {
            item = d4.getAdapter().getItem(i4);
        }
        D.a(this.f409d, item);
        AdapterView.OnItemClickListener onItemClickListener = this.f409d.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i4 < 0) {
                C0 c03 = this.f409d.f413h;
                view = !c03.b() ? null : c03.f10732f.getSelectedView();
                C0 c04 = this.f409d.f413h;
                i4 = !c04.b() ? -1 : c04.f10732f.getSelectedItemPosition();
                C0 c05 = this.f409d.f413h;
                j4 = !c05.b() ? Long.MIN_VALUE : c05.f10732f.getSelectedItemId();
            }
            onItemClickListener.onItemClick(this.f409d.f413h.f10732f, view, i4, j4);
        }
        this.f409d.f413h.dismiss();
    }
}
