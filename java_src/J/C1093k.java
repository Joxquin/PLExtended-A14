package j;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import e.C0816h;
import e.C0820l;
import e.DialogInterfaceC0821m;
/* renamed from: j.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1093k implements InterfaceC1072C, AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public Context f10551d;

    /* renamed from: e  reason: collision with root package name */
    public LayoutInflater f10552e;

    /* renamed from: f  reason: collision with root package name */
    public C1097o f10553f;

    /* renamed from: g  reason: collision with root package name */
    public ExpandedMenuView f10554g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC1071B f10555h;

    /* renamed from: i  reason: collision with root package name */
    public C1092j f10556i;

    public C1093k(Context context) {
        this.f10551d = context;
        this.f10552e = LayoutInflater.from(context);
    }

    @Override // j.InterfaceC1072C
    public final void a(C1097o c1097o, boolean z4) {
        InterfaceC1071B interfaceC1071B = this.f10555h;
        if (interfaceC1071B != null) {
            interfaceC1071B.a(c1097o, z4);
        }
    }

    @Override // j.InterfaceC1072C
    public final boolean c(r rVar) {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void d() {
        C1092j c1092j = this.f10556i;
        if (c1092j != null) {
            c1092j.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC1072C
    public final void f(Context context, C1097o c1097o) {
        if (this.f10551d != null) {
            this.f10551d = context;
            if (this.f10552e == null) {
                this.f10552e = LayoutInflater.from(context);
            }
        }
        this.f10553f = c1097o;
        C1092j c1092j = this.f10556i;
        if (c1092j != null) {
            c1092j.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC1072C
    public final boolean g() {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final boolean h(r rVar) {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void i(InterfaceC1071B interfaceC1071B) {
        this.f10555h = interfaceC1071B;
    }

    @Override // j.InterfaceC1072C
    public final boolean j(SubMenuC1081L subMenuC1081L) {
        if (subMenuC1081L.hasVisibleItems()) {
            p pVar = new p(subMenuC1081L);
            C0820l c0820l = new C0820l(subMenuC1081L.f10564a);
            C0816h c0816h = c0820l.f8976a;
            C1093k c1093k = new C1093k(c0816h.f8914a);
            pVar.f10591f = c1093k;
            c1093k.f10555h = pVar;
            subMenuC1081L.b(c1093k, subMenuC1081L.f10564a);
            C1093k c1093k2 = pVar.f10591f;
            if (c1093k2.f10556i == null) {
                c1093k2.f10556i = new C1092j(c1093k2);
            }
            c0816h.f8927n = c1093k2.f10556i;
            c0816h.f8928o = pVar;
            View view = subMenuC1081L.f10578o;
            if (view != null) {
                c0816h.f8918e = view;
            } else {
                c0816h.f8916c = subMenuC1081L.f10577n;
                c0816h.f8917d = subMenuC1081L.f10576m;
            }
            c0816h.f8925l = pVar;
            DialogInterfaceC0821m a4 = c0820l.a();
            pVar.f10590e = a4;
            a4.setOnDismissListener(pVar);
            WindowManager.LayoutParams attributes = pVar.f10590e.getWindow().getAttributes();
            attributes.type = 1003;
            attributes.flags |= 131072;
            pVar.f10590e.show();
            InterfaceC1071B interfaceC1071B = this.f10555h;
            if (interfaceC1071B != null) {
                interfaceC1071B.c(subMenuC1081L);
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        this.f10553f.q(this.f10556i.getItem(i4), this, 0);
    }
}
