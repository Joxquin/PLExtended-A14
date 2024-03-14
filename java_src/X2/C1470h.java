package x2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import i2.C0980a;
import k.C1169w0;
/* renamed from: x2.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1470h extends C1169w0 {

    /* renamed from: s  reason: collision with root package name */
    public Drawable f12849s;

    /* renamed from: t  reason: collision with root package name */
    public final Rect f12850t;

    /* renamed from: u  reason: collision with root package name */
    public final Rect f12851u;

    /* renamed from: v  reason: collision with root package name */
    public int f12852v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f12853w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f12854x;

    public C1470h(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f12849s;
        if (drawable != null) {
            if (this.f12854x) {
                this.f12854x = false;
                Rect rect = this.f12850t;
                Rect rect2 = this.f12851u;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f12853w) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f12852v, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f4, float f5) {
        super.drawableHotspotChanged(f4, f5);
        Drawable drawable = this.f12849s;
        if (drawable != null) {
            drawable.setHotspot(f4, f5);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f12849s;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f12849s.setState(getDrawableState());
    }

    @Override // android.view.View
    public final Drawable getForeground() {
        return this.f12849s;
    }

    @Override // android.view.View
    public final int getForegroundGravity() {
        return this.f12852v;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f12849s;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // k.C1169w0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        this.f12854x = z4 | this.f12854x;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        this.f12854x = true;
    }

    @Override // android.view.View
    public final void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f12849s;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f12849s);
            }
            this.f12849s = drawable;
            this.f12854x = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f12852v == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void setForegroundGravity(int i4) {
        if (this.f12852v != i4) {
            if ((8388615 & i4) == 0) {
                i4 |= 8388611;
            }
            if ((i4 & 112) == 0) {
                i4 |= 48;
            }
            this.f12852v = i4;
            if (i4 == 119 && this.f12849s != null) {
                this.f12849s.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f12849s;
    }

    public C1470h(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C1470h(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f12850t = new Rect();
        this.f12851u = new Rect();
        this.f12852v = 119;
        this.f12853w = true;
        this.f12854x = false;
        TypedArray d4 = C1480r.d(context, attributeSet, C0980a.f9635k, i4, 0, new int[0]);
        this.f12852v = d4.getInt(1, this.f12852v);
        Drawable drawable = d4.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f12853w = d4.getBoolean(2, true);
        d4.recycle();
    }
}
