package e;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: e.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0814f implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0819k f8909d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0816h f8910e;

    public C0814f(C0816h c0816h, C0819k c0819k) {
        this.f8910e = c0816h;
        this.f8909d = c0819k;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        this.f8910e.f8928o.onClick(this.f8909d.f8951b, i4);
        if (this.f8910e.f8933t) {
            return;
        }
        this.f8909d.f8951b.dismiss();
    }
}
