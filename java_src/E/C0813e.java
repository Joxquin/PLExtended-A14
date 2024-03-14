package e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
/* renamed from: e.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0813e extends ArrayAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f8907d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0816h f8908e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0813e(C0816h c0816h, Context context, int i4, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i4, 16908308, charSequenceArr);
        this.f8908e = c0816h;
        this.f8907d = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i4, view, viewGroup);
        boolean[] zArr = this.f8908e.f8931r;
        if (zArr != null && zArr[i4]) {
            this.f8907d.setItemChecked(i4, true);
        }
        return view2;
    }
}
