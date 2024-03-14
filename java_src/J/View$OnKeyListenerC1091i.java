package j;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import k.C1161s0;
import k.F0;
/* renamed from: j.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC1091i extends y implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: A  reason: collision with root package name */
    public InterfaceC1071B f10523A;

    /* renamed from: B  reason: collision with root package name */
    public ViewTreeObserver f10524B;

    /* renamed from: C  reason: collision with root package name */
    public PopupWindow.OnDismissListener f10525C;

    /* renamed from: D  reason: collision with root package name */
    public boolean f10526D;

    /* renamed from: e  reason: collision with root package name */
    public final Context f10527e;

    /* renamed from: f  reason: collision with root package name */
    public final int f10528f;

    /* renamed from: g  reason: collision with root package name */
    public final int f10529g;

    /* renamed from: h  reason: collision with root package name */
    public final int f10530h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f10531i;

    /* renamed from: j  reason: collision with root package name */
    public final Handler f10532j;

    /* renamed from: r  reason: collision with root package name */
    public View f10540r;

    /* renamed from: s  reason: collision with root package name */
    public View f10541s;

    /* renamed from: t  reason: collision with root package name */
    public int f10542t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f10543u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f10544v;

    /* renamed from: w  reason: collision with root package name */
    public int f10545w;

    /* renamed from: x  reason: collision with root package name */
    public int f10546x;

    /* renamed from: z  reason: collision with root package name */
    public boolean f10548z;

    /* renamed from: k  reason: collision with root package name */
    public final List f10533k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    public final List f10534l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    public final ViewTreeObserver$OnGlobalLayoutListenerC1086d f10535m = new ViewTreeObserver$OnGlobalLayoutListenerC1086d(this);

    /* renamed from: n  reason: collision with root package name */
    public final View$OnAttachStateChangeListenerC1087e f10536n = new View$OnAttachStateChangeListenerC1087e(this);

    /* renamed from: o  reason: collision with root package name */
    public final C1089g f10537o = new C1089g(this);

    /* renamed from: p  reason: collision with root package name */
    public int f10538p = 0;

    /* renamed from: q  reason: collision with root package name */
    public int f10539q = 0;

    /* renamed from: y  reason: collision with root package name */
    public boolean f10547y = false;

    public View$OnKeyListenerC1091i(Context context, View view, int i4, int i5, boolean z4) {
        this.f10527e = context;
        this.f10540r = view;
        this.f10529g = i4;
        this.f10530h = i5;
        this.f10531i = z4;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        this.f10542t = C0187y.c(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f10528f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f10532j = new Handler();
    }

    @Override // j.InterfaceC1072C
    public final void a(C1097o c1097o, boolean z4) {
        int size = ((ArrayList) this.f10534l).size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (c1097o == ((C1090h) ((ArrayList) this.f10534l).get(i4)).f10521b) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 < 0) {
            return;
        }
        int i5 = i4 + 1;
        if (i5 < ((ArrayList) this.f10534l).size()) {
            ((C1090h) ((ArrayList) this.f10534l).get(i5)).f10521b.c(false);
        }
        C1090h c1090h = (C1090h) ((ArrayList) this.f10534l).remove(i4);
        c1090h.f10521b.r(this);
        boolean z5 = this.f10526D;
        F0 f02 = c1090h.f10520a;
        if (z5) {
            f02.f10729C.setExitTransition(null);
            f02.f10729C.setAnimationStyle(0);
        }
        f02.dismiss();
        int size2 = ((ArrayList) this.f10534l).size();
        if (size2 > 0) {
            this.f10542t = ((C1090h) ((ArrayList) this.f10534l).get(size2 - 1)).f10522c;
        } else {
            View view = this.f10540r;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            this.f10542t = C0187y.c(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z4) {
                ((C1090h) ((ArrayList) this.f10534l).get(0)).f10521b.c(false);
                return;
            }
            return;
        }
        dismiss();
        InterfaceC1071B interfaceC1071B = this.f10523A;
        if (interfaceC1071B != null) {
            interfaceC1071B.a(c1097o, true);
        }
        ViewTreeObserver viewTreeObserver = this.f10524B;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f10524B.removeGlobalOnLayoutListener(this.f10535m);
            }
            this.f10524B = null;
        }
        this.f10541s.removeOnAttachStateChangeListener(this.f10536n);
        this.f10525C.onDismiss();
    }

    @Override // j.InterfaceC1076G
    public final boolean b() {
        return ((ArrayList) this.f10534l).size() > 0 && ((C1090h) ((ArrayList) this.f10534l).get(0)).f10520a.b();
    }

    @Override // j.InterfaceC1072C
    public final void d() {
        Iterator it = ((ArrayList) this.f10534l).iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((C1090h) it.next()).f10520a.f10732f.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((C1094l) adapter).notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC1076G
    public final void dismiss() {
        int size = ((ArrayList) this.f10534l).size();
        if (size > 0) {
            C1090h[] c1090hArr = (C1090h[]) ((ArrayList) this.f10534l).toArray(new C1090h[size]);
            for (int i4 = size - 1; i4 >= 0; i4--) {
                C1090h c1090h = c1090hArr[i4];
                if (c1090h.f10520a.b()) {
                    c1090h.f10520a.dismiss();
                }
            }
        }
    }

    @Override // j.InterfaceC1076G
    public final C1161s0 e() {
        if (((ArrayList) this.f10534l).isEmpty()) {
            return null;
        }
        ArrayList arrayList = (ArrayList) this.f10534l;
        return ((C1090h) arrayList.get(arrayList.size() - 1)).f10520a.f10732f;
    }

    @Override // j.InterfaceC1072C
    public final boolean g() {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void i(InterfaceC1071B interfaceC1071B) {
        this.f10523A = interfaceC1071B;
    }

    @Override // j.InterfaceC1072C
    public final boolean j(SubMenuC1081L subMenuC1081L) {
        Iterator it = ((ArrayList) this.f10534l).iterator();
        while (it.hasNext()) {
            C1090h c1090h = (C1090h) it.next();
            if (subMenuC1081L == c1090h.f10521b) {
                c1090h.f10520a.f10732f.requestFocus();
                return true;
            }
        }
        if (subMenuC1081L.hasVisibleItems()) {
            k(subMenuC1081L);
            InterfaceC1071B interfaceC1071B = this.f10523A;
            if (interfaceC1071B != null) {
                interfaceC1071B.c(subMenuC1081L);
            }
            return true;
        }
        return false;
    }

    @Override // j.y
    public final void k(C1097o c1097o) {
        c1097o.b(this, this.f10527e);
        if (b()) {
            u(c1097o);
        } else {
            ((ArrayList) this.f10533k).add(c1097o);
        }
    }

    @Override // j.y
    public final void m(View view) {
        if (this.f10540r != view) {
            this.f10540r = view;
            int i4 = this.f10538p;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            this.f10539q = Gravity.getAbsoluteGravity(i4, C0187y.c(view));
        }
    }

    @Override // j.y
    public final void n(boolean z4) {
        this.f10547y = z4;
    }

    @Override // j.y
    public final void o(int i4) {
        if (this.f10538p != i4) {
            this.f10538p = i4;
            View view = this.f10540r;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            this.f10539q = Gravity.getAbsoluteGravity(i4, C0187y.c(view));
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C1090h c1090h;
        int size = ((ArrayList) this.f10534l).size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                c1090h = null;
                break;
            }
            c1090h = (C1090h) ((ArrayList) this.f10534l).get(i4);
            if (!c1090h.f10520a.b()) {
                break;
            }
            i4++;
        }
        if (c1090h != null) {
            c1090h.f10521b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i4 == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // j.y
    public final void p(int i4) {
        this.f10543u = true;
        this.f10545w = i4;
    }

    @Override // j.y
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.f10525C = onDismissListener;
    }

    @Override // j.y
    public final void r(boolean z4) {
        this.f10548z = z4;
    }

    @Override // j.y
    public final void s(int i4) {
        this.f10544v = true;
        this.f10546x = i4;
    }

    @Override // j.InterfaceC1076G
    public final void show() {
        if (b()) {
            return;
        }
        Iterator it = ((ArrayList) this.f10533k).iterator();
        while (it.hasNext()) {
            u((C1097o) it.next());
        }
        ((ArrayList) this.f10533k).clear();
        View view = this.f10540r;
        this.f10541s = view;
        if (view != null) {
            boolean z4 = this.f10524B == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f10524B = viewTreeObserver;
            if (z4) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f10535m);
            }
            this.f10541s.addOnAttachStateChangeListener(this.f10536n);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0126, code lost:
        if (((r7.getWidth() + r8[0]) + r4) > r10.right) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012c, code lost:
        if ((r8[0] - r4) < 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012e, code lost:
        r7 = 1;
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0131, code lost:
        r10 = 0;
        r7 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(j.C1097o r17) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j.View$OnKeyListenerC1091i.u(j.o):void");
    }
}
