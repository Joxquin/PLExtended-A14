package e;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import com.android.launcher3.AbstractFloatingView;
import com.android.systemui.shared.R;
import d.C0792a;
import i.InterfaceC0969a;
import java.util.ArrayList;
import java.util.WeakHashMap;
import k.InterfaceC1137g;
import k.InterfaceC1152n0;
/* loaded from: classes.dex */
public final class T extends AbstractC0811c implements InterfaceC1137g {

    /* renamed from: a  reason: collision with root package name */
    public Context f8880a;

    /* renamed from: b  reason: collision with root package name */
    public Context f8881b;

    /* renamed from: c  reason: collision with root package name */
    public ActionBarOverlayLayout f8882c;

    /* renamed from: d  reason: collision with root package name */
    public ActionBarContainer f8883d;

    /* renamed from: e  reason: collision with root package name */
    public InterfaceC1152n0 f8884e;

    /* renamed from: f  reason: collision with root package name */
    public ActionBarContextView f8885f;

    /* renamed from: g  reason: collision with root package name */
    public final View f8886g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8887h;

    /* renamed from: i  reason: collision with root package name */
    public S f8888i;

    /* renamed from: j  reason: collision with root package name */
    public S f8889j;

    /* renamed from: k  reason: collision with root package name */
    public InterfaceC0969a f8890k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8891l;

    /* renamed from: m  reason: collision with root package name */
    public final ArrayList f8892m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f8893n;

    /* renamed from: o  reason: collision with root package name */
    public int f8894o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f8895p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f8896q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f8897r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f8898s;

    /* renamed from: t  reason: collision with root package name */
    public i.l f8899t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f8900u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f8901v;

    /* renamed from: w  reason: collision with root package name */
    public final P f8902w;

    /* renamed from: x  reason: collision with root package name */
    public final P f8903x;

    /* renamed from: y  reason: collision with root package name */
    public final Q f8904y;

    /* renamed from: z  reason: collision with root package name */
    public static final Interpolator f8879z = new AccelerateInterpolator();

    /* renamed from: A  reason: collision with root package name */
    public static final Interpolator f8878A = new DecelerateInterpolator();

    public T(Activity activity, boolean z4) {
        new ArrayList();
        this.f8892m = new ArrayList();
        this.f8894o = 0;
        this.f8895p = true;
        this.f8898s = true;
        this.f8902w = new P(this, 0);
        this.f8903x = new P(this, 1);
        this.f8904y = new Q(this);
        View decorView = activity.getWindow().getDecorView();
        d(decorView);
        if (z4) {
            return;
        }
        this.f8886g = decorView.findViewById(16908290);
    }

