package L1;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class B extends FrameLayout {

    /* renamed from: r  reason: collision with root package name */
    public static final C0070z f1041r = new C0070z("highlightProgress", 0);

    /* renamed from: s  reason: collision with root package name */
    public static final Interpolator f1042s;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f1043d;

    /* renamed from: e  reason: collision with root package name */
    public final Paint f1044e;

    /* renamed from: f  reason: collision with root package name */
    public final Paint f1045f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f1046g;

    /* renamed from: h  reason: collision with root package name */
    public final List f1047h;

    /* renamed from: i  reason: collision with root package name */
    public final float f1048i;

    /* renamed from: j  reason: collision with root package name */
    public final RectF f1049j;

    /* renamed from: k  reason: collision with root package name */
    public final Rect f1050k;

    /* renamed from: l  reason: collision with root package name */
    public float f1051l;

    /* renamed from: m  reason: collision with root package name */
    public V1.c f1052m;

    /* renamed from: n  reason: collision with root package name */
    public float f1053n;

    /* renamed from: o  reason: collision with root package name */
    public float f1054o;

    /* renamed from: p  reason: collision with root package name */
    public Path f1055p;

    /* renamed from: q  reason: collision with root package name */
    public Path f1056q;

    static {
        new C0070z("pathChangeProgress", 1);
        f1042s = new PathInterpolator(0.71f, 0.0f, 0.13f, 1.0f);
    }

    public B(Context context) {
        super(context, null, 0, 0);
        this.f1046g = new ArrayList();
        this.f1047h = new ArrayList();
        this.f1049j = new RectF();
        this.f1050k = new Rect();
        this.f1053n = 0.0f;
        this.f1054o = 0.0f;
        Paint paint = new Paint();
        this.f1043d = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(context.getColor(R.color.default_gleam_background_color));
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.selection_padding);
        this.f1048i = dimensionPixelSize;
        Paint paint2 = new Paint();
        this.f1045f = paint2;
        Paint paint3 = new Paint();
        this.f1044e = paint3;
        paint3.setColor(context.getColor(R.color.default_gleam_highlight_color));
        paint2.setBlendMode(BlendMode.PLUS);
        paint2.setColor(paint3.getColor());
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeWidth(dimensionPixelSize * 2.0f);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        V1.c cVar = this.f1052m;
        return cVar == null ? super.dispatchHoverEvent(motionEvent) : cVar.f1809b.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        V1.c cVar = this.f1052m;
        return cVar == null ? super.dispatchKeyEvent(keyEvent) : cVar.f1809b.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setOnTouchListener(new View.OnTouchListener() { // from class: L1.x
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                B b4 = B.this;
                b4.getClass();
                if (motionEvent.getAction() == 0) {
                    b4.performClick();
                    float x4 = motionEvent.getX();
                    float y4 = motionEvent.getY();
                    Iterator it = ((ArrayList) b4.f1047h).iterator();
                    while (it.hasNext()) {
                        ((A) it.next()).a(x4, y4);
                    }
                    return true;
                }
                return false;
            }
        });
        setAlpha(0.0f);
        animate().alpha(0.2f);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getHeight() == 0) {
            return;
        }
        getDrawingRect(this.f1050k);
        this.f1049j.set(this.f1050k);
        RectF rectF = this.f1049j;
        float f4 = this.f1051l;
        canvas.drawRoundRect(rectF, f4, f4, this.f1043d);
        float f5 = this.f1053n * 1.1f;
        for (int i4 = 0; i4 < this.f1046g.size(); i4++) {
            float height = (f5 - (((RectF) this.f1046g.get(i4)).top / getHeight())) * 10.0f;
            float f6 = 0.0f;
            if (height >= 0.0f) {
                f6 = Math.min(1.0f, height);
            }
            this.f1044e.setAlpha(Math.round(f6 * 255.0f));
            float f7 = this.f1048i;
            canvas.drawRoundRect((RectF) this.f1046g.get(i4), f7, f7, this.f1044e);
        }
        if (this.f1056q != null) {
            this.f1045f.setAlpha((int) ((1.0f - this.f1054o) * 255.0f));
            canvas.drawPath(this.f1056q, this.f1045f);
        }
        if (this.f1055p != null) {
            this.f1045f.setAlpha((int) (this.f1054o * 255.0f));
            canvas.drawPath(this.f1055p, this.f1045f);
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        super.onFocusChanged(z4, i4, rect);
        V1.c cVar = this.f1052m;
        if (cVar != null) {
            cVar.f1809b.onFocusChanged(z4, i4, rect);
        }
    }
}
