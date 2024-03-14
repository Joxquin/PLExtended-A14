package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.C0186x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class W implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3913d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3914e;

    public /* synthetic */ W(RecyclerView recyclerView, int i4) {
        this.f3913d = i4;
        this.f3914e = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z4;
        switch (this.f3913d) {
            case 0:
                RecyclerView recyclerView = this.f3914e;
                if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = this.f3914e;
                if (!recyclerView2.mIsAttached) {
                    recyclerView2.requestLayout();
                    return;
                } else if (recyclerView2.mLayoutSuppressed) {
                    recyclerView2.mLayoutWasDefered = true;
                    return;
                } else {
                    recyclerView2.consumePendingUpdateOperations();
                    return;
                }
            default:
                AbstractC0272h0 abstractC0272h0 = this.f3914e.mItemAnimator;
                if (abstractC0272h0 != null) {
                    C0283n c0283n = (C0283n) abstractC0272h0;
                    ArrayList arrayList = c0283n.f3989h;
                    boolean z5 = !arrayList.isEmpty();
                    ArrayList arrayList2 = c0283n.f3991j;
                    boolean z6 = !arrayList2.isEmpty();
                    ArrayList arrayList3 = c0283n.f3992k;
                    boolean z7 = !arrayList3.isEmpty();
                    ArrayList arrayList4 = c0283n.f3990i;
                    boolean z8 = !arrayList4.isEmpty();
                    if (z5 || z6 || z8 || z7) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            long j4 = c0283n.f3947d;
                            if (hasNext) {
                                E0 e02 = (E0) it.next();
                                View view = e02.itemView;
                                ViewPropertyAnimator animate = view.animate();
                                c0283n.f3998q.add(e02);
                                animate.setDuration(j4).alpha(0.0f).setListener(new C0273i(c0283n, e02, animate, view)).start();
                                it = it;
                            } else {
                                arrayList.clear();
                                if (z6) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    c0283n.f3994m.add(arrayList5);
                                    arrayList2.clear();
                                    RunnableC0271h runnableC0271h = new RunnableC0271h(c0283n, arrayList5, 0);
                                    if (z5) {
                                        View view2 = ((C0281m) arrayList5.get(0)).f3978a.itemView;
                                        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                                        C0186x.k(view2, runnableC0271h, j4);
                                    } else {
                                        runnableC0271h.run();
                                    }
                                }
                                if (z7) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    c0283n.f3995n.add(arrayList6);
                                    arrayList3.clear();
                                    RunnableC0271h runnableC0271h2 = new RunnableC0271h(c0283n, arrayList6, 1);
                                    if (z5) {
                                        View view3 = ((C0279l) arrayList6.get(0)).f3972a.itemView;
                                        WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
                                        C0186x.k(view3, runnableC0271h2, j4);
                                    } else {
                                        runnableC0271h2.run();
                                    }
                                }
                                if (z8) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    c0283n.f3993l.add(arrayList7);
                                    arrayList4.clear();
                                    RunnableC0271h runnableC0271h3 = new RunnableC0271h(c0283n, arrayList7, 2);
                                    if (z5 || z6 || z7) {
                                        if (!z5) {
                                            j4 = 0;
                                        }
                                        long j5 = z6 ? c0283n.f3948e : 0L;
                                        long j6 = z7 ? c0283n.f3949f : 0L;
                                        z4 = false;
                                        View view4 = ((E0) arrayList7.get(0)).itemView;
                                        WeakHashMap weakHashMap3 = androidx.core.view.J.f3079a;
                                        C0186x.k(view4, runnableC0271h3, Math.max(j5, j6) + j4);
                                        this.f3914e.mPostedAnimatorRunner = z4;
                                        return;
                                    }
                                    runnableC0271h3.run();
                                }
                            }
                        }
                    }
                }
                z4 = false;
                this.f3914e.mPostedAnimatorRunner = z4;
                return;
        }
    }
}
