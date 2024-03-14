package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: n  reason: collision with root package name */
    public static final SparseIntArray f2985n;

    /* renamed from: a  reason: collision with root package name */
    public float f2986a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    public float f2987b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    public float f2988c = 0.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f2989d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    public float f2990e = 1.0f;

    /* renamed from: f  reason: collision with root package name */
    public float f2991f = Float.NaN;

    /* renamed from: g  reason: collision with root package name */
    public float f2992g = Float.NaN;

    /* renamed from: h  reason: collision with root package name */
    public int f2993h = -1;

    /* renamed from: i  reason: collision with root package name */
    public float f2994i = 0.0f;

    /* renamed from: j  reason: collision with root package name */
    public float f2995j = 0.0f;

    /* renamed from: k  reason: collision with root package name */
    public float f2996k = 0.0f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f2997l = false;

    /* renamed from: m  reason: collision with root package name */
    public float f2998m = 0.0f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2985n = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
        sparseIntArray.append(11, 12);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w.f3029j);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            switch (f2985n.get(index)) {
                case 1:
                    this.f2986a = obtainStyledAttributes.getFloat(index, this.f2986a);
                    break;
                case 2:
                    this.f2987b = obtainStyledAttributes.getFloat(index, this.f2987b);
                    break;
                case 3:
                    this.f2988c = obtainStyledAttributes.getFloat(index, this.f2988c);
                    break;
                case 4:
                    this.f2989d = obtainStyledAttributes.getFloat(index, this.f2989d);
                    break;
                case 5:
                    this.f2990e = obtainStyledAttributes.getFloat(index, this.f2990e);
                    break;
                case 6:
                    this.f2991f = obtainStyledAttributes.getDimension(index, this.f2991f);
                    break;
                case 7:
                    this.f2992g = obtainStyledAttributes.getDimension(index, this.f2992g);
                    break;
                case 8:
                    this.f2994i = obtainStyledAttributes.getDimension(index, this.f2994i);
                    break;
                case 9:
                    this.f2995j = obtainStyledAttributes.getDimension(index, this.f2995j);
                    break;
                case 10:
                    this.f2996k = obtainStyledAttributes.getDimension(index, this.f2996k);
                    break;
                case 11:
                    this.f2997l = true;
                    this.f2998m = obtainStyledAttributes.getDimension(index, this.f2998m);
                    break;
                case 12:
                    this.f2993h = q.h(obtainStyledAttributes, index, this.f2993h);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
    }
}
