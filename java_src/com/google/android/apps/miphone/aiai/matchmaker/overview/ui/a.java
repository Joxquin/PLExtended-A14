package com.google.android.apps.miphone.aiai.matchmaker.overview.ui;

import L1.C0060o;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class a extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public final Paint f6432d;

    /* renamed from: e  reason: collision with root package name */
    public final Paint f6433e;

    /* renamed from: f  reason: collision with root package name */
    public final Paint f6434f;

    /* renamed from: g  reason: collision with root package name */
    public final Paint f6435g;

    /* renamed from: h  reason: collision with root package name */
    public final Paint f6436h;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f6437i;

    /* renamed from: j  reason: collision with root package name */
    public final float f6438j;

    /* renamed from: k  reason: collision with root package name */
    public final FrameLayout f6439k;

    /* renamed from: l  reason: collision with root package name */
    public final DebugDisplay$DebugLevel f6440l;

    /* renamed from: m  reason: collision with root package name */
    public C0060o f6441m;

    public a(Context context, FrameLayout frameLayout) {
        super(context);
        this.f6437i = new RectF();
        this.f6440l = DebugDisplay$DebugLevel.NONE;
        Paint paint = new Paint();
        this.f6436h = paint;
        paint.setColor(-16711936);
        paint.setStrokeWidth(2.0f);
        paint.setStyle(Paint.Style.STROKE);
        this.f6434f = a(-16776961);
        this.f6435g = a(-65536);
        Paint paint2 = new Paint();
        this.f6433e = paint2;
        paint2.setColor(-65536);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setAlpha(150);
        this.f6432d = a(-1);
        this.f6438j = TypedValue.applyDimension(1, 5.0f, context.getResources().getDisplayMetrics());
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f6439k = frameLayout;
    }

    public static Paint a(int i4) {
        Paint paint = new Paint(65);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i4);
        paint.setTextAlign(Paint.Align.LEFT);
        paint.setTextSize(30);
        return paint;
    }

    public final void b(FrameLayout frameLayout, RectF rectF, String str, Paint paint, Paint paint2) {
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout.addView(frameLayout2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) rectF.width(), (int) rectF.height());
        layoutParams.leftMargin = (int) rectF.left;
        layoutParams.topMargin = (int) rectF.top;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout2.setAlpha(paint2.getAlpha() / 255.0f);
        frameLayout2.setBackgroundColor(paint2.getColor());
        TextView textView = new TextView(getContext());
        frameLayout2.addView(textView);
        textView.setText(str);
        textView.setTextSize(7.0f);
        textView.setAlpha(paint.getAlpha() / 255.0f);
        textView.setTextColor(paint.getColor());
    }
}
