package L1;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class G extends View.DragShadowBuilder {

    /* renamed from: k  reason: collision with root package name */
    public static final F f1071k = new F();

    /* renamed from: a  reason: collision with root package name */
    public final float f1072a;

    /* renamed from: b  reason: collision with root package name */
    public final float f1073b;

    /* renamed from: c  reason: collision with root package name */
    public final Paint f1074c;

    /* renamed from: d  reason: collision with root package name */
    public final RectF f1075d;

    /* renamed from: e  reason: collision with root package name */
    public final Matrix f1076e;

    /* renamed from: f  reason: collision with root package name */
    public float f1077f;

    /* renamed from: g  reason: collision with root package name */
    public final RectF f1078g;

    /* renamed from: h  reason: collision with root package name */
    public final RectF f1079h;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f1080i;

    /* renamed from: j  reason: collision with root package name */
    public final RectF f1081j;

    public G(Bitmap bitmap, View view, float f4, float f5, float f6) {
        super(view);
        RectF rectF = new RectF();
        this.f1078g = rectF;
        RectF rectF2 = new RectF();
        this.f1079h = rectF2;
        this.f1080i = new RectF();
        RectF rectF3 = new RectF();
        this.f1081j = rectF3;
        float dimension = view.getResources().getDimension(R.dimen.image_shadow_minimum_size);
        float max = Math.max(0.4f, Math.max(dimension / view.getWidth(), dimension / view.getHeight()));
        this.f1077f = 0.0f;
        rectF.set(0.0f, 0.0f, view.getWidth() * f4, view.getHeight() * f4);
        int i4 = H.f1082f;
        rectF.offset((view.getWidth() * 0.5f) - rectF.centerX(), (view.getHeight() * 0.5f) - rectF.centerY());
        rectF2.set(0.0f, 0.0f, view.getWidth() * max, view.getHeight() * max);
        rectF2.offset(f5 - rectF2.centerX(), f6 - rectF2.centerY());
        rectF3.set(rectF);
        rectF3.union(rectF2);
        float f7 = -rectF3.left;
        float f8 = -rectF3.top;
        rectF3.offset(f7, f8);
        rectF.offset(f7, f8);
        rectF2.offset(f7, f8);
        this.f1073b = view.getResources().getDimensionPixelSize(R.dimen.scaled_image_corner_radius) * f4;
        this.f1072a = Math.min(view.getResources().getDimensionPixelSize(R.dimen.image_shadow_corner_radius), max * 0.25f * Math.min(view.getWidth(), view.getHeight()));
        this.f1075d = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Paint paint = new Paint();
        this.f1074c = paint;
        paint.setShader(bitmapShader);
        this.f1076e = new Matrix();
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onDrawShadow(Canvas canvas) {
        RectF rectF = this.f1080i;
        RectF rectF2 = this.f1078g;
        float f4 = rectF2.left;
        RectF rectF3 = this.f1079h;
        float f5 = rectF3.left;
        float f6 = this.f1077f;
        int i4 = M1.c.f1362a;
        float a4 = w.f.a(f5, f4, f6, f4);
        float f7 = rectF2.top;
        float a5 = w.f.a(rectF3.top, f7, f6, f7);
        float f8 = rectF2.right;
        float a6 = w.f.a(rectF3.right, f8, f6, f8);
        float f9 = rectF2.bottom;
        rectF.set(a4, a5, a6, ((rectF3.bottom - f9) * f6) + f9);
        this.f1076e.setRectToRect(this.f1075d, this.f1080i, Matrix.ScaleToFit.CENTER);
        this.f1074c.getShader().setLocalMatrix(this.f1076e);
        float f10 = this.f1073b;
        float a7 = w.f.a(this.f1072a, f10, this.f1077f, f10);
        canvas.drawRoundRect(this.f1080i, a7, a7, this.f1074c);
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onProvideShadowMetrics(Point point, Point point2) {
        point.set(Math.round(this.f1081j.width()), Math.round(this.f1081j.height()));
        point2.set(Math.round(this.f1079h.centerX()), Math.round(this.f1079h.centerY()));
    }
}