    public final void a(boolean z4) {
        androidx.core.view.O f4;
        androidx.core.view.O o4;
        if (z4) {
            if (!this.f8897r) {
                this.f8897r = true;
                g(false);
            }
        } else if (this.f8897r) {
            this.f8897r = false;
            g(false);
        }
        ActionBarContainer actionBarContainer = this.f8883d;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (!androidx.core.view.A.c(actionBarContainer)) {
            if (z4) {
                this.f8884e.k(4);
                this.f8885f.setVisibility(0);
                return;
            }
            this.f8884e.k(0);
            this.f8885f.setVisibility(8);
            return;
        }
        if (z4) {
            f4 = this.f8884e.r(4, 100L);
            o4 = this.f8885f.f(0, 200L);
        } else {
            androidx.core.view.O r4 = this.f8884e.r(0, 200L);
            f4 = this.f8885f.f(8, 100L);
            o4 = r4;
        }
        i.l lVar = new i.l();
        ArrayList arrayList = lVar.f9599a;
        arrayList.add(f4);
        View view = (View) f4.f3088a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) o4.f3088a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(o4);
        lVar.b();
    }

    public final void b(boolean z4) {
        if (z4 == this.f8891l) {
            return;
        }
        this.f8891l = z4;
        ArrayList arrayList = this.f8892m;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((InterfaceC0810b) arrayList.get(i4)).a();
        }
    }

    public final Context c() {
        if (this.f8881b == null) {
            TypedValue typedValue = new TypedValue();
            this.f8880a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i4 = typedValue.resourceId;
            if (i4 != 0) {
                this.f8881b = new ContextThemeWrapper(this.f8880a, i4);
            } else {
                this.f8881b = this.f8880a;
            }
        }
        return this.f8881b;
    }

    public final void d(View view) {
        InterfaceC1152n0 interfaceC1152n0;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        this.f8882c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.f2562x = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((T) actionBarOverlayLayout.f2562x).f8894o = actionBarOverlayLayout.f2543e;
                int i4 = actionBarOverlayLayout.f2554p;
                if (i4 != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(i4);
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    androidx.core.view.B.c(actionBarOverlayLayout);
                }
            }
        }
        View findViewById = view.findViewById(R.id.action_bar);
        if (findViewById instanceof InterfaceC1152n0) {
            interfaceC1152n0 = (InterfaceC1152n0) findViewById;
        } else if (!(findViewById instanceof Toolbar)) {
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
        } else {
            Toolbar toolbar = (Toolbar) findViewById;
            if (toolbar.f2653M == null) {
                toolbar.f2653M = new androidx.appcompat.widget.b(toolbar);
            }
            interfaceC1152n0 = toolbar.f2653M;
        }
        this.f8884e = interfaceC1152n0;
        this.f8885f = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        this.f8883d = actionBarContainer;
        InterfaceC1152n0 interfaceC1152n02 = this.f8884e;
        if (interfaceC1152n02 == null || this.f8885f == null || actionBarContainer == null) {
            throw new IllegalStateException(T.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.f8880a = interfaceC1152n02.getContext();
        if ((this.f8884e.p() & 4) != 0) {
            this.f8887h = true;
        }
        Context context = this.f8880a;
        if (context.getApplicationInfo().targetSdkVersion < 14) {
        }
        this.f8884e.l();
        f(context.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.f8880a.obtainStyledAttributes(null, C0792a.f8731a, R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f8882c;
            if (!actionBarOverlayLayout2.f2549k) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f8901v = true;
            if (true != actionBarOverlayLayout2.f2551m) {
                actionBarOverlayLayout2.f2551m = true;
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f8883d;
            WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
            androidx.core.view.D.k(actionBarContainer2, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public final void e(boolean z4) {
        if (this.f8887h) {
            return;
        }
        int i4 = z4 ? 4 : 0;
        int p4 = this.f8884e.p();
        this.f8887h = true;
        this.f8884e.n((i4 & 4) | (p4 & (-5)));
    }

    public final void f(boolean z4) {
        this.f8893n = z4;
        if (z4) {
            this.f8883d.getClass();
            this.f8884e.o();
        } else {
            this.f8884e.o();
            this.f8883d.getClass();
        }
        this.f8884e.q();
        InterfaceC1152n0 interfaceC1152n0 = this.f8884e;
        boolean z5 = this.f8893n;
        interfaceC1152n0.u(false);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f8882c;
        boolean z6 = this.f8893n;
        actionBarOverlayLayout.f2550l = false;
    }

    public final void g(boolean z4) {
        int[] iArr;
        int[] iArr2;
        boolean z5 = this.f8897r || !this.f8896q;
        View view = this.f8886g;
        final Q q4 = this.f8904y;
        if (!z5) {
            if (this.f8898s) {
                this.f8898s = false;
                i.l lVar = this.f8899t;
                if (lVar != null) {
                    lVar.a();
                }
                int i4 = this.f8894o;
                P p4 = this.f8902w;
                if (i4 != 0 || (!this.f8900u && !z4)) {
                    p4.a();
                    return;
                }
                this.f8883d.setAlpha(1.0f);
                ActionBarContainer actionBarContainer = this.f8883d;
                actionBarContainer.f2516d = true;
                actionBarContainer.setDescendantFocusability(AbstractFloatingView.TYPE_TASKBAR_OVERLAYS);
                i.l lVar2 = new i.l();
                float f4 = -this.f8883d.getHeight();
                if (z4) {
                    this.f8883d.getLocationInWindow(new int[]{0, 0});
                    f4 -= iArr[1];
                }
                androidx.core.view.O a4 = androidx.core.view.J.a(this.f8883d);
                a4.e(f4);
                final View view2 = (View) a4.f3088a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(q4 != null ? new ValueAnimator.AnimatorUpdateListener(view2) { // from class: androidx.core.view.M
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) e.Q.this.f8872a.f8883d.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z6 = lVar2.f9603e;
                ArrayList arrayList = lVar2.f9599a;
                if (!z6) {
                    arrayList.add(a4);
                }
                if (this.f8895p && view != null) {
                    androidx.core.view.O a5 = androidx.core.view.J.a(view);
                    a5.e(f4);
                    if (!lVar2.f9603e) {
                        arrayList.add(a5);
                    }
                }
                Interpolator interpolator = f8879z;
                boolean z7 = lVar2.f9603e;
                if (!z7) {
                    lVar2.f9601c = interpolator;
                }
                if (!z7) {
                    lVar2.f9600b = 250L;
                }
                if (!z7) {
                    lVar2.f9602d = p4;
                }
                this.f8899t = lVar2;
                lVar2.b();
            }
        } else if (this.f8898s) {
        } else {
            this.f8898s = true;
            i.l lVar3 = this.f8899t;
            if (lVar3 != null) {
                lVar3.a();
            }
            this.f8883d.setVisibility(0);
            int i5 = this.f8894o;
            P p5 = this.f8903x;
            if (i5 == 0 && (this.f8900u || z4)) {
                this.f8883d.setTranslationY(0.0f);
                float f5 = -this.f8883d.getHeight();
                if (z4) {
                    this.f8883d.getLocationInWindow(new int[]{0, 0});
                    f5 -= iArr2[1];
                }
                this.f8883d.setTranslationY(f5);
                i.l lVar4 = new i.l();
                androidx.core.view.O a6 = androidx.core.view.J.a(this.f8883d);
                a6.e(0.0f);
                final View view3 = (View) a6.f3088a.get();
                if (view3 != null) {
                    view3.animate().setUpdateListener(q4 != null ? new ValueAnimator.AnimatorUpdateListener(view3) { // from class: androidx.core.view.M
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) e.Q.this.f8872a.f8883d.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z8 = lVar4.f9603e;
                ArrayList arrayList2 = lVar4.f9599a;
                if (!z8) {
                    arrayList2.add(a6);
                }
                if (this.f8895p && view != null) {
                    view.setTranslationY(f5);
                    androidx.core.view.O a7 = androidx.core.view.J.a(view);
                    a7.e(0.0f);
                    if (!lVar4.f9603e) {
                        arrayList2.add(a7);
                    }
                }
                Interpolator interpolator2 = f8878A;
                boolean z9 = lVar4.f9603e;
                if (!z9) {
                    lVar4.f9601c = interpolator2;
                }
                if (!z9) {
                    lVar4.f9600b = 250L;
                }
                if (!z9) {
                    lVar4.f9602d = p5;
                }
                this.f8899t = lVar4;
                lVar4.b();
            } else {
                this.f8883d.setAlpha(1.0f);
                this.f8883d.setTranslationY(0.0f);
                if (this.f8895p && view != null) {
                    view.setTranslationY(0.0f);
                }
                p5.a();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = this.f8882c;
            if (actionBarOverlayLayout != null) {
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                androidx.core.view.B.c(actionBarOverlayLayout);
            }
        }
    }

    public T(Dialog dialog) {
        new ArrayList();
        this.f8892m = new ArrayList();
        this.f8894o = 0;
        this.f8895p = true;
        this.f8898s = true;
        this.f8902w = new P(this, 0);
        this.f8903x = new P(this, 1);
        this.f8904y = new Q(this);
        d(dialog.getWindow().getDecorView());
    }
}
