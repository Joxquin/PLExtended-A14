package com.android.wm.shell.pip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
/* loaded from: classes.dex */
public final class c extends d {

    /* renamed from: b  reason: collision with root package name */
    public final Rect f6350b;

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f6351c = new Matrix();

    /* renamed from: d  reason: collision with root package name */
    public final float[] f6352d = new float[9];

    /* renamed from: e  reason: collision with root package name */
    public Bitmap f6353e;

    public c(Context context, Rect rect, Drawable drawable, int i4) {
        int min = Math.min((int) TypedValue.applyDimension(1, 72.0f, context.getResources().getDisplayMetrics()), i4);
        Rect rect2 = new Rect(rect);
        this.f6350b = rect2;
        this.f6353e = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas();
        canvas.setBitmap(this.f6353e);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16842801});
        try {
            int color = obtainStyledAttributes.getColor(0, 0);
            canvas.drawRGB(Color.red(color), Color.green(color), Color.blue(color));
            obtainStyledAttributes.recycle();
            int i5 = min / 2;
            drawable.setBounds(new Rect(rect2.centerX() - i5, rect2.centerY() - i5, rect2.centerX() + i5, rect2.centerY() + i5));
            drawable.draw(canvas);
            this.f6353e = this.f6353e.copy(Bitmap.Config.HARDWARE, false);
            this.f6354a = new SurfaceControl.Builder(new SurfaceSession()).setCallsite("c").setName("PipContentOverlay").build();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
