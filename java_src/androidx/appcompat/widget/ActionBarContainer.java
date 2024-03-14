package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import d.C0792a;
import java.util.WeakHashMap;
import k.C1129c;
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public boolean f2516d;

    /* renamed from: e  reason: collision with root package name */
    public View f2517e;

    /* renamed from: f  reason: collision with root package name */
    public View f2518f;

    /* renamed from: g  reason: collision with root package name */
    public final Drawable f2519g;

    /* renamed from: h  reason: collision with root package name */
    public final Drawable f2520h;

    /* renamed from: i  reason: collision with root package name */
    public final Drawable f2521i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f2522j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2523k;

    /* renamed from: l  reason: collision with root package name */
    public final int f2524l;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2519g;
        if (drawable != null && drawable.isStateful()) {
            this.f2519g.setState(getDrawableState());
        }
        Drawable drawable2 = this.f2520h;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f2520h.setState(getDrawableState());
        }
        Drawable drawable3 = this.f2521i;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f2521i.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2519g;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f2520h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f2521i;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f2517e = findViewById(R.id.action_bar);
        this.f2518f = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f2516d || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        boolean z5 = true;
        if (this.f2522j) {
            Drawable drawable = this.f2521i;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z5 = false;
            }
        } else {
            if (this.f2519g == null) {
                z5 = false;
            } else if (this.f2517e.getVisibility() == 0) {
                this.f2519g.setBounds(this.f2517e.getLeft(), this.f2517e.getTop(), this.f2517e.getRight(), this.f2517e.getBottom());
            } else {
                View view = this.f2518f;
                if (view == null || view.getVisibility() != 0) {
                    this.f2519g.setBounds(0, 0, 0, 0);
                } else {
                    this.f2519g.setBounds(this.f2518f.getLeft(), this.f2518f.getTop(), this.f2518f.getRight(), this.f2518f.getBottom());
                }
            }
            this.f2523k = false;
        }
        if (z5) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        if (this.f2517e == null && View.MeasureSpec.getMode(i5) == Integer.MIN_VALUE && (i6 = this.f2524l) >= 0) {
            i5 = View.MeasureSpec.makeMeasureSpec(Math.min(i6, View.MeasureSpec.getSize(i5)), Integer.MIN_VALUE);
        }
        super.onMeasure(i4, i5);
        if (this.f2517e == null) {
            return;
        }
        View.MeasureSpec.getMode(i5);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        boolean z4 = i4 == 0;
        Drawable drawable = this.f2519g;
        if (drawable != null) {
            drawable.setVisible(z4, false);
        }
        Drawable drawable2 = this.f2520h;
        if (drawable2 != null) {
            drawable2.setVisible(z4, false);
        }
        Drawable drawable3 = this.f2521i;
        if (drawable3 != null) {
            drawable3.setVisible(z4, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f2519g && !this.f2522j) || (drawable == this.f2520h && this.f2523k) || ((drawable == this.f2521i && this.f2522j) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C1129c c1129c = new C1129c(this);
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.m(this, c1129c);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8731a);
        boolean z4 = false;
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        this.f2519g = drawable;
        Drawable drawable2 = obtainStyledAttributes.getDrawable(2);
        this.f2520h = drawable2;
        this.f2524l = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f2522j = true;
            this.f2521i = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f2522j ? !(drawable != null || drawable2 != null) : this.f2521i == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i4) {
        if (i4 != 0) {
            return super.startActionModeForChild(view, callback, i4);
        }
        return null;
    }
}
