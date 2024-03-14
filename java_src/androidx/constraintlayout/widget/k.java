package androidx.constraintlayout.widget;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public int[] f2885a = new int[10];

    /* renamed from: b  reason: collision with root package name */
    public int[] f2886b = new int[10];

    /* renamed from: c  reason: collision with root package name */
    public int f2887c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int[] f2888d = new int[10];

    /* renamed from: e  reason: collision with root package name */
    public float[] f2889e = new float[10];

    /* renamed from: f  reason: collision with root package name */
    public int f2890f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int[] f2891g = new int[5];

    /* renamed from: h  reason: collision with root package name */
    public String[] f2892h = new String[5];

    /* renamed from: i  reason: collision with root package name */
    public int f2893i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int[] f2894j = new int[4];

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f2895k = new boolean[4];

    /* renamed from: l  reason: collision with root package name */
    public int f2896l = 0;

    public final void a(float f4, int i4) {
        int i5 = this.f2890f;
        int[] iArr = this.f2888d;
        if (i5 >= iArr.length) {
            this.f2888d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f2889e;
            this.f2889e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f2888d;
        int i6 = this.f2890f;
        iArr2[i6] = i4;
        float[] fArr2 = this.f2889e;
        this.f2890f = i6 + 1;
        fArr2[i6] = f4;
    }

    public final void b(int i4, int i5) {
        int i6 = this.f2887c;
        int[] iArr = this.f2885a;
        if (i6 >= iArr.length) {
            this.f2885a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f2886b;
            this.f2886b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f2885a;
        int i7 = this.f2887c;
        iArr3[i7] = i4;
        int[] iArr4 = this.f2886b;
        this.f2887c = i7 + 1;
        iArr4[i7] = i5;
    }

    public final void c(int i4, String str) {
        int i5 = this.f2893i;
        int[] iArr = this.f2891g;
        if (i5 >= iArr.length) {
            this.f2891g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f2892h;
            this.f2892h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f2891g;
        int i6 = this.f2893i;
        iArr2[i6] = i4;
        String[] strArr2 = this.f2892h;
        this.f2893i = i6 + 1;
        strArr2[i6] = str;
    }

    public final void d(int i4, boolean z4) {
        int i5 = this.f2896l;
        int[] iArr = this.f2894j;
        if (i5 >= iArr.length) {
            this.f2894j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f2895k;
            this.f2895k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f2894j;
        int i6 = this.f2896l;
        iArr2[i6] = i4;
        boolean[] zArr2 = this.f2895k;
        this.f2896l = i6 + 1;
        zArr2[i6] = z4;
    }
}
