package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.r2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0693r2 {

    /* renamed from: n  reason: collision with root package name */
    public static final Path f7159n = new Path();

    /* renamed from: o  reason: collision with root package name */
    public static final RectF f7160o = new RectF();

    /* renamed from: a  reason: collision with root package name */
    public final int f7161a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7162b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f7163c;

    /* renamed from: e  reason: collision with root package name */
    public final int f7165e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7166f;

    /* renamed from: g  reason: collision with root package name */
    public final float f7167g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7168h;

    /* renamed from: j  reason: collision with root package name */
    public float[] f7170j;

    /* renamed from: k  reason: collision with root package name */
    public int f7171k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7172l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7173m;

    /* renamed from: d  reason: collision with root package name */
    public final RectF f7164d = new RectF();

    /* renamed from: i  reason: collision with root package name */
    public final Paint f7169i = new Paint(1);

    public C0693r2(Context context, int i4, boolean z4, boolean z5) {
        this.f7163c = context;
        this.f7168h = i4;
        this.f7171k = i4;
        this.f7165e = GraphicsUtils.getAttrColor(R.attr.focusHighlight, context);
        this.f7166f = i4 == 0 ? 0 : GraphicsUtils.getAttrColor(R.attr.groupHighlight, context);
        this.f7173m = z4;
        this.f7172l = z5;
        this.f7161a = context.getResources().getDimensionPixelSize(R.dimen.search_group_radius);
        this.f7162b = context.getResources().getDimensionPixelSize(R.dimen.search_result_radius);
        this.f7167g = context.getResources().getDimensionPixelSize(R.dimen.search_decoration_padding);
        a();
    }

    public final void a() {
        float[] fArr = new float[8];
        boolean z4 = this.f7173m;
        int i4 = this.f7161a;
        int i5 = this.f7162b;
        fArr[0] = z4 ? i4 : i5;
        fArr[1] = z4 ? i4 : i5;
        fArr[2] = z4 ? i4 : i5;
        fArr[3] = z4 ? i4 : i5;
        boolean z5 = this.f7172l;
        fArr[4] = z5 ? i4 : i5;
        fArr[5] = z5 ? i4 : i5;
        fArr[6] = z5 ? i4 : i5;
        fArr[7] = z5 ? i4 : i5;
        this.f7170j = fArr;
    }

    public final void b(Canvas canvas) {
        Path path = f7159n;
        path.reset();
        RectF rectF = f7160o;
        RectF rectF2 = this.f7164d;
        float f4 = rectF2.left;
        float f5 = this.f7167g;
        rectF.set(f4 + f5, rectF2.top + f5, rectF2.right - f5, rectF2.bottom - f5);
        path.addRoundRect(rectF, this.f7170j, Path.Direction.CW);
        canvas.drawPath(path, this.f7169i);
    }

    public final void c(Canvas canvas, View view, boolean z4) {
        Paint paint = this.f7169i;
        if (z4) {
            paint.setColor(this.f7165e);
            paint.setAlpha(255);
        } else {
            paint.setColor(this.f7166f);
            paint.setAlpha(this.f7171k);
        }
        this.f7164d.set(view.getLeft(), view.getY(), view.getRight(), view.getY() + ((int) (view.getScaleY() * view.getHeight())));
        b(canvas);
    }
}
