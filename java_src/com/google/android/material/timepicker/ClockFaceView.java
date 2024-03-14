package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import i2.C0980a;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClockFaceView extends l implements h {

    /* renamed from: g  reason: collision with root package name */
    public final ClockHandView f8144g;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f8145h;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f8146i;

    /* renamed from: j  reason: collision with root package name */
    public final SparseArray f8147j;

    /* renamed from: k  reason: collision with root package name */
    public final C0740d f8148k;

    /* renamed from: l  reason: collision with root package name */
    public final int[] f8149l;

    /* renamed from: m  reason: collision with root package name */
    public final float[] f8150m;

    /* renamed from: n  reason: collision with root package name */
    public final int f8151n;

    /* renamed from: o  reason: collision with root package name */
    public final int f8152o;

    /* renamed from: p  reason: collision with root package name */
    public final int f8153p;

    /* renamed from: q  reason: collision with root package name */
    public final int f8154q;

    /* renamed from: r  reason: collision with root package name */
    public String[] f8155r;

    /* renamed from: s  reason: collision with root package name */
    public float f8156s;

    /* renamed from: t  reason: collision with root package name */
    public final ColorStateList f8157t;

    public ClockFaceView(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.timepicker.h
    public final void i(float f4, boolean z4) {
        if (Math.abs(this.f8156s - f4) > 0.001f) {
            this.f8156s = f4;
            s();
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.f8155r.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        s();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.f8154q / Math.max(Math.max(this.f8152o / displayMetrics.heightPixels, this.f8153p / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    public final void s() {
        RectF rectF = this.f8144g.f8169n;
        for (int i4 = 0; i4 < this.f8147j.size(); i4++) {
            TextView textView = (TextView) this.f8147j.get(i4);
            if (textView != null) {
                textView.getDrawingRect(this.f8145h);
                offsetDescendantRectToMyCoords(textView, this.f8145h);
                textView.setSelected(rectF.contains(this.f8145h.centerX(), this.f8145h.centerY()));
                this.f8146i.set(this.f8145h);
                this.f8146i.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                textView.getPaint().setShader(!RectF.intersects(rectF, this.f8146i) ? null : new RadialGradient(rectF.centerX() - this.f8146i.left, rectF.centerY() - this.f8146i.top, 0.5f * rectF.width(), this.f8149l, this.f8150m, Shader.TileMode.CLAMP));
                textView.invalidate();
            }
        }
    }

    public final void t(String[] strArr, int i4) {
        this.f8155r = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f8147j.size();
        for (int i5 = 0; i5 < Math.max(this.f8155r.length, size); i5++) {
            TextView textView = (TextView) this.f8147j.get(i5);
            if (i5 >= this.f8155r.length) {
                removeView(textView);
                this.f8147j.remove(i5);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f8147j.put(i5, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f8155r[i5]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i5));
                J.h(textView, this.f8148k);
                textView.setTextColor(this.f8157t);
                if (i4 != 0) {
                    textView.setContentDescription(getResources().getString(i4, this.f8155r[i5]));
                }
            }
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f8145h = new Rect();
        this.f8146i = new RectF();
        this.f8147j = new SparseArray();
        this.f8150m = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9629e, i4, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList a4 = A2.d.a(context, obtainStyledAttributes, 1);
        this.f8157t = a4;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f8144g = clockHandView;
        this.f8151n = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = a4.getColorForState(new int[]{16842913}, a4.getDefaultColor());
        this.f8149l = new int[]{colorForState, colorForState, a4.getDefaultColor()};
        ((ArrayList) clockHandView.f8165j).add(this);
        int defaultColor = B.c.a(R.color.material_timepicker_clockface, context).getDefaultColor();
        ColorStateList a5 = A2.d.a(context, obtainStyledAttributes, 0);
        setBackgroundColor(a5 != null ? a5.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC0739c(this));
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f8148k = new C0740d(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        t(strArr, 0);
        this.f8152o = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f8153p = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f8154q = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
