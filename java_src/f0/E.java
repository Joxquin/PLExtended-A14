package f0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
import androidx.slice.SliceItem;
import androidx.slice.widget.GridRowView;
import androidx.slice.widget.SliceView;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class E extends Z {

    /* renamed from: b  reason: collision with root package name */
    public final Context f9057b;

    /* renamed from: d  reason: collision with root package name */
    public M f9059d;

    /* renamed from: e  reason: collision with root package name */
    public J f9060e;

    /* renamed from: f  reason: collision with root package name */
    public List f9061f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9062g;

    /* renamed from: h  reason: collision with root package name */
    public long f9063h;

    /* renamed from: i  reason: collision with root package name */
    public SliceView f9064i;

    /* renamed from: j  reason: collision with root package name */
    public Q f9065j;

    /* renamed from: k  reason: collision with root package name */
    public int f9066k;

    /* renamed from: l  reason: collision with root package name */
    public int f9067l;

    /* renamed from: m  reason: collision with root package name */
    public int f9068m;

    /* renamed from: n  reason: collision with root package name */
    public int f9069n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f9071p;

    /* renamed from: q  reason: collision with root package name */
    public O f9072q;

    /* renamed from: a  reason: collision with root package name */
    public final B f9056a = new B();

    /* renamed from: c  reason: collision with root package name */
    public List f9058c = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    public Set f9070o = new HashSet();

    public E(Context context) {
        this.f9057b = context;
        setHasStableIds(true);
    }

    public final void b() {
        if (getItemCount() > 0) {
            notifyItemChanged(0);
        }
    }

    public final void c(SliceItem sliceItem, int i4) {
        this.f9070o.add(sliceItem);
        if (getItemCount() > i4) {
            notifyItemChanged(i4);
        } else {
            notifyDataSetChanged();
        }
    }

    public final void d(List list, int i4) {
        if (list == null) {
            this.f9070o.clear();
            ((ArrayList) this.f9058c).clear();
        } else {
            B b4 = this.f9056a;
            b4.f9050c.clear();
            this.f9058c = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ArrayList) this.f9058c).add(new D((G) it.next(), b4));
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return this.f9058c.size();
    }

    @Override // androidx.recyclerview.widget.Z
    public final long getItemId(int i4) {
        return ((D) this.f9058c.get(i4)).f9055c;
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemViewType(int i4) {
        return ((D) ((ArrayList) this.f9058c).get(i4)).f9054b;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        C c4 = (C) e02;
        G g4 = ((D) ((ArrayList) this.f9058c).get(i4)).f9053a;
        if (c4.f9051d == null || g4 == null) {
            return;
        }
        C0850q b4 = c4.f9052e.f9060e.b(g4.f9085a);
        c4.f9051d.setOnClickListener(c4);
        c4.f9051d.setOnTouchListener(c4);
        F f4 = c4.f9051d;
        E e4 = c4.f9052e;
        f4.f9081l = e4;
        boolean z4 = g4 instanceof C0849p ? ((C0849p) g4).f9212o : i4 == 0;
        f4.h(e4.f9070o);
        c4.f9051d.i(c4.f9052e.f9072q);
        F f5 = c4.f9051d;
        Integer num = b4.f9239w;
        f5.p(num != null ? num.intValue() : b4.f9217a.f9104a);
        c4.f9051d.o(c4.f9052e.f9060e, b4);
        c4.f9051d.j(z4 && c4.f9052e.f9062g);
        c4.f9051d.g(z4 ? c4.f9052e.f9063h : -1L);
        int i5 = i4 == 0 ? c4.f9052e.f9067l : 0;
        int i6 = i4 == c4.f9052e.getItemCount() - 1 ? c4.f9052e.f9069n : 0;
        F f6 = c4.f9051d;
        E e5 = c4.f9052e;
        f6.f(e5.f9066k, i5, e5.f9068m, i6);
        c4.f9051d.e(c4.f9052e.f9071p);
        c4.f9051d.l(z4 ? c4.f9052e.f9061f : null);
        c4.f9051d.n(g4, z4, i4, c4.f9052e.getItemCount(), c4.f9052e.f9059d);
        c4.f9051d.setTag(new int[]{C0843j.d(g4, z4, c4.f9052e.f9061f), i4});
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        View gridRowView;
        Context context = this.f9057b;
        if (i4 != 3) {
            gridRowView = i4 != 4 ? i4 != 5 ? new x(context) : LayoutInflater.from(context).inflate(R.layout.abc_slice_message_local, (ViewGroup) null) : LayoutInflater.from(context).inflate(R.layout.abc_slice_message, (ViewGroup) null);
        } else {
            View inflate = LayoutInflater.from(context).inflate(R.layout.abc_slice_grid, (ViewGroup) null);
            gridRowView = inflate instanceof GridRowView ? (GridRowView) inflate : new GridRowView(context, null);
        }
        gridRowView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new C(this, gridRowView);
    }
}
