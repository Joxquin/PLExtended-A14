package f0;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.slice.SliceItem;
import androidx.slice.widget.SliceView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class Q extends F implements N {

    /* renamed from: p  reason: collision with root package name */
    public SliceView f9136p;

    /* renamed from: q  reason: collision with root package name */
    public final View f9137q;

    /* renamed from: r  reason: collision with root package name */
    public E f9138r;

    /* renamed from: s  reason: collision with root package name */
    public final RecyclerView f9139s;

    /* renamed from: t  reason: collision with root package name */
    public C0843j f9140t;

    /* renamed from: u  reason: collision with root package name */
    public List f9141u;

    /* renamed from: v  reason: collision with root package name */
    public int f9142v;

    /* renamed from: w  reason: collision with root package name */
    public final int[] f9143w;

    public Q(Context context) {
        super(context);
        this.f9141u = new ArrayList();
        this.f9142v = 0;
        this.f9143w = new int[2];
        RecyclerView recyclerView = new RecyclerView(getContext());
        this.f9139s = recyclerView;
        getContext();
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        E e4 = new E(context);
        this.f9138r = e4;
        recyclerView.setAdapter(e4);
        E e5 = new E(context);
        this.f9138r = e5;
        recyclerView.setAdapter(e5);
        addView(recyclerView);
        View view = new View(getContext());
        this.f9137q = view;
        view.setBackground(P.c(16843534, getContext()));
        addView(view);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view.setLayoutParams(layoutParams);
    }

    @Override // f0.F
    public final Set a() {
        return this.f9138r.f9070o;
    }

    @Override // f0.F
    public final void c() {
        this.f9142v = 0;
        this.f9141u.clear();
        this.f9138r.d(null, b());
        this.f9140t = null;
    }

    @Override // f0.F
    public final void d(SliceItem sliceItem) {
        this.f9138r.c(sliceItem, 0);
    }

    @Override // f0.F
    public final void e(boolean z4) {
        E e4 = this.f9138r;
        e4.f9071p = z4;
        e4.b();
    }

    @Override // f0.F
    public final void f(int i4, int i5, int i6, int i7) {
        super.f(i4, i5, i6, i7);
        E e4 = this.f9138r;
        e4.f9066k = i4;
        e4.f9067l = i5;
        e4.f9068m = i6;
        e4.f9069n = i7;
    }

    @Override // f0.F
    public final void g(long j4) {
        this.f9076g = j4;
        E e4 = this.f9138r;
        if (e4.f9063h != j4) {
            e4.f9063h = j4;
            e4.b();
        }
    }

    @Override // f0.F
    public final void h(Set set) {
        E e4 = this.f9138r;
        if (set == null) {
            e4.f9070o.clear();
        } else {
            e4.f9070o = set;
        }
        e4.notifyDataSetChanged();
    }

    @Override // f0.F
    public final void i(O o4) {
        this.f9084o = o4;
        this.f9138r.f9072q = o4;
        o4.f9135d = this;
    }

    @Override // f0.F
    public final void j(boolean z4) {
        this.f9075f = z4;
        E e4 = this.f9138r;
        if (e4.f9062g != z4) {
            e4.f9062g = z4;
            e4.b();
        }
    }

    @Override // f0.F
    public final void k(M m4) {
        this.f9073d = m4;
        E e4 = this.f9138r;
        if (e4 != null) {
            e4.f9059d = m4;
        }
    }

    @Override // f0.F
    public final void l(List list) {
        E e4 = this.f9138r;
        e4.f9061f = list;
        e4.b();
    }

    @Override // f0.F
    public final void m(C0843j c0843j) {
        this.f9140t = c0843j;
        c0843j.a(this.f9082m, this.f9084o);
        q();
    }

    @Override // f0.F
    public final void o(J j4, C0850q c0850q) {
        this.f9082m = j4;
        this.f9083n = c0850q;
        E e4 = this.f9138r;
        e4.f9060e = j4;
        e4.notifyDataSetChanged();
        if (c0850q.f9237u) {
            this.f9139s.setItemAnimator(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        SliceView sliceView = (SliceView) getParent();
        this.f9136p = sliceView;
        E e4 = this.f9138r;
        e4.f9064i = sliceView;
        e4.f9065j = this;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        View.MeasureSpec.getSize(i5);
        this.f9084o.getClass();
        super.onMeasure(i4, i5);
    }

    @Override // f0.F
    public final void p(int i4) {
        this.f9074e = i4;
        getMeasuredHeight();
        q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    public final void q() {
        C0835b c0835b;
        C0843j c0843j = this.f9140t;
        if (c0843j == null || !c0843j.f()) {
            c();
            return;
        }
        C0843j c0843j2 = this.f9140t;
        J j4 = this.f9082m;
        O o4 = this.f9084o;
        c0843j2.getClass();
        int i4 = o4.f9134c;
        ArrayList arrayList = c0843j2.f9192h;
        if (i4 == 1) {
            c0835b = new C0835b(arrayList.size() - 1, new ArrayList(Arrays.asList(c0843j2.f9191g)));
        } else {
            j4.getClass();
            int size = arrayList.size();
            ArrayList arrayList2 = arrayList;
            if (size > 0) {
                boolean c4 = j4.c(arrayList);
                arrayList2 = arrayList;
                if (c4) {
                    arrayList2 = arrayList.subList(1, arrayList.size());
                }
            }
            c0835b = new C0835b(0, arrayList2);
        }
        List list = c0835b.f9148a;
        this.f9141u = list;
        this.f9142v = this.f9082m.a(list, this.f9084o);
        this.f9138r.d(this.f9141u, this.f9084o.f9134c);
        boolean z4 = this.f9142v > getMeasuredHeight();
        RecyclerView recyclerView = this.f9139s;
        this.f9084o.getClass();
        recyclerView.setOverScrollMode(z4 ? 1 : 2);
    }
}
