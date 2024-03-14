package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.recyclerview.widget.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0271h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3941d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3942e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0283n f3943f;

    public /* synthetic */ RunnableC0271h(C0283n c0283n, ArrayList arrayList, int i4) {
        this.f3941d = i4;
        this.f3943f = c0283n;
        this.f3942e = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f4;
        float f5 = 0.0f;
        switch (this.f3941d) {
            case 0:
                Iterator it = this.f3942e.iterator();
                while (it.hasNext()) {
                    C0281m c0281m = (C0281m) it.next();
                    C0283n c0283n = this.f3943f;
                    E0 e02 = c0281m.f3978a;
                    c0283n.getClass();
                    View view = e02.itemView;
                    int i4 = c0281m.f3981d - c0281m.f3979b;
                    int i5 = c0281m.f3982e - c0281m.f3980c;
                    if (i4 != 0) {
                        f4 = 0.0f;
                        view.animate().translationX(0.0f);
                    } else {
                        f4 = 0.0f;
                    }
                    if (i5 != 0) {
                        view.animate().translationY(f4);
                    }
                    ViewPropertyAnimator animate = view.animate();
                    c0283n.f3997p.add(e02);
                    animate.setDuration(c0283n.f3948e).setListener(new C0275j(c0283n, e02, i4, view, i5, animate)).start();
                }
                this.f3942e.clear();
                this.f3943f.f3994m.remove(this.f3942e);
                return;
            case 1:
                Iterator it2 = this.f3942e.iterator();
                while (it2.hasNext()) {
                    C0279l c0279l = (C0279l) it2.next();
                    C0283n c0283n2 = this.f3943f;
                    c0283n2.getClass();
                    E0 e03 = c0279l.f3972a;
                    View view2 = e03 == null ? null : e03.itemView;
                    E0 e04 = c0279l.f3973b;
                    View view3 = e04 != null ? e04.itemView : null;
                    ArrayList arrayList = c0283n2.f3999r;
                    long j4 = c0283n2.f3949f;
                    if (view2 != null) {
                        ViewPropertyAnimator duration = view2.animate().setDuration(j4);
                        arrayList.add(c0279l.f3972a);
                        duration.translationX(c0279l.f3976e - c0279l.f3974c);
                        duration.translationY(c0279l.f3977f - c0279l.f3975d);
                        duration.alpha(f5).setListener(new C0277k(c0283n2, c0279l, duration, view2, 0)).start();
                    }
                    if (view3 != null) {
                        ViewPropertyAnimator animate2 = view3.animate();
                        arrayList.add(c0279l.f3973b);
                        animate2.translationX(0.0f).translationY(0.0f).setDuration(j4).alpha(1.0f).setListener(new C0277k(c0283n2, c0279l, animate2, view3, 1)).start();
                    }
                    f5 = 0.0f;
                }
                this.f3942e.clear();
                this.f3943f.f3995n.remove(this.f3942e);
                return;
            default:
                Iterator it3 = this.f3942e.iterator();
                while (it3.hasNext()) {
                    E0 e05 = (E0) it3.next();
                    C0283n c0283n3 = this.f3943f;
                    c0283n3.getClass();
                    View view4 = e05.itemView;
                    ViewPropertyAnimator animate3 = view4.animate();
                    c0283n3.f3996o.add(e05);
                    animate3.alpha(1.0f).setDuration(c0283n3.f3946c).setListener(new C0273i(c0283n3, e05, view4, animate3)).start();
                }
                this.f3942e.clear();
                this.f3943f.f3993l.remove(this.f3942e);
                return;
        }
    }
}
