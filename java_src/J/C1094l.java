package j;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;
/* renamed from: j.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1094l extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final C1097o f10557d;

    /* renamed from: e  reason: collision with root package name */
    public int f10558e = -1;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10559f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f10560g;

    /* renamed from: h  reason: collision with root package name */
    public final LayoutInflater f10561h;

    /* renamed from: i  reason: collision with root package name */
    public final int f10562i;

    public C1094l(C1097o c1097o, LayoutInflater layoutInflater, boolean z4, int i4) {
        this.f10560g = z4;
        this.f10561h = layoutInflater;
        this.f10557d = c1097o;
        this.f10562i = i4;
        b();
    }

    public final void b() {
        C1097o c1097o = this.f10557d;
        r rVar = c1097o.f10586w;
        if (rVar != null) {
            c1097o.i();
            ArrayList arrayList = c1097o.f10573j;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (((r) arrayList.get(i4)) == rVar) {
                    this.f10558e = i4;
                    return;
                }
            }
        }
        this.f10558e = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public final r getItem(int i4) {
        ArrayList l4;
        if (this.f10560g) {
            C1097o c1097o = this.f10557d;
            c1097o.i();
            l4 = c1097o.f10573j;
        } else {
            l4 = this.f10557d.l();
        }
        int i5 = this.f10558e;
        if (i5 >= 0 && i4 >= i5) {
            i4++;
        }
        return (r) l4.get(i4);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList l4;
        if (this.f10560g) {
            C1097o c1097o = this.f10557d;
            c1097o.i();
            l4 = c1097o.f10573j;
        } else {
            l4 = this.f10557d.l();
        }
        return this.f10558e < 0 ? l4.size() : l4.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        int i5 = 0;
        if (view == null) {
            view = this.f10561h.inflate(this.f10562i, viewGroup, false);
        }
        int i6 = getItem(i4).f10597b;
        int i7 = i4 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        boolean z4 = this.f10557d.m() && i6 != (i7 >= 0 ? getItem(i7).f10597b : i6);
        ImageView imageView = listMenuItemView.f2506k;
        if (imageView != null) {
            imageView.setVisibility((listMenuItemView.f2513r || !z4) ? 8 : 8);
        }
        InterfaceC1073D interfaceC1073D = (InterfaceC1073D) view;
        if (this.f10559f) {
            listMenuItemView.f2515t = true;
            listMenuItemView.f2511p = true;
        }
        interfaceC1073D.b(getItem(i4));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
