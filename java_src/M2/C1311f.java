package m2;

import C2.j;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;
import k.Y0;
/* renamed from: m2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1311f extends Toolbar implements z.b {

    /* renamed from: U  reason: collision with root package name */
    public static final /* synthetic */ int f11737U = 0;

    /* renamed from: R  reason: collision with root package name */
    public int f11738R;

    /* renamed from: S  reason: collision with root package name */
    public boolean f11739S;

    /* renamed from: T  reason: collision with root package name */
    public BottomAppBar$Behavior f11740T;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View A() {
        /*
            r3 = this;
            android.view.ViewParent r0 = r3.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            android.view.ViewParent r0 = r3.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            z.k r0 = r0.f3039e
            q.m r0 = r0.f12987b
            java.lang.Object r3 = r0.get(r3)
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            if (r3 != 0) goto L1e
            r0 = r1
            goto L23
        L1e:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r3)
        L23:
            if (r0 != 0) goto L29
            java.util.List r0 = java.util.Collections.emptyList()
        L29:
            java.util.Iterator r3 = r0.iterator()
        L2d:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L42
            java.lang.Object r0 = r3.next()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r0 instanceof w2.g
            if (r2 != 0) goto L41
            boolean r2 = r0 instanceof w2.c
            if (r2 == 0) goto L2d
        L41:
            return r0
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.C1311f.A():android.view.View");
    }

    @Override // z.b
    public final z.c a() {
        if (this.f11740T == null) {
            this.f11740T = new BottomAppBar$Behavior();
        }
        return this.f11740T;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.b(this, null);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
        if ((r2.f12801l.getVisibility() == 0 ? r2.f12797h != 1 : r2.f12797h == 2) != false) goto L22;
     */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r1, int r2, int r3, int r4, int r5) {
        /*
            r0 = this;
            super.onLayout(r1, r2, r3, r4, r5)
            r2 = 0
            if (r1 != 0) goto L67
            r1 = 0
            r3 = r1
        L8:
            int r4 = r0.getChildCount()
            if (r3 >= r4) goto L1c
            android.view.View r4 = r0.getChildAt(r3)
            boolean r5 = r4 instanceof androidx.appcompat.widget.ActionMenuView
            if (r5 == 0) goto L19
            androidx.appcompat.widget.ActionMenuView r4 = (androidx.appcompat.widget.ActionMenuView) r4
            goto L1d
        L19:
            int r3 = r3 + 1
            goto L8
        L1c:
            r4 = r2
        L1d:
            if (r4 == 0) goto L66
            r3 = 1065353216(0x3f800000, float:1.0)
            r4.setAlpha(r3)
            android.view.View r3 = r0.A()
            boolean r5 = r3 instanceof w2.g
            if (r5 == 0) goto L2f
            r2 = r3
            w2.g r2 = (w2.g) r2
        L2f:
            if (r2 == 0) goto L4e
            w2.p r2 = r2.e()
            w2.g r3 = r2.f12801l
            int r3 = r3.getVisibility()
            r5 = 1
            if (r3 == 0) goto L44
            int r2 = r2.f12797h
            r3 = 2
            if (r2 != r3) goto L4a
            goto L48
        L44:
            int r2 = r2.f12797h
            if (r2 == r5) goto L4a
        L48:
            r2 = r5
            goto L4b
        L4a:
            r2 = r1
        L4b:
            if (r2 == 0) goto L4e
            goto L4f
        L4e:
            r5 = r1
        L4f:
            if (r5 != 0) goto L5a
            m2.a r2 = new m2.a
            r2.<init>(r0, r4, r1, r1)
            r2.run()
            goto L66
        L5a:
            int r1 = r0.f11738R
            boolean r2 = r0.f11739S
            m2.a r3 = new m2.a
            r3.<init>(r0, r4, r1, r2)
            r3.run()
        L66:
            return
        L67:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.C1311f.onLayout(boolean, int, int, int, int):void");
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1310e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1310e c1310e = (C1310e) parcelable;
        super.onRestoreInstanceState(c1310e.f1528d);
        this.f11738R = c1310e.f11735f;
        this.f11739S = c1310e.f11736g;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        C1310e c1310e = new C1310e((Y0) super.onSaveInstanceState());
        c1310e.f11735f = this.f11738R;
        c1310e.f11736g = this.f11739S;
        return c1310e;
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void v(Drawable drawable) {
        super.v(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void w(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void x(CharSequence charSequence) {
    }
}
