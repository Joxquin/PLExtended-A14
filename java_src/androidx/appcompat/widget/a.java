package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.android.systemui.shared.R;
import i.InterfaceC0971c;
import j.C1097o;
import j.InterfaceC1072C;
import j.SubMenuC1081L;
import j.r;
import k.C1123G;
import k.V0;
import k.W0;
/* loaded from: classes.dex */
public final class a implements InterfaceC1072C {

    /* renamed from: d  reason: collision with root package name */
    public C1097o f2685d;

    /* renamed from: e  reason: collision with root package name */
    public r f2686e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Toolbar f2687f;

    public a(Toolbar toolbar) {
        this.f2687f = toolbar;
    }

    @Override // j.InterfaceC1072C
    public final void a(C1097o c1097o, boolean z4) {
    }

    @Override // j.InterfaceC1072C
    public final boolean c(r rVar) {
        Toolbar toolbar = this.f2687f;
        if (toolbar.f2665k == null) {
            C1123G c1123g = new C1123G(toolbar.getContext(), null, R.attr.toolbarNavigationButtonStyle);
            toolbar.f2665k = c1123g;
            c1123g.setImageDrawable(toolbar.f2663i);
            toolbar.f2665k.setContentDescription(toolbar.f2664j);
            W0 w02 = new W0();
            w02.f8905a = (toolbar.f2671q & 112) | 8388611;
            w02.f10839b = 2;
            toolbar.f2665k.setLayoutParams(w02);
            toolbar.f2665k.setOnClickListener(new V0(toolbar));
        }
        ViewParent parent = toolbar.f2665k.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f2665k);
            }
            toolbar.addView(toolbar.f2665k);
        }
        View actionView = rVar.getActionView();
        toolbar.f2666l = actionView;
        this.f2686e = rVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f2666l);
            }
            W0 w03 = new W0();
            w03.f8905a = (toolbar.f2671q & 112) | 8388611;
            w03.f10839b = 2;
            toolbar.f2666l.setLayoutParams(w03);
            toolbar.addView(toolbar.f2666l);
        }
        int childCount = toolbar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            View childAt = toolbar.getChildAt(childCount);
            if (((W0) childAt.getLayoutParams()).f10839b != 2 && childAt != toolbar.f2658d) {
                toolbar.removeViewAt(childCount);
                toolbar.f2648H.add(childAt);
            }
        }
        toolbar.requestLayout();
        rVar.f10595C = true;
        rVar.f10609n.p(false);
        View view = toolbar.f2666l;
        if (view instanceof InterfaceC0971c) {
            ((InterfaceC0971c) view).a();
        }
        toolbar.z();
        return true;
    }

    @Override // j.InterfaceC1072C
    public final void d() {
        if (this.f2686e != null) {
            C1097o c1097o = this.f2685d;
            boolean z4 = false;
            if (c1097o != null) {
                int size = c1097o.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        break;
                    } else if (this.f2685d.getItem(i4) == this.f2686e) {
                        z4 = true;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            if (z4) {
                return;
            }
            h(this.f2686e);
        }
    }

    @Override // j.InterfaceC1072C
    public final void f(Context context, C1097o c1097o) {
        r rVar;
        C1097o c1097o2 = this.f2685d;
        if (c1097o2 != null && (rVar = this.f2686e) != null) {
            c1097o2.d(rVar);
        }
        this.f2685d = c1097o;
    }

    @Override // j.InterfaceC1072C
    public final boolean g() {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final boolean h(r rVar) {
        Toolbar toolbar = this.f2687f;
        View view = toolbar.f2666l;
        if (view instanceof InterfaceC0971c) {
            ((InterfaceC0971c) view).b();
        }
        toolbar.removeView(toolbar.f2666l);
        toolbar.removeView(toolbar.f2665k);
        toolbar.f2666l = null;
        int size = toolbar.f2648H.size();
        while (true) {
            size--;
            if (size < 0) {
                toolbar.f2648H.clear();
                this.f2686e = null;
                toolbar.requestLayout();
                rVar.f10595C = false;
                rVar.f10609n.p(false);
                toolbar.z();
                return true;
            }
            toolbar.addView((View) toolbar.f2648H.get(size));
        }
    }

    @Override // j.InterfaceC1072C
    public final boolean j(SubMenuC1081L subMenuC1081L) {
        return false;
    }
}
