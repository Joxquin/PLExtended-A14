package k;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes.dex */
public final class V implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ X f10835d;

    public V(X x4) {
        this.f10835d = x4;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        this.f10835d.f10844H.setSelection(i4);
        if (this.f10835d.f10844H.getOnItemClickListener() != null) {
            X x4 = this.f10835d;
            x4.f10844H.performItemClick(view, i4, x4.f10841E.getItemId(i4));
        }
        this.f10835d.dismiss();
    }
}
