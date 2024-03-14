package e;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;
/* renamed from: e.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0815g implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f8911d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0819k f8912e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0816h f8913f;

    public C0815g(C0816h c0816h, AlertController$RecycleListView alertController$RecycleListView, C0819k c0819k) {
        this.f8913f = c0816h;
        this.f8911d = alertController$RecycleListView;
        this.f8912e = c0819k;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        boolean[] zArr = this.f8913f.f8931r;
        if (zArr != null) {
            zArr[i4] = this.f8911d.isItemChecked(i4);
        }
        this.f8913f.f8935v.onClick(this.f8912e.f8951b, i4, this.f8911d.isItemChecked(i4));
    }
}
