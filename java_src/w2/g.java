package w2;

import C2.y;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import androidx.core.view.A;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton$Behavior;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import v2.InterfaceC1438a;
import x2.C1486x;
/* loaded from: classes.dex */
public final class g extends C1486x implements InterfaceC1438a, y, z.b {

    /* renamed from: e  reason: collision with root package name */
    public ColorStateList f12753e;

    /* renamed from: f  reason: collision with root package name */
    public PorterDuff.Mode f12754f;

    /* renamed from: g  reason: collision with root package name */
    public q f12755g;

    @Override // z.b
    public final z.c a() {
        return new FloatingActionButton$Behavior();
    }

    @Override // C2.y
    public final void b(C2.n nVar) {
        e().getClass();
    }

    @Override // v2.InterfaceC1438a
    public final boolean c() {
        throw null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e().f(getDrawableState());
    }

    public final p e() {
        if (this.f12755g == null) {
            this.f12755g = new q(this, new e(this));
        }
        return this.f12755g;
    }

    public final int f(int i4) {
        Resources resources = getResources();
        return i4 != -1 ? i4 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? f(1) : f(0);
    }

    public final void g() {
        p e4 = e();
        g gVar = e4.f12801l;
        boolean z4 = true;
        if (gVar.getVisibility() != 0 ? e4.f12797h != 2 : e4.f12797h == 1) {
            return;
        }
        Animator animator = e4.f12792c;
        if (animator != null) {
            animator.cancel();
        }
        WeakHashMap weakHashMap = J.f3079a;
        g gVar2 = e4.f12801l;
        if (!A.c(gVar2) || gVar2.isInEditMode()) {
            z4 = false;
        }
        if (!z4) {
            gVar.d(4, false);
            return;
        }
        j2.g gVar3 = e4.f12794e;
        AnimatorSet a4 = gVar3 != null ? e4.a(gVar3, 0.0f, 0.0f, 0.0f) : e4.b(0.0f, 0.4f, 0.4f, p.f12783t, p.f12784u);
        a4.addListener(new h(e4));
        ArrayList arrayList = e4.f12799j;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a4.addListener((Animator.AnimatorListener) it.next());
            }
        }
        a4.start();
    }

    @Override // android.view.View
    public final ColorStateList getBackgroundTintList() {
        return this.f12753e;
    }

    @Override // android.view.View
    public final PorterDuff.Mode getBackgroundTintMode() {
        return this.f12754f;
    }

    public final void h() {
        p e4 = e();
        boolean z4 = true;
        if (e4.f12801l.getVisibility() == 0 ? e4.f12797h != 1 : e4.f12797h == 2) {
            return;
        }
        Animator animator = e4.f12792c;
        if (animator != null) {
            animator.cancel();
        }
        boolean z5 = e4.f12793d == null;
        WeakHashMap weakHashMap = J.f3079a;
        g gVar = e4.f12801l;
        if (!A.c(gVar) || gVar.isInEditMode()) {
            z4 = false;
        }
        Matrix matrix = e4.f12804o;
        if (!z4) {
            gVar.d(0, false);
            gVar.setAlpha(1.0f);
            gVar.setScaleY(1.0f);
            gVar.setScaleX(1.0f);
            e4.f12796g = 1.0f;
            matrix.reset();
            gVar.getDrawable();
            gVar.setImageMatrix(matrix);
            return;
        }
        if (gVar.getVisibility() != 0) {
            gVar.setAlpha(0.0f);
            gVar.setScaleY(z5 ? 0.4f : 0.0f);
            gVar.setScaleX(z5 ? 0.4f : 0.0f);
            e4.f12796g = z5 ? 0.4f : 0.0f;
            matrix.reset();
            gVar.getDrawable();
            gVar.setImageMatrix(matrix);
        }
        j2.g gVar2 = e4.f12793d;
        AnimatorSet a4 = gVar2 != null ? e4.a(gVar2, 1.0f, 1.0f, 1.0f) : e4.b(1.0f, 1.0f, 1.0f, p.f12781r, p.f12782s);
        a4.addListener(new i(e4));
        ArrayList arrayList = e4.f12798i;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a4.addListener((Animator.AnimatorListener) it.next());
            }
        }
        a4.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        e().e();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        p e4 = e();
        e4.getClass();
        if (!(e4 instanceof q)) {
            ViewTreeObserver viewTreeObserver = e4.f12801l.getViewTreeObserver();
            if (e4.f12805p == null) {
                e4.f12805p = new l(e4);
            }
            viewTreeObserver.addOnPreDrawListener(e4.f12805p);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        p e4 = e();
        ViewTreeObserver viewTreeObserver = e4.f12801l.getViewTreeObserver();
        l lVar = e4.f12805p;
        if (lVar != null) {
            viewTreeObserver.removeOnPreDrawListener(lVar);
            e4.f12805p = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i4, int i5) {
        int f4 = (f(0) - 0) / 2;
        e().i();
        throw null;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof E2.b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        E2.b bVar = (E2.b) parcelable;
        super.onRestoreInstanceState(bVar.f1528d);
        ((Bundle) bVar.f342f.get("expandableWidgetHelper")).getClass();
        throw null;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        new E2.b(onSaveInstanceState);
        throw null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            WeakHashMap weakHashMap = J.f3079a;
            if (A.c(this)) {
                getWidth();
                getHeight();
                throw null;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i4) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f12753e != colorStateList) {
            this.f12753e = colorStateList;
            e().getClass();
        }
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f12754f != mode) {
            this.f12754f = mode;
            e().getClass();
        }
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        e().getClass();
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            p e4 = e();
            e4.f12796g = e4.f12796g;
            Matrix matrix = e4.f12804o;
            matrix.reset();
            g gVar = e4.f12801l;
            gVar.getDrawable();
            gVar.setImageMatrix(matrix);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i4) {
        throw null;
    }

    @Override // android.view.View
    public final void setScaleX(float f4) {
        super.setScaleX(f4);
        ArrayList arrayList = e().f12800k;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((n) it.next()).b();
            }
        }
    }

    @Override // android.view.View
    public final void setScaleY(float f4) {
        super.setScaleY(f4);
        ArrayList arrayList = e().f12800k;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((n) it.next()).b();
            }
        }
    }

    public void setShadowPaddingEnabled(boolean z4) {
        p e4 = e();
        e4.f12790a = z4;
        e4.i();
        throw null;
    }

    @Override // android.view.View
    public final void setTranslationX(float f4) {
        super.setTranslationX(f4);
        e().g();
    }

    @Override // android.view.View
    public final void setTranslationY(float f4) {
        super.setTranslationY(f4);
        e().g();
    }

    @Override // android.view.View
    public final void setTranslationZ(float f4) {
        super.setTranslationZ(f4);
        e().g();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void setVisibility(int i4) {
        d(i4, true);
    }
}
