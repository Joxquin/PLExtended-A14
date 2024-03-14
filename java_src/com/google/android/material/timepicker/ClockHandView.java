package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import i2.C0980a;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClockHandView extends View {

    /* renamed from: u  reason: collision with root package name */
    public static final /* synthetic */ int f8158u = 0;

    /* renamed from: d  reason: collision with root package name */
    public ValueAnimator f8159d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8160e;

    /* renamed from: f  reason: collision with root package name */
    public float f8161f;

    /* renamed from: g  reason: collision with root package name */
    public float f8162g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8163h;

    /* renamed from: i  reason: collision with root package name */
    public final int f8164i;

    /* renamed from: j  reason: collision with root package name */
    public final List f8165j;

    /* renamed from: k  reason: collision with root package name */
    public final int f8166k;

    /* renamed from: l  reason: collision with root package name */
    public final float f8167l;

    /* renamed from: m  reason: collision with root package name */
    public final Paint f8168m;

    /* renamed from: n  reason: collision with root package name */
    public final RectF f8169n;

    /* renamed from: o  reason: collision with root package name */
    public final int f8170o;

    /* renamed from: p  reason: collision with root package name */
    public float f8171p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f8172q;

    /* renamed from: r  reason: collision with root package name */
    public g f8173r;

    /* renamed from: s  reason: collision with root package name */
    public double f8174s;

    /* renamed from: t  reason: collision with root package name */
    public int f8175t;

    public ClockHandView(Context context) {
        this(context, null);
    }

    public final int a(float f4, float f5) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f5 - (getHeight() / 2), f4 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    public final void b(float f4, boolean z4) {
        ValueAnimator valueAnimator = this.f8159d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z4) {
            c(f4, false);
            return;
        }
        float f5 = this.f8171p;
        if (Math.abs(f5 - f4) > 180.0f) {
            if (f5 > 180.0f && f4 < 180.0f) {
                f4 += 360.0f;
            }
            if (f5 < 180.0f && f4 > 180.0f) {
                f5 += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(f5), Float.valueOf(f4));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        this.f8159d = ofFloat;
        ofFloat.setDuration(200L);
        this.f8159d.addUpdateListener(new e(this));
        this.f8159d.addListener(new f());
        this.f8159d.start();
    }

    public final void c(float f4, boolean z4) {
        float f5 = f4 % 360.0f;
        this.f8171p = f5;
        this.f8174s = Math.toRadians(f5 - 90.0f);
        float cos = (this.f8175t * ((float) Math.cos(this.f8174s))) + (getWidth() / 2);
        float sin = (this.f8175t * ((float) Math.sin(this.f8174s))) + (getHeight() / 2);
        RectF rectF = this.f8169n;
        int i4 = this.f8166k;
        rectF.set(cos - i4, sin - i4, cos + i4, sin + i4);
        for (h hVar : this.f8165j) {
            hVar.i(f5, z4);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width2 = getWidth() / 2;
        float f4 = height;
        this.f8168m.setStrokeWidth(0.0f);
        canvas.drawCircle((this.f8175t * ((float) Math.cos(this.f8174s))) + width2, (this.f8175t * ((float) Math.sin(this.f8174s))) + f4, this.f8166k, this.f8168m);
        double sin = Math.sin(this.f8174s);
        double cos = Math.cos(this.f8174s);
        this.f8168m.setStrokeWidth(this.f8170o);
        canvas.drawLine(width2, f4, width + ((int) (cos * r6)), height + ((int) (r6 * sin)), this.f8168m);
        canvas.drawCircle(width2, f4, this.f8167l, this.f8168m);
    }

    @Override // android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        b(this.f8171p, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f8165j = new ArrayList();
        Paint paint = new Paint();
        this.f8168m = paint;
        this.f8169n = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9630f, i4, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f8175t = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f8166k = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f8170o = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f8167l = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f, false);
        this.f8164i = ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.o(this, 2);
        obtainStyledAttributes.recycle();
    }
}
