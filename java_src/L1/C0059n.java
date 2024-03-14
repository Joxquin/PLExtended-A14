package L1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
/* renamed from: L1.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0059n extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public final Paint f1201d;

    /* renamed from: e  reason: collision with root package name */
    public final RectF f1202e;

    /* renamed from: f  reason: collision with root package name */
    public final Rect f1203f;

    /* renamed from: g  reason: collision with root package name */
    public float f1204g;

    /* renamed from: h  reason: collision with root package name */
    public C0067w f1205h;

    public C0059n(Context context) {
        super(context, null, 0, 0);
        this.f1202e = new RectF();
        this.f1203f = new Rect();
        Paint paint = new Paint();
        this.f1201d = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setOnTouchListener(new View.OnTouchListener() { // from class: L1.m
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                C0059n c0059n = C0059n.this;
                c0059n.getClass();
                if (motionEvent.getAction() == 0) {
                    M1.b.f("Handle touch for the background scrim.");
                    C0067w c0067w = c0059n.f1205h;
                    if (c0067w != null) {
                        c0067w.a();
                    }
                    return true;
                }
                return false;
            }
        });
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getHeight() == 0) {
            return;
        }
        getDrawingRect(this.f1203f);
        this.f1202e.set(this.f1203f);
        RectF rectF = this.f1202e;
        float f4 = this.f1204g;
        canvas.drawRoundRect(rectF, f4, f4, this.f1201d);
    }
}
