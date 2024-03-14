package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public final class r extends d {

    /* renamed from: A0  reason: collision with root package name */
    public final float f3005A0;

    /* renamed from: B0  reason: collision with root package name */
    public final float f3006B0;

    /* renamed from: C0  reason: collision with root package name */
    public final float f3007C0;

    /* renamed from: D0  reason: collision with root package name */
    public final float f3008D0;

    /* renamed from: r0  reason: collision with root package name */
    public final float f3009r0;

    /* renamed from: s0  reason: collision with root package name */
    public final boolean f3010s0;

    /* renamed from: t0  reason: collision with root package name */
    public final float f3011t0;

    /* renamed from: u0  reason: collision with root package name */
    public final float f3012u0;

    /* renamed from: v0  reason: collision with root package name */
    public final float f3013v0;

    /* renamed from: w0  reason: collision with root package name */
    public final float f3014w0;

    /* renamed from: x0  reason: collision with root package name */
    public final float f3015x0;

    /* renamed from: y0  reason: collision with root package name */
    public final float f3016y0;

    /* renamed from: z0  reason: collision with root package name */
    public final float f3017z0;

    public r(int i4) {
        super(-2, i4);
        this.f3009r0 = 1.0f;
        this.f3010s0 = false;
        this.f3011t0 = 0.0f;
        this.f3012u0 = 0.0f;
        this.f3013v0 = 0.0f;
        this.f3014w0 = 0.0f;
        this.f3015x0 = 1.0f;
        this.f3016y0 = 1.0f;
        this.f3017z0 = 0.0f;
        this.f3005A0 = 0.0f;
        this.f3006B0 = 0.0f;
        this.f3007C0 = 0.0f;
        this.f3008D0 = 0.0f;
    }

    public r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3009r0 = 1.0f;
        this.f3010s0 = false;
        this.f3011t0 = 0.0f;
        this.f3012u0 = 0.0f;
        this.f3013v0 = 0.0f;
        this.f3014w0 = 0.0f;
        this.f3015x0 = 1.0f;
        this.f3016y0 = 1.0f;
        this.f3017z0 = 0.0f;
        this.f3005A0 = 0.0f;
        this.f3006B0 = 0.0f;
        this.f3007C0 = 0.0f;
        this.f3008D0 = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w.f3023d);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 15) {
                this.f3009r0 = obtainStyledAttributes.getFloat(index, this.f3009r0);
            } else if (index == 28) {
                this.f3011t0 = obtainStyledAttributes.getFloat(index, this.f3011t0);
                this.f3010s0 = true;
            } else if (index == 23) {
                this.f3013v0 = obtainStyledAttributes.getFloat(index, this.f3013v0);
            } else if (index == 24) {
                this.f3014w0 = obtainStyledAttributes.getFloat(index, this.f3014w0);
            } else if (index == 22) {
                this.f3012u0 = obtainStyledAttributes.getFloat(index, this.f3012u0);
            } else if (index == 20) {
                this.f3015x0 = obtainStyledAttributes.getFloat(index, this.f3015x0);
            } else if (index == 21) {
                this.f3016y0 = obtainStyledAttributes.getFloat(index, this.f3016y0);
            } else if (index == 16) {
                this.f3017z0 = obtainStyledAttributes.getFloat(index, this.f3017z0);
            } else if (index == 17) {
                this.f3005A0 = obtainStyledAttributes.getFloat(index, this.f3005A0);
            } else if (index == 18) {
                this.f3006B0 = obtainStyledAttributes.getFloat(index, this.f3006B0);
            } else if (index == 19) {
                this.f3007C0 = obtainStyledAttributes.getFloat(index, this.f3007C0);
            } else if (index == 27) {
                this.f3008D0 = obtainStyledAttributes.getFloat(index, this.f3008D0);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
