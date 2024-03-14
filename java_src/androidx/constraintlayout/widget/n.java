package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import u.C1408a;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: j  reason: collision with root package name */
    public static final SparseIntArray f2971j;

    /* renamed from: a  reason: collision with root package name */
    public int f2972a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f2973b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f2974c = -1;

    /* renamed from: d  reason: collision with root package name */
    public float f2975d = Float.NaN;

    /* renamed from: e  reason: collision with root package name */
    public float f2976e = Float.NaN;

    /* renamed from: f  reason: collision with root package name */
    public float f2977f = Float.NaN;

    /* renamed from: g  reason: collision with root package name */
    public int f2978g = -1;

    /* renamed from: h  reason: collision with root package name */
    public String f2979h = null;

    /* renamed from: i  reason: collision with root package name */
    public int f2980i = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2971j = sparseIntArray;
        sparseIntArray.append(3, 1);
        sparseIntArray.append(5, 2);
        sparseIntArray.append(9, 3);
        sparseIntArray.append(2, 4);
        sparseIntArray.append(1, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(4, 7);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(7, 9);
        sparseIntArray.append(6, 10);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w.f3026g);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            switch (f2971j.get(index)) {
                case 1:
                    this.f2976e = obtainStyledAttributes.getFloat(index, this.f2976e);
                    break;
                case 2:
                    this.f2974c = obtainStyledAttributes.getInt(index, this.f2974c);
                    break;
                case 3:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = C1408a.f12368a[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    obtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f2972a = q.h(obtainStyledAttributes, index, this.f2972a);
                    break;
                case 6:
                    this.f2973b = obtainStyledAttributes.getInteger(index, this.f2973b);
                    break;
                case 7:
                    this.f2975d = obtainStyledAttributes.getFloat(index, this.f2975d);
                    break;
                case 8:
                    this.f2978g = obtainStyledAttributes.getInteger(index, this.f2978g);
                    break;
                case 9:
                    this.f2977f = obtainStyledAttributes.getFloat(index, this.f2977f);
                    break;
                case 10:
                    int i5 = obtainStyledAttributes.peekValue(index).type;
                    if (i5 == 1) {
                        this.f2980i = obtainStyledAttributes.getResourceId(index, -1);
                        break;
                    } else if (i5 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f2979h = string;
                        if (string.indexOf("/") > 0) {
                            this.f2980i = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        obtainStyledAttributes.getInteger(index, this.f2980i);
                        break;
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
