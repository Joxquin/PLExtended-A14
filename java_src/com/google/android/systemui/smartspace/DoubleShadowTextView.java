package com.google.android.systemui.smartspace;

import E.a;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DoubleShadowTextView extends TextView {

    /* renamed from: d  reason: collision with root package name */
    public boolean f8353d;

    /* renamed from: e  reason: collision with root package name */
    public final float f8354e;

    /* renamed from: f  reason: collision with root package name */
    public final int f8355f;

    /* renamed from: g  reason: collision with root package name */
    public final float f8356g;

    /* renamed from: h  reason: collision with root package name */
    public final float f8357h;

    /* renamed from: i  reason: collision with root package name */
    public final float f8358i;

    /* renamed from: j  reason: collision with root package name */
    public final int f8359j;

    public DoubleShadowTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (!this.f8353d) {
            getPaint().clearShadowLayer();
            super.onDraw(canvas);
            return;
        }
        getPaint().setShadowLayer(this.f8354e, 0.0f, 0.0f, this.f8355f);
        super.onDraw(canvas);
        canvas.save();
        canvas.clipRect(getScrollX(), getExtendedPaddingTop() + getScrollY(), getWidth() + getScrollX(), getHeight() + getScrollY());
        getPaint().setShadowLayer(this.f8356g, this.f8357h, this.f8358i, this.f8359j);
        super.onDraw(canvas);
        canvas.restore();
    }

    @Override // android.widget.TextView
    public final void setTextColor(int i4) {
        super.setTextColor(i4);
        this.f8353d = a.f(i4) > 0.5d;
    }

    public DoubleShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DoubleShadowTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f8353d = a.f(getCurrentTextColor()) > 0.5d;
        this.f8356g = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_radius);
        this.f8357h = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dx);
        this.f8358i = context.getResources().getDimensionPixelSize(R.dimen.key_text_shadow_dy);
        this.f8359j = context.getResources().getColor(R.color.key_text_shadow_color);
        this.f8354e = context.getResources().getDimensionPixelSize(R.dimen.ambient_text_shadow_radius);
        this.f8355f = context.getResources().getColor(R.color.ambient_text_shadow_color);
    }
}
