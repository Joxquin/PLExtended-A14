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
import w2.AbstractC1454b;
import x2.C1467e;
import z.c;
import z.f;
/* loaded from: classes.dex */
public class ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior extends c {

    /* renamed from: a  reason: collision with root package name */
    public Rect f7976a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7977b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f7978c;

    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior() {
        this.f7977b = false;
        this.f7978c = true;
    }

    @Override // z.c
    public final /* bridge */ /* synthetic */ boolean a(View view) {
        w2.c cVar = (w2.c) view;
        return false;
    }

    @Override // z.c
    public final void c(f fVar) {
        if (fVar.f12974h == 0) {
            fVar.f12974h = 80;
        }
    }

    @Override // z.c
    public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        w2.c cVar = (w2.c) view;
        if (view2 instanceof AppBarLayout) {
            s(coordinatorLayout, (AppBarLayout) view2, cVar);
        } else {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof f ? ((f) layoutParams).f12967a instanceof BottomSheetBehavior : false) {
                t(view2, cVar);
            }
        }
        return false;
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        w2.c cVar = (w2.c) view;
        List d4 = coordinatorLayout.d(cVar);
        int size = d4.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) d4.get(i5);
            if (view2 instanceof AppBarLayout) {
                s(coordinatorLayout, (AppBarLayout) view2, cVar);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof f ? ((f) layoutParams).f12967a instanceof BottomSheetBehavior : false) {
                    t(view2, cVar);
                }
            }
        }
        coordinatorLayout.n(cVar, i4);
        return true;
    }

    public final boolean s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, w2.c cVar) {
        f fVar = (f) cVar.getLayoutParams();
        boolean z4 = this.f7977b;
        boolean z5 = this.f7978c;
        if ((z4 || z5) && fVar.f12972f == appBarLayout.getId()) {
            if (this.f7976a == null) {
                this.f7976a = new Rect();
            }
            Rect rect = this.f7976a;
            C1467e.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.e()) {
                if (z5) {
                    int i4 = w2.c.f12751v;
                } else {
                    int i5 = w2.c.f12751v;
                }
                throw null;
            }
            if (z5) {
                int i6 = w2.c.f12751v;
            } else {
                int i7 = w2.c.f12751v;
            }
            throw null;
        }
        return false;
    }

    public void setInternalAutoHideCallback(AbstractC1454b abstractC1454b) {
    }

    public void setInternalAutoShrinkCallback(AbstractC1454b abstractC1454b) {
    }

    public final boolean t(View view, w2.c cVar) {
        f fVar = (f) cVar.getLayoutParams();
        boolean z4 = this.f7977b;
        boolean z5 = this.f7978c;
        if ((z4 || z5) && fVar.f12972f == view.getId()) {
            if (view.getTop() < (cVar.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((f) cVar.getLayoutParams())).topMargin) {
                if (z5) {
                    int i4 = w2.c.f12751v;
                } else {
                    int i5 = w2.c.f12751v;
                }
                throw null;
            }
            if (z5) {
                int i6 = w2.c.f12751v;
            } else {
                int i7 = w2.c.f12751v;
            }
            throw null;
        }
        return false;
    }

    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9633i);
        this.f7977b = obtainStyledAttributes.getBoolean(0, false);
        this.f7978c = obtainStyledAttributes.getBoolean(1, true);
        obtainStyledAttributes.recycle();
    }
}
