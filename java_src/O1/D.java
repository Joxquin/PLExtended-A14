package O1;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.Insettable;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class D extends View implements Insettable {

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f1427d;

    /* renamed from: e  reason: collision with root package name */
    public final Paint f1428e;

    /* renamed from: f  reason: collision with root package name */
    public final Point f1429f;

    /* renamed from: g  reason: collision with root package name */
    public final AnimatedFloat f1430g;

    /* renamed from: h  reason: collision with root package name */
    public final Runnable f1431h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1432i;

    public D(l lVar, Bitmap bitmap, Point point, Runnable runnable) {
        super(lVar);
        this.f1430g = new AnimatedFloat(new Runnable() { // from class: O1.C
            @Override // java.lang.Runnable
            public final void run() {
                D.this.invalidate();
            }
        });
        this.f1427d = bitmap;
        this.f1429f = point;
        this.f1431h = runnable;
        Paint paint = new Paint();
        this.f1428e = paint;
        paint.setMaskFilter(new BlurMaskFilter(getResources().getDimension(R.dimen.wallpaper_reveal_blur_radius), BlurMaskFilter.Blur.NORMAL));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawColor(-16777216);
        canvas.drawBitmap(this.f1427d, 0.0f, 0.0f, (Paint) null);
        if (!this.f1432i) {
            this.f1432i = true;
            this.f1431h.run();
        }
        Point point = this.f1429f;
        canvas.drawCircle(point.x, point.y, this.f1430g.value, this.f1428e);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }
}
