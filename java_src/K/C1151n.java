package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.AbstractC0166c;
import com.android.systemui.shared.R;
import j.C1097o;
import j.InterfaceC1071B;
import j.InterfaceC1072C;
import j.InterfaceC1073D;
import j.InterfaceC1074E;
import java.util.ArrayList;
/* renamed from: k.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1151n implements InterfaceC1072C {

    /* renamed from: d  reason: collision with root package name */
    public final Context f10924d;

    /* renamed from: e  reason: collision with root package name */
    public Context f10925e;

    /* renamed from: f  reason: collision with root package name */
    public C1097o f10926f;

    /* renamed from: g  reason: collision with root package name */
    public final LayoutInflater f10927g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC1071B f10928h;

    /* renamed from: k  reason: collision with root package name */
    public InterfaceC1074E f10931k;

    /* renamed from: l  reason: collision with root package name */
    public C1149m f10932l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10933m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f10934n;

    /* renamed from: o  reason: collision with root package name */
    public int f10935o;

    /* renamed from: p  reason: collision with root package name */
    public int f10936p;

    /* renamed from: q  reason: collision with root package name */
    public int f10937q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f10938r;

    /* renamed from: t  reason: collision with root package name */
    public C1141i f10940t;

    /* renamed from: u  reason: collision with root package name */
    public C1141i f10941u;

    /* renamed from: v  reason: collision with root package name */
    public RunnableC1145k f10942v;

    /* renamed from: w  reason: collision with root package name */
    public C1143j f10943w;

    /* renamed from: i  reason: collision with root package name */
    public final int f10929i = R.layout.abc_action_menu_layout;

    /* renamed from: j  reason: collision with root package name */
    public final int f10930j = R.layout.abc_action_menu_item_layout;

    /* renamed from: s  reason: collision with root package name */
    public final SparseBooleanArray f10939s = new SparseBooleanArray();

    /* renamed from: x  reason: collision with root package name */
    public final C1143j f10944x = new C1143j(this, 1);

    public C1151n(Context context) {
        this.f10924d = context;
        this.f10927g = LayoutInflater.from(context);
    }

    @Override // j.InterfaceC1072C
    public final void a(C1097o c1097o, boolean z4) {
        e();
        C1141i c1141i = this.f10941u;
        if (c1141i != null && c1141i.b()) {
            c1141i.f10464j.dismiss();
        }
        InterfaceC1071B interfaceC1071B = this.f10928h;
        if (interfaceC1071B != null) {
            interfaceC1071B.a(c1097o, z4);
        }
    }

    public final View b(j.r rVar, View view, ViewGroup viewGroup) {
        View actionView = rVar.getActionView();
        if (actionView == null || rVar.e()) {
            InterfaceC1073D interfaceC1073D = view instanceof InterfaceC1073D ? (InterfaceC1073D) view : (InterfaceC1073D) this.f10927g.inflate(this.f10930j, viewGroup, false);
            interfaceC1073D.b(rVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) interfaceC1073D;
            actionMenuItemView.f2490l = (ActionMenuView) this.f10931k;
            if (this.f10943w == null) {
                this.f10943w = new C1143j(this, 0);
            }
            actionMenuItemView.f2492n = this.f10943w;
            actionView = (View) interfaceC1073D;
        }
        actionView.setVisibility(rVar.f10595C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    @Override // j.InterfaceC1072C
    public final /* bridge */ /* synthetic */ boolean c(j.r rVar) {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void d() {
        int i4;
        boolean z4;
        ViewGroup viewGroup = (ViewGroup) this.f10931k;
        ArrayList arrayList = null;
        boolean z5 = false;
        if (viewGroup != null) {
            C1097o c1097o = this.f10926f;
            if (c1097o != null) {
                c1097o.i();
                ArrayList l4 = this.f10926f.l();
                int size = l4.size();
                i4 = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    j.r rVar = (j.r) l4.get(i5);
                    if (rVar.f()) {
                        View childAt = viewGroup.getChildAt(i4);
                        j.r c4 = childAt instanceof InterfaceC1073D ? ((InterfaceC1073D) childAt).c() : null;
                        View b4 = b(rVar, childAt, viewGroup);
                        if (rVar != c4) {
                            b4.setPressed(false);
                            b4.jumpDrawablesToCurrentState();
                        }
                        if (b4 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) b4.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(b4);
                            }
                            ((ViewGroup) this.f10931k).addView(b4, i4);
                        }
                        i4++;
                    }
                }
            } else {
                i4 = 0;
            }
            while (i4 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i4) == this.f10932l) {
                    z4 = false;
                } else {
                    viewGroup.removeViewAt(i4);
                    z4 = true;
                }
                if (!z4) {
                    i4++;
                }
            }
        }
        ((View) this.f10931k).requestLayout();
        C1097o c1097o2 = this.f10926f;
        if (c1097o2 != null) {
            c1097o2.i();
            ArrayList arrayList2 = c1097o2.f10572i;
            int size2 = arrayList2.size();
            for (int i6 = 0; i6 < size2; i6++) {
                AbstractC0166c abstractC0166c = ((j.r) arrayList2.get(i6)).f10593A;
            }
        }
        C1097o c1097o3 = this.f10926f;
        if (c1097o3 != null) {
            c1097o3.i();
            arrayList = c1097o3.f10573j;
        }
        if (this.f10933m && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z5 = !((j.r) arrayList.get(0)).f10595C;
            } else if (size3 > 0) {
                z5 = true;
            }
        }
        if (z5) {
            if (this.f10932l == null) {
                this.f10932l = new C1149m(this, this.f10924d);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f10932l.getParent();
            if (viewGroup3 != this.f10931k) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f10932l);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f10931k;
                C1149m c1149m = this.f10932l;
                actionMenuView.getClass();
                C1157q c1157q = new C1157q();
                ((LinearLayout.LayoutParams) c1157q).gravity = 16;
                c1157q.f10950a = true;
                actionMenuView.addView(c1149m, c1157q);
            }
        } else {
            C1149m c1149m2 = this.f10932l;
            if (c1149m2 != null) {
                ViewParent parent = c1149m2.getParent();
                InterfaceC1074E interfaceC1074E = this.f10931k;
                if (parent == interfaceC1074E) {
                    ((ViewGroup) interfaceC1074E).removeView(this.f10932l);
                }
            }
        }
        ((ActionMenuView) this.f10931k).f2572v = this.f10933m;
    }

    public final boolean e() {
        InterfaceC1074E interfaceC1074E;
        RunnableC1145k runnableC1145k = this.f10942v;
        if (runnableC1145k != null && (interfaceC1074E = this.f10931k) != null) {
            ((View) interfaceC1074E).removeCallbacks(runnableC1145k);
            this.f10942v = null;
            return true;
        }
        C1141i c1141i = this.f10940t;
        if (c1141i != null) {
            if (c1141i.b()) {
                c1141i.f10464j.dismiss();
            }
            return true;
        }
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void f(Context context, C1097o c1097o) {
        this.f10925e = context;
        LayoutInflater.from(context);
        this.f10926f = c1097o;
        Resources resources = context.getResources();
        if (!this.f10934n) {
            this.f10933m = true;
        }
        int i4 = 2;
        this.f10935o = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        int i6 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i5 > 600 || ((i5 > 960 && i6 > 720) || (i5 > 720 && i6 > 960))) {
            i4 = 5;
        } else if (i5 >= 500 || ((i5 > 640 && i6 > 480) || (i5 > 480 && i6 > 640))) {
            i4 = 4;
        } else if (i5 >= 360) {
            i4 = 3;
        }
        this.f10937q = i4;
        int i7 = this.f10935o;
        if (this.f10933m) {
            if (this.f10932l == null) {
                this.f10932l = new C1149m(this, this.f10924d);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f10932l.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i7 -= this.f10932l.getMeasuredWidth();
        } else {
            this.f10932l = null;
        }
        this.f10936p = i7;
        float f4 = resources.getDisplayMetrics().density;
    }

    @Override // j.InterfaceC1072C
    public final boolean g() {
        ArrayList arrayList;
        int i4;
        boolean z4;
        boolean z5;
        C1097o c1097o = this.f10926f;
        View view = null;
        boolean z6 = false;
        if (c1097o != null) {
            arrayList = c1097o.l();
            i4 = arrayList.size();
        } else {
            arrayList = null;
            i4 = 0;
        }
        int i5 = this.f10937q;
        int i6 = this.f10936p;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f10931k;
        int i7 = 0;
        boolean z7 = false;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            z4 = true;
            if (i7 >= i4) {
                break;
            }
            j.r rVar = (j.r) arrayList.get(i7);
            if (rVar.requiresActionButton()) {
                i8++;
            } else if ((rVar.f10620y & 1) == 1) {
                i9++;
            } else {
                z7 = true;
            }
            if (this.f10938r && rVar.f10595C) {
                i5 = 0;
            }
            i7++;
        }
        if (this.f10933m && (z7 || i9 + i8 > i5)) {
            i5--;
        }
        int i10 = i5 - i8;
        SparseBooleanArray sparseBooleanArray = this.f10939s;
        sparseBooleanArray.clear();
        int i11 = 0;
        int i12 = 0;
        while (i11 < i4) {
            j.r rVar2 = (j.r) arrayList.get(i11);
            if (rVar2.requiresActionButton()) {
                View b4 = b(rVar2, view, viewGroup);
                b4.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = b4.getMeasuredWidth();
                i6 -= measuredWidth;
                if (i12 == 0) {
                    i12 = measuredWidth;
                }
                int i13 = rVar2.f10597b;
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z4);
                }
                rVar2.g(z4);
                z5 = z6;
            } else if ((rVar2.f10620y & z4) == z4 ? z4 : z6) {
                int i14 = rVar2.f10597b;
                boolean z8 = sparseBooleanArray.get(i14);
                boolean z9 = ((i10 > 0 || z8) && i6 > 0) ? z4 : z6;
                if (z9) {
                    View b5 = b(rVar2, view, viewGroup);
                    b5.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = b5.getMeasuredWidth();
                    i6 -= measuredWidth2;
                    if (i12 == 0) {
                        i12 = measuredWidth2;
                    }
                    z9 &= i6 + i12 > 0 ? z4 : false;
                }
                boolean z10 = z9;
                if (z10 && i14 != 0) {
                    sparseBooleanArray.put(i14, z4);
                } else if (z8) {
                    sparseBooleanArray.put(i14, false);
                    for (int i15 = 0; i15 < i11; i15++) {
                        j.r rVar3 = (j.r) arrayList.get(i15);
                        if (rVar3.f10597b == i14) {
                            if (rVar3.f()) {
                                i10++;
                            }
                            rVar3.g(false);
                        }
                    }
                }
                if (z10) {
                    i10--;
                }
                rVar2.g(z10);
                z5 = false;
            } else {
                z5 = z6;
                rVar2.g(z5);
            }
            i11++;
            z6 = z5;
            view = null;
            z4 = true;
        }
        return z4;
    }

    @Override // j.InterfaceC1072C
    public final /* bridge */ /* synthetic */ boolean h(j.r rVar) {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void i(InterfaceC1071B interfaceC1071B) {
        this.f10928h = interfaceC1071B;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008e  */
    @Override // j.InterfaceC1072C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j(j.SubMenuC1081L r8) {
        /*
            r7 = this;
            boolean r0 = r8.hasVisibleItems()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = r8
        L9:
            j.o r2 = r0.f10490A
            j.o r3 = r7.f10926f
            if (r2 == r3) goto L13
            r0 = r2
            j.L r0 = (j.SubMenuC1081L) r0
            goto L9
        L13:
            j.r r0 = r0.f10491B
            j.E r2 = r7.f10931k
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            if (r2 != 0) goto L1c
            goto L38
        L1c:
            int r3 = r2.getChildCount()
            r4 = r1
        L21:
            if (r4 >= r3) goto L38
            android.view.View r5 = r2.getChildAt(r4)
            boolean r6 = r5 instanceof j.InterfaceC1073D
            if (r6 == 0) goto L35
            r6 = r5
            j.D r6 = (j.InterfaceC1073D) r6
            j.r r6 = r6.c()
            if (r6 != r0) goto L35
            goto L39
        L35:
            int r4 = r4 + 1
            goto L21
        L38:
            r5 = 0
        L39:
            if (r5 != 0) goto L3c
            return r1
        L3c:
            j.r r0 = r8.f10491B
            r0.getClass()
            int r0 = r8.size()
            r2 = r1
        L46:
            r3 = 1
            if (r2 >= r0) goto L5e
            android.view.MenuItem r4 = r8.getItem(r2)
            boolean r6 = r4.isVisible()
            if (r6 == 0) goto L5b
            android.graphics.drawable.Drawable r4 = r4.getIcon()
            if (r4 == 0) goto L5b
            r0 = r3
            goto L5f
        L5b:
            int r2 = r2 + 1
            goto L46
        L5e:
            r0 = r1
        L5f:
            k.i r2 = new k.i
            android.content.Context r4 = r7.f10925e
            r2.<init>(r7, r4, r8, r5)
            r7.f10941u = r2
            r2.f10462h = r0
            j.y r2 = r2.f10464j
            if (r2 == 0) goto L71
            r2.n(r0)
        L71:
            k.i r0 = r7.f10941u
            boolean r2 = r0.b()
            if (r2 == 0) goto L7b
        L79:
            r1 = r3
            goto L84
        L7b:
            android.view.View r2 = r0.f10460f
            if (r2 != 0) goto L80
            goto L84
        L80:
            r0.d(r1, r1, r1, r1)
            goto L79
        L84:
            if (r1 == 0) goto L8e
            j.B r7 = r7.f10928h
            if (r7 == 0) goto L8d
            r7.c(r8)
        L8d:
            return r3
        L8e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "MenuPopupHelper cannot be used without an anchor"
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1151n.j(j.L):boolean");
    }

    public final boolean k() {
        C1141i c1141i = this.f10940t;
        return c1141i != null && c1141i.b();
    }

    public final boolean l() {
        C1097o c1097o;
        if (!this.f10933m || k() || (c1097o = this.f10926f) == null || this.f10931k == null || this.f10942v != null) {
            return false;
        }
        c1097o.i();
        if (c1097o.f10573j.isEmpty()) {
            return false;
        }
        RunnableC1145k runnableC1145k = new RunnableC1145k(this, new C1141i(this, this.f10925e, this.f10926f, this.f10932l));
        this.f10942v = runnableC1145k;
        ((View) this.f10931k).post(runnableC1145k);
        return true;
    }
}
