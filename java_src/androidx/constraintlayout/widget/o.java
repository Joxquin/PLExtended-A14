package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public int f2981a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f2982b = 0;

    /* renamed from: c  reason: collision with root package name */
    public float f2983c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f2984d = Float.NaN;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w.f3027h);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 1) {
                this.f2983c = obtainStyledAttributes.getFloat(index, this.f2983c);
            } else if (index == 0) {
                int i5 = obtainStyledAttributes.getInt(index, this.f2981a);
                this.f2981a = i5;
                this.f2981a = q.f2999d[i5];
            } else if (index == 4) {
                this.f2982b = obtainStyledAttributes.getInt(index, this.f2982b);
            } else if (index == 3) {
                this.f2984d = obtainStyledAttributes.getFloat(index, this.f2984d);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
