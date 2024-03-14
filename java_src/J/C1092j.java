package j;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* renamed from: j.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1092j extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    public int f10549d = -1;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1093k f10550e;

    public C1092j(C1093k c1093k) {
        this.f10550e = c1093k;
        b();
    }

    public final void b() {
        C1097o c1097o = this.f10550e.f10553f;
        r rVar = c1097o.f10586w;
        if (rVar != null) {
            c1097o.i();
            ArrayList arrayList = c1097o.f10573j;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (((r) arrayList.get(i4)) == rVar) {
                    this.f10549d = i4;
                    return;
                }
            }
        }
        this.f10549d = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public final r getItem(int i4) {
        C1097o c1097o = this.f10550e.f10553f;
        c1097o.i();
        ArrayList arrayList = c1097o.f10573j;
        this.f10550e.getClass();
        int i5 = i4 + 0;
        int i6 = this.f10549d;
        if (i6 >= 0 && i5 >= i6) {
            i5++;
        }
        return (r) arrayList.get(i5);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        C1097o c1097o = this.f10550e.f10553f;
        c1097o.i();
        int size = c1097o.f10573j.size();
        this.f10550e.getClass();
        int i4 = size + 0;
        return this.f10549d < 0 ? i4 : i4 - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f10550e.f10552e.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((InterfaceC1073D) view).b(getItem(i4));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
