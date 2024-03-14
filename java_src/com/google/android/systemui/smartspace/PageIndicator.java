package com.google.android.systemui.smartspace;

import K2.t;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.systemui.shared.R;
import f.C0832a;
/* loaded from: classes.dex */
public class PageIndicator extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    public int f8375d;

    /* renamed from: e  reason: collision with root package name */
    public int f8376e;

    /* renamed from: f  reason: collision with root package name */
    public int f8377f;

    public PageIndicator(Context context) {
        this(context, null);
    }

    public final void a(int i4, boolean z4) {
        if (i4 <= 0) {
            Log.w("PageIndicator", "Total number of pages invalid: " + i4 + ". Assuming 1 page.");
            i4 = 1;
        }
        if (i4 < 2) {
            t.f(this, 8);
            return;
        }
        t.f(this, 0);
        if (i4 != this.f8377f) {
            this.f8377f = i4;
            int i5 = this.f8376e;
            if (i5 < 0) {
                this.f8376e = z4 ? i4 - 1 : 0;
            } else if (i5 >= i4) {
                this.f8376e = z4 ? 0 : i4 - 1;
            }
            int childCount = getChildCount() - this.f8377f;
            for (int i6 = 0; i6 < childCount; i6++) {
                removeViewAt(0);
            }
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.page_indicator_dot_margin);
            int i7 = 0;
            while (i7 < this.f8377f) {
                ImageView imageView = i7 < getChildCount() ? (ImageView) getChildAt(i7) : new ImageView(getContext());
                LinearLayout.LayoutParams layoutParams = i7 < getChildCount() ? (LinearLayout.LayoutParams) imageView.getLayoutParams() : new LinearLayout.LayoutParams(-2, -2);
                if (i7 == 0) {
                    layoutParams.setMarginStart(0);
                } else {
                    layoutParams.setMarginStart(dimensionPixelSize);
                }
                if (i7 == this.f8377f - 1) {
                    layoutParams.setMarginEnd(0);
                } else {
                    layoutParams.setMarginEnd(dimensionPixelSize);
                }
                if (i7 < getChildCount()) {
                    imageView.setLayoutParams(layoutParams);
                } else {
                    Drawable a4 = C0832a.a(R.drawable.page_indicator_dot, getContext());
                    a4.setTint(this.f8375d);
                    imageView.setImageDrawable(a4);
                    addView(imageView, layoutParams);
                }
                imageView.setAlpha(i7 == this.f8376e ? 1.0f : 0.4f);
                i7++;
            }
            setContentDescription(getContext().getString(R.string.accessibility_smartspace_page, 1, Integer.valueOf(this.f8377f)));
        }
    }

    public final void b(float f4, int i4) {
        int i5 = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
        if (!(i5 == 0 && i4 == this.f8376e) && i4 >= 0 && i4 < getChildCount()) {
            ImageView imageView = (ImageView) getChildAt(i4);
            int i6 = i4 + 1;
            ImageView imageView2 = (ImageView) getChildAt(i6);
            if (i5 == 0 || f4 >= 0.99f) {
                int i7 = this.f8376e;
                if (i7 >= 0 && i7 < getChildCount()) {
                    getChildAt(this.f8376e).setAlpha(0.4f);
                }
                this.f8376e = i5 == 0 ? i4 : i6;
            }
            imageView.setAlpha(((1.0f - f4) * 0.6f) + 0.4f);
            if (imageView2 != null) {
                imageView2.setAlpha((0.6f * f4) + 0.4f);
            }
            Context context = getContext();
            Object[] objArr = new Object[2];
            if (f4 >= 0.5d) {
                i6 = i4 + 2;
            }
            objArr[0] = Integer.valueOf(i6);
            objArr[1] = Integer.valueOf(this.f8377f);
            setContentDescription(context.getString(R.string.accessibility_smartspace_page, objArr));
        }
    }

    public PageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PageIndicator(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public PageIndicator(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16842806});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        this.f8375d = color;
        this.f8376e = -1;
        this.f8377f = -1;
    }
}
