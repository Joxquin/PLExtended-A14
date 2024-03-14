package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import i2.C0980a;
import java.util.List;
import w2.d;
import w2.g;
import x2.C1467e;
import z.c;
import z.f;
/* loaded from: classes.dex */
public class FloatingActionButton$BaseBehavior extends c {

    /* renamed from: a  reason: collision with root package name */
    public Rect f7979a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7980b;

    public FloatingActionButton$BaseBehavior() {
        this.f7980b = true;
    }

    @Override // z.c
    public final boolean a(View view) {
        ((g) view).getLeft();
        throw null;
    }

    @Override // z.c
    public final void c(f fVar) {
        if (fVar.f12974h == 0) {
            fVar.f12974h = 80;
        }
    }

    @Override // z.c
    public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        g gVar = (g) view;
        if (view2 instanceof AppBarLayout) {
            s(coordinatorLayout, (AppBarLayout) view2, gVar);
        } else {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof f ? ((f) layoutParams).f12967a instanceof BottomSheetBehavior : false) {
                t(view2, gVar);
            }
        }
        return false;
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        g gVar = (g) view;
        List d4 = coordinatorLayout.d(gVar);
        int size = d4.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) d4.get(i5);
            if (!(view2 instanceof AppBarLayout)) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if ((layoutParams instanceof f ? ((f) layoutParams).f12967a instanceof BottomSheetBehavior : false) && t(view2, gVar)) {
                    break;
                }
            } else if (s(coordinatorLayout, (AppBarLayout) view2, gVar)) {
                break;
            }
        }
        coordinatorLayout.n(gVar, i4);
        return true;
    }

    public final boolean s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, g gVar) {
        if (this.f7980b && ((f) gVar.getLayoutParams()).f12972f == appBarLayout.getId() && gVar.f12890d == 0) {
            if (this.f7979a == null) {
                this.f7979a = new Rect();
            }
            Rect rect = this.f7979a;
            C1467e.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.e()) {
                gVar.g();
            } else {
                gVar.h();
            }
            return true;
        }
        return false;
    }

    public void setInternalAutoHideListener(d dVar) {
    }

    public final boolean t(View view, g gVar) {
        if (this.f7980b && ((f) gVar.getLayoutParams()).f12972f == view.getId() && gVar.f12890d == 0) {
            if (view.getTop() < (gVar.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((f) gVar.getLayoutParams())).topMargin) {
                gVar.g();
            } else {
                gVar.h();
            }
            return true;
        }
        return false;
    }

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9634j);
        this.f7980b = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }
}
