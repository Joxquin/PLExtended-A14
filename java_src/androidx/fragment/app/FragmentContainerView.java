package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public final List f3265d;

    /* renamed from: e  reason: collision with root package name */
    public final List f3266e;

    /* renamed from: f  reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f3267f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3268g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.h.e(context, "context");
    }

    public final void a(View view) {
        if (this.f3266e.contains(view)) {
            this.f3265d.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View child, int i4, ViewGroup.LayoutParams layoutParams) {
        kotlin.jvm.internal.h.e(child, "child");
        Object tag = child.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof K ? (K) tag : null) != null) {
            super.addView(child, i4, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        androidx.core.view.c0 e4;
        kotlin.jvm.internal.h.e(insets, "insets");
        androidx.core.view.c0 g4 = androidx.core.view.c0.g(insets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f3267f;
        if (onApplyWindowInsetsListener != null) {
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, insets);
            kotlin.jvm.internal.h.d(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            e4 = androidx.core.view.c0.g(onApplyWindowInsets, null);
        } else {
            e4 = androidx.core.view.J.e(this, g4);
        }
        kotlin.jvm.internal.h.d(e4, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!e4.f3106a.m()) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                androidx.core.view.J.b(getChildAt(i4), e4);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        kotlin.jvm.internal.h.e(canvas, "canvas");
        if (this.f3268g) {
            for (View view : this.f3265d) {
                super.drawChild(canvas, view, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View child, long j4) {
        kotlin.jvm.internal.h.e(canvas, "canvas");
        kotlin.jvm.internal.h.e(child, "child");
        if (this.f3268g && (!this.f3265d.isEmpty()) && this.f3265d.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j4);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        this.f3266e.remove(view);
        if (this.f3265d.remove(view)) {
            this.f3268g = true;
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets insets) {
        kotlin.jvm.internal.h.e(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            }
            View view = getChildAt(childCount);
            kotlin.jvm.internal.h.d(view, "view");
            a(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i4) {
        View view = getChildAt(i4);
        kotlin.jvm.internal.h.d(view, "view");
        a(view);
        super.removeViewAt(i4);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i4, int i5) {
        int i6 = i4 + i5;
        for (int i7 = i4; i7 < i6; i7++) {
            View view = getChildAt(i7);
            kotlin.jvm.internal.h.d(view, "view");
            a(view);
        }
        super.removeViews(i4, i5);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i4, int i5) {
        int i6 = i4 + i5;
        for (int i7 = i4; i7 < i6; i7++) {
            View view = getChildAt(i7);
            kotlin.jvm.internal.h.d(view, "view");
            a(view);
        }
        super.removeViewsInLayout(i4, i5);
    }

    @Override // android.view.ViewGroup
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public final void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        kotlin.jvm.internal.h.e(listener, "listener");
        this.f3267f = listener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        kotlin.jvm.internal.h.e(view, "view");
        if (view.getParent() == this) {
            this.f3266e.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
        this.f3265d = new ArrayList();
        this.f3266e = new ArrayList();
        this.f3268g = true;
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i4, int i5, kotlin.jvm.internal.f fVar) {
        this(context, attributeSet, (i5 & 4) != 0 ? 0 : i4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        String str;
        kotlin.jvm.internal.h.e(context, "context");
        this.f3265d = new ArrayList();
        this.f3266e = new ArrayList();
        this.f3268g = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, S.a.f1680b, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attrs, AbstractC0220p0 fm) {
        super(context, attrs);
        View view;
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(attrs, "attrs");
        kotlin.jvm.internal.h.e(fm, "fm");
        this.f3265d = new ArrayList();
        this.f3266e = new ArrayList();
        this.f3268g = true;
        String classAttribute = attrs.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, S.a.f1680b, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        K B3 = fm.B(id);
        if (classAttribute != null && B3 == null) {
            if (id == -1) {
                throw new IllegalStateException(E.c.a("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            C0204h0 E3 = fm.E();
            context.getClassLoader();
            K a4 = E3.a(classAttribute);
            kotlin.jvm.internal.h.d(a4, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            a4.onInflate(context, attrs, (Bundle) null);
            C0189a c0189a = new C0189a(fm);
            c0189a.f3377p = true;
            a4.mContainer = this;
            c0189a.e(getId(), a4, string, 1);
            if (!c0189a.f3368g) {
                c0189a.f3369h = false;
                c0189a.f3379r.y(c0189a, true);
            } else {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
        }
        Iterator it = ((ArrayList) fm.f3466c.d()).iterator();
        while (it.hasNext()) {
            z0 z0Var = (z0) it.next();
            K k4 = z0Var.f3543c;
            if (k4.mContainerId == getId() && (view = k4.mView) != null && view.getParent() == null) {
                k4.mContainer = this;
                z0Var.b();
            }
        }
    }
}
