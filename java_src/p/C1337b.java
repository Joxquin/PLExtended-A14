package p;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* renamed from: p.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1337b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final float f11884a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f11885b;

    /* renamed from: c  reason: collision with root package name */
    public final RectF f11886c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f11887d;

    /* renamed from: e  reason: collision with root package name */
    public float f11888e;

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f11891h;

    /* renamed from: i  reason: collision with root package name */
    public PorterDuffColorFilter f11892i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f11893j;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11889f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11890g = true;

    /* renamed from: k  reason: collision with root package name */
    public PorterDuff.Mode f11894k = PorterDuff.Mode.SRC_IN;

    public C1337b(float f4, ColorStateList colorStateList) {
        this.f11884a = f4;
        Paint paint = new Paint(5);
        this.f11885b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f11891h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f11891h.getDefaultColor()));
        this.f11886c = new RectF();
        this.f11887d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f11886c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f11887d.set(rect);
        if (this.f11889f) {
            float a4 = C1338c.a(this.f11888e, this.f11884a, this.f11890g);
            float f4 = this.f11888e;
            float f5 = this.f11884a;
            if (this.f11890g) {
                f4 = (float) (((1.0d - C1338c.f11895a) * f5) + f4);
            }
            this.f11887d.inset((int) Math.ceil(f4), (int) Math.ceil(a4));
            this.f11886c.set(this.f11887d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z4;
        Paint paint = this.f11885b;
        if (this.f11892i == null || paint.getColorFilter() != null) {
            z4 = false;
        } else {
            paint.setColorFilter(this.f11892i);
            z4 = true;
        }
        RectF rectF = this.f11886c;
        float f4 = this.f11884a;
        canvas.drawRoundRect(rectF, f4, f4, paint);
        if (z4) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f11887d, this.f11884a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f11893j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f11891h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f11891h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z4 = colorForState != this.f11885b.getColor();
        if (z4) {
            this.f11885b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f11893j;
        if (colorStateList2 == null || (mode = this.f11894k) == null) {
            return z4;
        }
        this.f11892i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.f11885b.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f11885b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f11893j = colorStateList;
        this.f11892i = a(colorStateList, this.f11894k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f11894k = mode;
        this.f11892i = a(this.f11893j, mode);
        invalidateSelf();
    }
}
