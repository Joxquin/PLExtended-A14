package k;

import android.content.Context;
import android.graphics.RectF;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: k.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1146k0 {

    /* renamed from: k  reason: collision with root package name */
    public static final RectF f10906k = new RectF();

    /* renamed from: l  reason: collision with root package name */
    public static final ConcurrentHashMap f10907l = new ConcurrentHashMap();

    /* renamed from: m  reason: collision with root package name */
    public static final ConcurrentHashMap f10908m = new ConcurrentHashMap();

    /* renamed from: h  reason: collision with root package name */
    public final TextView f10916h;

    /* renamed from: i  reason: collision with root package name */
    public final Context f10917i;

    /* renamed from: a  reason: collision with root package name */
    public int f10909a = 0;

    /* renamed from: b  reason: collision with root package name */
    public boolean f10910b = false;

    /* renamed from: c  reason: collision with root package name */
    public float f10911c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f10912d = -1.0f;

    /* renamed from: e  reason: collision with root package name */
    public float f10913e = -1.0f;

    /* renamed from: f  reason: collision with root package name */
    public int[] f10914f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    public boolean f10915g = false;

    /* renamed from: j  reason: collision with root package name */
    public final C1142i0 f10918j = new C1142i0();

    public C1146k0(TextView textView) {
        this.f10916h = textView;
        this.f10917i = textView.getContext();
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i4 : iArr) {
            if (i4 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i4)) < 0) {
                arrayList.add(Integer.valueOf(i4));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i5 = 0; i5 < size; i5++) {
            iArr2[i5] = ((Integer) arrayList.get(i5)).intValue();
        }
        return iArr2;
    }

    public final boolean b() {
        if (d() && this.f10909a == 1) {
            if (!this.f10915g || this.f10914f.length == 0) {
                int floor = ((int) Math.floor((this.f10913e - this.f10912d) / this.f10911c)) + 1;
                int[] iArr = new int[floor];
                for (int i4 = 0; i4 < floor; i4++) {
                    iArr[i4] = Math.round((i4 * this.f10911c) + this.f10912d);
                }
                this.f10914f = a(iArr);
            }
            this.f10910b = true;
        } else {
            this.f10910b = false;
        }
        return this.f10910b;
    }

    public final boolean c() {
        int[] iArr = this.f10914f;
        int length = iArr.length;
        boolean z4 = length > 0;
        this.f10915g = z4;
        if (z4) {
            this.f10909a = 1;
            this.f10912d = iArr[0];
            this.f10913e = iArr[length - 1];
            this.f10911c = -1.0f;
        }
        return z4;
    }

    public final boolean d() {
        return !(this.f10916h instanceof C1119C);
    }

    public final void e(float f4, float f5, float f6) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f4 + "px) is less or equal to (0px)");
        } else if (f5 <= f4) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f5 + "px) is less or equal to minimum auto-size text size (" + f4 + "px)");
        } else if (f6 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f6 + "px) is less or equal to (0px)");
        } else {
            this.f10909a = 1;
            this.f10912d = f4;
            this.f10913e = f5;
            this.f10911c = f6;
            this.f10915g = false;
        }
    }
}
