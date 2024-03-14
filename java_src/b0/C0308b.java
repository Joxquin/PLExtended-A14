package b0;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
/* renamed from: b0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0308b extends InsetDrawable {

    /* renamed from: d  reason: collision with root package name */
    public final float f4153d;

    /* renamed from: e  reason: collision with root package name */
    public final Path f4154e;

    public C0308b(Drawable drawable, float f4) {
        super(drawable, 0);
        this.f4154e = new Path();
        this.f4153d = f4;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int save = canvas.save();
        canvas.clipPath(this.f4154e);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Path path = this.f4154e;
        if (path != null) {
            path.reset();
            Path path2 = this.f4154e;
            RectF rectF = new RectF(rect);
            float f4 = this.f4153d;
            path2.addRoundRect(rectF, f4, f4, Path.Direction.CW);
        }
        super.onBoundsChange(rect);
    }
}
