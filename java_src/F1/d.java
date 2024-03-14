package F1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public final class d extends View {

    /* renamed from: d  reason: collision with root package name */
    public final ViewGroup f369d;

    /* renamed from: e  reason: collision with root package name */
    public int f370e;

    /* renamed from: f  reason: collision with root package name */
    public int f371f;

    /* renamed from: g  reason: collision with root package name */
    public final Point f372g;

    /* renamed from: h  reason: collision with root package name */
    public final Matrix f373h;

    /* renamed from: i  reason: collision with root package name */
    public final Paint f374i;

    public d(BaseDragLayer baseDragLayer) {
        super(baseDragLayer.getContext());
        this.f372g = new Point();
        this.f373h = new Matrix();
        Paint paint = new Paint(1);
        this.f374i = paint;
        this.f369d = baseDragLayer;
        baseDragLayer.addView(this);
        if (getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) getLayoutParams()).setMargins(0, 0, 0, 0);
        }
        paint.setAlpha(0);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, this.f369d.getWidth(), this.f369d.getHeight(), this.f374i);
    }
}
