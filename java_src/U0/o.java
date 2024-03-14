package u0;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.util.ArrayList;
import java.util.Arrays;
import r0.C1373d;
/* loaded from: classes.dex */
public final class o implements L {

    /* renamed from: a  reason: collision with root package name */
    public int f12410a;

    public o(int i4) {
        this.f12410a = i4;
    }

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        int i4;
        C1373d c1373d;
        int i5;
        boolean z4;
        int i6;
        int green;
        int blue;
        int argb;
        int i7;
        ArrayList arrayList = new ArrayList();
        int i8 = 1;
        boolean z5 = aVar.n() == JsonReader$Token.BEGIN_ARRAY;
        if (z5) {
            aVar.a();
        }
        while (aVar.h()) {
            arrayList.add(Float.valueOf((float) aVar.j()));
        }
        int i9 = 4;
        int i10 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.f12410a = 2;
        }
        if (z5) {
            aVar.c();
        }
        if (this.f12410a == -1) {
            this.f12410a = arrayList.size() / 4;
        }
        int i11 = this.f12410a;
        float[] fArr = new float[i11];
        int[] iArr = new int[i11];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i4 = this.f12410a * i9;
            if (i12 >= i4) {
                break;
            }
            int i15 = i12 / 4;
            double floatValue = ((Float) arrayList.get(i12)).floatValue();
            int i16 = i12 % 4;
            if (i16 == 0) {
                if (i15 > 0) {
                    float f5 = (float) floatValue;
                    if (fArr[i15 - 1] >= f5) {
                        fArr[i15] = f5 + 0.01f;
                    }
                }
                fArr[i15] = (float) floatValue;
            } else if (i16 == i8) {
                i13 = (int) (floatValue * 255.0d);
            } else if (i16 == 2) {
                i14 = (int) (floatValue * 255.0d);
            } else if (i16 == 3) {
                iArr[i15] = Color.argb(255, i13, i14, (int) (floatValue * 255.0d));
            }
            i12++;
            i8 = 1;
            i9 = 4;
        }
        C1373d c1373d2 = new C1373d(fArr, iArr);
        if (arrayList.size() <= i4) {
            return c1373d2;
        }
        int size = (arrayList.size() - i4) / 2;
        float[] fArr2 = new float[size];
        float[] fArr3 = new float[size];
        int i17 = 0;
        while (i4 < arrayList.size()) {
            if (i4 % 2 == 0) {
                fArr2[i17] = ((Float) arrayList.get(i4)).floatValue();
            } else {
                fArr3[i17] = ((Float) arrayList.get(i4)).floatValue();
                i17++;
            }
            i4++;
        }
        float[] fArr4 = c1373d2.f12074a;
        if (fArr4.length == 0) {
            fArr4 = fArr2;
        } else if (size != 0) {
            int length = fArr4.length + size;
            float[] fArr5 = new float[length];
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            for (int i21 = 0; i21 < length; i21++) {
                float f6 = i19 < fArr4.length ? fArr4[i19] : Float.NaN;
                float f7 = i20 < size ? fArr2[i20] : Float.NaN;
                if (Float.isNaN(f7) || f6 < f7) {
                    fArr5[i21] = f6;
                    i19++;
                } else if (Float.isNaN(f6) || f7 < f6) {
                    fArr5[i21] = f7;
                    i20++;
                } else {
                    fArr5[i21] = f6;
                    i19++;
                    i20++;
                    i18++;
                }
            }
            fArr4 = i18 == 0 ? fArr5 : Arrays.copyOf(fArr5, length - i18);
        }
        int length2 = fArr4.length;
        int[] iArr2 = new int[length2];
        int i22 = 0;
        while (i22 < length2) {
            float f8 = fArr4[i22];
            int binarySearch = Arrays.binarySearch(fArr, f8);
            int binarySearch2 = Arrays.binarySearch(fArr2, f8);
            int[] iArr3 = c1373d2.f12075b;
            if (binarySearch < 0 || binarySearch2 > 0) {
                if (binarySearch2 < 0) {
                    binarySearch2 = -(binarySearch2 + 1);
                }
                float f9 = fArr3[binarySearch2];
                if (iArr3.length >= 2 && f8 != fArr[0]) {
                    for (int i23 = 1; i23 < i11; i23++) {
                        float f10 = fArr[i23];
                        if (f10 >= f8 || i23 == i11 - 1) {
                            int i24 = i23 - 1;
                            float f11 = fArr[i24];
                            float f12 = (f8 - f11) / (f10 - f11);
                            int i25 = iArr3[i23];
                            int i26 = iArr3[i24];
                            int red = Color.red(i26);
                            int red2 = Color.red(i25);
                            PointF pointF = w0.f.f12733a;
                            c1373d = c1373d2;
                            i5 = i11;
                            i6 = Color.argb((int) (f9 * 255.0f), (int) (((red2 - red) * f12) + red), (int) (((Color.green(i25) - green) * f12) + Color.green(i26)), (int) ((f12 * (Color.blue(i25) - blue)) + Color.blue(i26)));
                            z4 = false;
                        }
                    }
                    throw new IllegalArgumentException("Unreachable code.");
                }
                c1373d = c1373d2;
                i5 = i11;
                z4 = false;
                i6 = iArr3[0];
                iArr2[i22] = i6;
            } else {
                int i27 = iArr3[binarySearch];
                if (size >= i10 && f8 > fArr2[0]) {
                    for (int i28 = 1; i28 < size; i28++) {
                        float f13 = fArr2[i28];
                        int i29 = (f13 > f8 ? 1 : (f13 == f8 ? 0 : -1));
                        if (i29 >= 0 || i28 == size - 1) {
                            if (i29 <= 0) {
                                i7 = (int) (fArr3[i28] * 255.0f);
                            } else {
                                int i30 = i28 - 1;
                                float f14 = fArr2[i30];
                                float f15 = (f8 - f14) / (f13 - f14);
                                float f16 = fArr3[i30];
                                float f17 = fArr3[i28];
                                PointF pointF2 = w0.f.f12733a;
                                i7 = (int) ((((f17 - f16) * f15) + f16) * 255.0f);
                            }
                            argb = Color.argb(i7, Color.red(i27), Color.green(i27), Color.blue(i27));
                        }
                    }
                    throw new IllegalArgumentException("Unreachable code.");
                }
                argb = Color.argb((int) (fArr3[0] * 255.0f), Color.red(i27), Color.green(i27), Color.blue(i27));
                iArr2[i22] = argb;
                c1373d = c1373d2;
                i5 = i11;
                z4 = false;
            }
            i22++;
            i11 = i5;
            i10 = 2;
            c1373d2 = c1373d;
        }
        return new C1373d(fArr4, iArr2);
    }
}
