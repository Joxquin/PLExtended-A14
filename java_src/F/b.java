package F;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public abstract class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final Bitmap f343a;

    /* renamed from: b  reason: collision with root package name */
    public final int f344b;

    /* renamed from: e  reason: collision with root package name */
    public final BitmapShader f347e;

    /* renamed from: g  reason: collision with root package name */
    public float f349g;

    /* renamed from: k  reason: collision with root package name */
    public int f353k;

    /* renamed from: l  reason: collision with root package name */
    public int f354l;

    /* renamed from: c  reason: collision with root package name */
    public final int f345c = 119;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f346d = new Paint(3);

    /* renamed from: f  reason: collision with root package name */
    public final Matrix f348f = new Matrix();

    /* renamed from: h  reason: collision with root package name */
    public final Rect f350h = new Rect();

    /* renamed from: i  reason: collision with root package name */
    public final RectF f351i = new RectF();

    /* renamed from: j  reason: collision with root package name */
    public boolean f352j = true;

    public b(Resources resources, Bitmap bitmap) {
        this.f344b = 160;
        if (resources != null) {
            this.f344b = resources.getDisplayMetrics().densityDpi;
        }
        this.f343a = bitmap;
        if (bitmap == null) {
            this.f354l = -1;
            this.f353k = -1;
            this.f347e = null;
            return;
        }
        this.f353k = bitmap.getScaledWidth(this.f344b);
        this.f354l = bitmap.getScaledHeight(this.f344b);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f347e = new BitmapShader(bitmap, tileMode, tileMode);
    }

    public abstract void a(int i4, int i5, int i6, Rect rect, Rect rect2);

    public final void b(float f4) {
        if (this.f349g == f4) {
            return;
        }
        if (f4 > 0.05f) {
            this.f346d.setShader(this.f347e);
        } else {
            this.f346d.setShader(null);
        }
        this.f349g = f4;
        invalidateSelf();
    }

    public final void c() {
        if (this.f352j) {
            a(this.f345c, this.f353k, this.f354l, getBounds(), this.f350h);
            this.f351i.set(this.f350h);
            if (this.f347e != null) {
                Matrix matrix = this.f348f;
                RectF rectF = this.f351i;
                matrix.setTranslate(rectF.left, rectF.top);
                this.f348f.preScale(this.f351i.width() / this.f343a.getWidth(), this.f351i.height() / this.f343a.getHeight());
                this.f347e.setLocalMatrix(this.f348f);
                this.f346d.setShader(this.f347e);
            }
            this.f352j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Bitmap bitmap = this.f343a;
        if (bitmap == null) {
            return;
        }
        c();
        if (this.f346d.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.f350h, this.f346d);
            return;
        }
        RectF rectF = this.f351i;
        float f4 = this.f349g;
        canvas.drawRoundRect(rectF, f4, f4, this.f346d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f346d.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f346d.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f354l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f353k;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Bitmap bitmap;
        if (this.f345c == 119 && (bitmap = this.f343a) != null && !bitmap.hasAlpha() && this.f346d.getAlpha() >= 255) {
            if (!(this.f349g > 0.05f)) {
                return -1;
            }
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f352j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        if (i4 != this.f346d.getAlpha()) {
            this.f346d.setAlpha(i4);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f346d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z4) {
        this.f346d.setDither(z4);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z4) {
        this.f346d.setFilterBitmap(z4);
        invalidateSelf();
    }
}
