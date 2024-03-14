package n2;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.D;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import e.DialogC0805F;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class q extends DialogC0805F {

    /* renamed from: i  reason: collision with root package name */
    public BottomSheetBehavior f11829i;

    /* renamed from: j  reason: collision with root package name */
    public FrameLayout f11830j;

    /* renamed from: k  reason: collision with root package name */
    public CoordinatorLayout f11831k;

    /* renamed from: l  reason: collision with root package name */
    public FrameLayout f11832l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f11833m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f11834n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f11835o;

    /* renamed from: p  reason: collision with root package name */
    public p f11836p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f11837q;

    /* renamed from: r  reason: collision with root package name */
    public final o f11838r;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q(int r4, android.content.Context r5) {
        /*
            r3 = this;
            r0 = 1
            if (r4 != 0) goto L1b
            android.util.TypedValue r4 = new android.util.TypedValue
            r4.<init>()
            android.content.res.Resources$Theme r1 = r5.getTheme()
            r2 = 2130968746(0x7f0400aa, float:1.7546154E38)
            boolean r1 = r1.resolveAttribute(r2, r4, r0)
            if (r1 == 0) goto L18
            int r4 = r4.resourceId
            goto L1b
        L18:
            r4 = 2132017825(0x7f1402a1, float:1.967394E38)
        L1b:
            r3.<init>(r4, r5)
            r3.f11833m = r0
            r3.f11834n = r0
            n2.o r4 = new n2.o
            r4.<init>(r3)
            r3.f11838r = r4
            e.r r4 = r3.f()
            r4.s(r0)
            android.content.Context r4 = r3.getContext()
            android.content.res.Resources$Theme r4 = r4.getTheme()
            r5 = 2130969044(0x7f0401d4, float:1.7546759E38)
            int[] r5 = new int[]{r5}
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5)
            r5 = 0
            boolean r4 = r4.getBoolean(r5, r5)
            r3.f11837q = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.q.<init>(int, android.content.Context):void");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.f11829i == null) {
            h();
        }
        super.cancel();
    }

    public final void h() {
        if (this.f11830j == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.f11830j = frameLayout;
            this.f11831k = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f11830j.findViewById(R.id.design_bottom_sheet);
            this.f11832l = frameLayout2;
            BottomSheetBehavior v4 = BottomSheetBehavior.v(frameLayout2);
            this.f11829i = v4;
            o oVar = this.f11838r;
            ArrayList arrayList = v4.f7770U;
            if (!arrayList.contains(oVar)) {
                arrayList.add(oVar);
            }
            this.f11829i.z(this.f11833m);
        }
    }

    public final View i(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        h();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f11830j.findViewById(R.id.coordinator);
        if (i4 != 0 && view == null) {
            view = getLayoutInflater().inflate(i4, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f11837q) {
            FrameLayout frameLayout = this.f11832l;
            k kVar = new k(this);
            WeakHashMap weakHashMap = J.f3079a;
            D.l(frameLayout, kVar);
        }
        this.f11832l.removeAllViews();
        if (layoutParams == null) {
            this.f11832l.addView(view);
        } else {
            this.f11832l.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new l(this));
        J.h(this.f11832l, new m(this));
        this.f11832l.setOnTouchListener(new n());
        return this.f11830j;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z4 = this.f11837q && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f11830j;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z4);
            }
            CoordinatorLayout coordinatorLayout = this.f11831k;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z4);
            }
            window.setDecorFitsSystemWindows(!z4);
            p pVar = this.f11836p;
            if (pVar != null) {
                pVar.e(window);
            }
        }
    }

    @Override // e.DialogC0805F, androidx.activity.n, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        p pVar = this.f11836p;
        if (pVar != null) {
            pVar.e(null);
        }
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.f11829i;
        if (bottomSheetBehavior == null || bottomSheetBehavior.f7759J != 5) {
            return;
        }
        bottomSheetBehavior.B(4);
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z4) {
        super.setCancelable(z4);
        if (this.f11833m != z4) {
            this.f11833m = z4;
            BottomSheetBehavior bottomSheetBehavior = this.f11829i;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.z(z4);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z4) {
        super.setCanceledOnTouchOutside(z4);
        if (z4 && !this.f11833m) {
            this.f11833m = true;
        }
        this.f11834n = z4;
        this.f11835o = true;
    }

    @Override // e.DialogC0805F, androidx.activity.n, android.app.Dialog
    public final void setContentView(int i4) {
        super.setContentView(i(null, i4, null));
    }

    @Override // e.DialogC0805F, androidx.activity.n, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(i(view, 0, null));
    }

    @Override // e.DialogC0805F, androidx.activity.n, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(i(view, 0, layoutParams));
    }
}
