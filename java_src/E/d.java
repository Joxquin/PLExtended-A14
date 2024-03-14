package E;

import android.graphics.Path;
import android.util.Log;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public char f333a;

    /* renamed from: b  reason: collision with root package name */
    public final float[] f334b;

    public d(char c4, float[] fArr) {
        this.f333a = c4;
        this.f334b = fArr;
    }

    public static void a(Path path, float f4, float f5, float f6, float f7, float f8, float f9, float f10, boolean z4, boolean z5) {
        double d4;
        double d5;
        double radians = Math.toRadians(f10);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d6 = f4;
        double d7 = f5;
        double d8 = (d7 * sin) + (d6 * cos);
        double d9 = d6;
        double d10 = f8;
        double d11 = d8 / d10;
        double d12 = f9;
        double d13 = ((d7 * cos) + ((-f4) * sin)) / d12;
        double d14 = d7;
        double d15 = f7;
        double d16 = ((d15 * sin) + (f6 * cos)) / d10;
        double d17 = ((d15 * cos) + ((-f6) * sin)) / d12;
        double d18 = d11 - d16;
        double d19 = d13 - d17;
        double d20 = (d11 + d16) / 2.0d;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d19 * d19) + (d18 * d18);
        if (d22 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d23 = (1.0d / d22) - 0.25d;
        if (d23 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d22);
            float sqrt = (float) (Math.sqrt(d22) / 1.99999d);
            a(path, f4, f5, f6, f7, f8 * sqrt, f9 * sqrt, f10, z4, z5);
            return;
        }
        double sqrt2 = Math.sqrt(d23);
        double d24 = d18 * sqrt2;
        double d25 = sqrt2 * d19;
        if (z4 == z5) {
            d4 = d20 - d25;
            d5 = d21 + d24;
        } else {
            d4 = d20 + d25;
            d5 = d21 - d24;
        }
        double atan2 = Math.atan2(d13 - d5, d11 - d4);
        double atan22 = Math.atan2(d17 - d5, d16 - d4) - atan2;
        int i4 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
        if (z5 != (i4 >= 0)) {
            atan22 = i4 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d26 = d4 * d10;
        double d27 = d5 * d12;
        double d28 = (d26 * cos) - (d27 * sin);
        double d29 = (d27 * cos) + (d26 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d30 = -d10;
        double d31 = d30 * cos2;
        double d32 = d12 * sin2;
        double d33 = (d31 * sin3) - (d32 * cos3);
        double d34 = d30 * sin2;
        double d35 = d12 * cos2;
        double d36 = (cos3 * d35) + (sin3 * d34);
        double d37 = d35;
        double d38 = atan22 / ceil;
        int i5 = 0;
        while (i5 < ceil) {
            double d39 = atan2 + d38;
            double sin4 = Math.sin(d39);
            double cos4 = Math.cos(d39);
            double d40 = d38;
            double d41 = (((d10 * cos2) * cos4) + d28) - (d32 * sin4);
            double d42 = d37;
            double d43 = d28;
            double d44 = (d42 * sin4) + (d10 * sin2 * cos4) + d29;
            double d45 = (d31 * sin4) - (d32 * cos4);
            double d46 = (cos4 * d42) + (sin4 * d34);
            double d47 = d39 - atan2;
            double tan = Math.tan(d47 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d47)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d33 * sqrt3) + d9), (float) ((d36 * sqrt3) + d14), (float) (d41 - (sqrt3 * d45)), (float) (d44 - (sqrt3 * d46)), (float) d41, (float) d44);
            i5++;
            atan2 = d39;
            d34 = d34;
            cos2 = cos2;
            ceil = ceil;
            d36 = d46;
            d10 = d10;
            d33 = d45;
            d9 = d41;
            d14 = d44;
            d28 = d43;
            d38 = d40;
            d37 = d42;
        }
    }

    public static void b(d[] dVarArr, Path path) {
        int i4;
        int i5;
        char c4;
        d dVar;
        int i6;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        d[] dVarArr2 = dVarArr;
        int i7 = 6;
        float[] fArr = new float[6];
        char c5 = 'm';
        int i8 = 0;
        char c6 = 'm';
        int i9 = 0;
        while (i9 < dVarArr2.length) {
            d dVar2 = dVarArr2[i9];
            char c7 = dVar2.f333a;
            float f25 = fArr[i8];
            float f26 = fArr[1];
            float f27 = fArr[2];
            float f28 = fArr[3];
            float f29 = fArr[4];
            float f30 = fArr[5];
            switch (c7) {
                case 'A':
                case 'a':
                    i4 = 7;
                    break;
                case 'C':
                case 'c':
                    i4 = i7;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i4 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i4 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f29, f30);
                    f25 = f29;
                    f27 = f25;
                    f26 = f30;
                    f28 = f26;
                default:
                    i4 = 2;
                    break;
            }
            float f31 = f29;
            float f32 = f30;
            float f33 = f25;
            float f34 = f26;
            int i10 = i8;
            while (true) {
                float[] fArr2 = dVar2.f334b;
                if (i10 < fArr2.length) {
                    if (c7 != 'A') {
                        if (c7 != 'C') {
                            if (c7 == 'H') {
                                i5 = i10;
                                c4 = c7;
                                dVar = dVar2;
                                i6 = i9;
                                int i11 = i5 + 0;
                                path.lineTo(fArr2[i11], f34);
                                f33 = fArr2[i11];
                            } else if (c7 == 'Q') {
                                i5 = i10;
                                c4 = c7;
                                dVar = dVar2;
                                i6 = i9;
                                int i12 = i5 + 0;
                                int i13 = i5 + 1;
                                int i14 = i5 + 2;
                                int i15 = i5 + 3;
                                path.quadTo(fArr2[i12], fArr2[i13], fArr2[i14], fArr2[i15]);
                                f4 = fArr2[i12];
                                f5 = fArr2[i13];
                                f33 = fArr2[i14];
                                f34 = fArr2[i15];
                            } else if (c7 == 'V') {
                                i5 = i10;
                                c4 = c7;
                                dVar = dVar2;
                                i6 = i9;
                                int i16 = i5 + 0;
                                path.lineTo(f33, fArr2[i16]);
                                f34 = fArr2[i16];
                            } else if (c7 != 'a') {
                                if (c7 != 'c') {
                                    if (c7 == 'h') {
                                        i5 = i10;
                                        int i17 = i5 + 0;
                                        path.rLineTo(fArr2[i17], 0.0f);
                                        f33 += fArr2[i17];
                                    } else if (c7 != 'q') {
                                        if (c7 != 'v') {
                                            if (c7 != 'L') {
                                                if (c7 == 'M') {
                                                    i5 = i10;
                                                    f15 = fArr2[i5 + 0];
                                                    f16 = fArr2[i5 + 1];
                                                    if (i5 > 0) {
                                                        path.lineTo(f15, f16);
                                                    } else {
                                                        path.moveTo(f15, f16);
                                                        f31 = f15;
                                                        f32 = f16;
                                                    }
                                                } else if (c7 == 'S') {
                                                    i5 = i10;
                                                    float f35 = f34;
                                                    float f36 = f33;
                                                    if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                        f17 = (f35 * 2.0f) - f28;
                                                        f18 = (f36 * 2.0f) - f27;
                                                    } else {
                                                        f18 = f36;
                                                        f17 = f35;
                                                    }
                                                    int i18 = i5 + 0;
                                                    int i19 = i5 + 1;
                                                    int i20 = i5 + 2;
                                                    int i21 = i5 + 3;
                                                    path.cubicTo(f18, f17, fArr2[i18], fArr2[i19], fArr2[i20], fArr2[i21]);
                                                    float f37 = fArr2[i18];
                                                    float f38 = fArr2[i19];
                                                    f12 = fArr2[i20];
                                                    f11 = fArr2[i21];
                                                    f27 = f37;
                                                    f28 = f38;
                                                    f33 = f12;
                                                    f34 = f11;
                                                } else if (c7 == 'T') {
                                                    i5 = i10;
                                                    float f39 = f34;
                                                    float f40 = f33;
                                                    if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                        f19 = (f40 * 2.0f) - f27;
                                                        f20 = (f39 * 2.0f) - f28;
                                                    } else {
                                                        f19 = f40;
                                                        f20 = f39;
                                                    }
                                                    int i22 = i5 + 0;
                                                    int i23 = i5 + 1;
                                                    path.quadTo(f19, f20, fArr2[i22], fArr2[i23]);
                                                    f28 = f20;
                                                    f27 = f19;
                                                    c4 = c7;
                                                    dVar = dVar2;
                                                    i6 = i9;
                                                    f33 = fArr2[i22];
                                                    f34 = fArr2[i23];
                                                } else if (c7 == 'l') {
                                                    i5 = i10;
                                                    f13 = f34;
                                                    int i24 = i5 + 0;
                                                    float f41 = fArr2[i24];
                                                    int i25 = i5 + 1;
                                                    path.rLineTo(f41, fArr2[i25]);
                                                    f33 += fArr2[i24];
                                                    f14 = fArr2[i25];
                                                } else if (c7 == c5) {
                                                    i5 = i10;
                                                    float f42 = fArr2[i5 + 0];
                                                    f33 += f42;
                                                    float f43 = fArr2[i5 + 1];
                                                    f34 += f43;
                                                    if (i5 > 0) {
                                                        path.rLineTo(f42, f43);
                                                    } else {
                                                        path.rMoveTo(f42, f43);
                                                        f32 = f34;
                                                        f31 = f33;
                                                    }
                                                } else if (c7 != 's') {
                                                    if (c7 == 't') {
                                                        if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                            f23 = f33 - f27;
                                                            f24 = f34 - f28;
                                                        } else {
                                                            f24 = 0.0f;
                                                            f23 = 0.0f;
                                                        }
                                                        int i26 = i10 + 0;
                                                        int i27 = i10 + 1;
                                                        path.rQuadTo(f23, f24, fArr2[i26], fArr2[i27]);
                                                        float f44 = f23 + f33;
                                                        float f45 = f24 + f34;
                                                        f33 += fArr2[i26];
                                                        f34 += fArr2[i27];
                                                        f28 = f45;
                                                        f27 = f44;
                                                    }
                                                    i5 = i10;
                                                } else {
                                                    if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                        float f46 = f33 - f27;
                                                        f21 = f34 - f28;
                                                        f22 = f46;
                                                    } else {
                                                        f21 = 0.0f;
                                                        f22 = 0.0f;
                                                    }
                                                    int i28 = i10 + 0;
                                                    int i29 = i10 + 1;
                                                    int i30 = i10 + 2;
                                                    int i31 = i10 + 3;
                                                    i5 = i10;
                                                    f6 = f34;
                                                    float f47 = f33;
                                                    path.rCubicTo(f22, f21, fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                                                    f7 = fArr2[i28] + f47;
                                                    f8 = fArr2[i29] + f6;
                                                    f9 = f47 + fArr2[i30];
                                                    f10 = fArr2[i31];
                                                }
                                                f33 = f31;
                                                f34 = f32;
                                            } else {
                                                i5 = i10;
                                                int i32 = i5 + 0;
                                                int i33 = i5 + 1;
                                                path.lineTo(fArr2[i32], fArr2[i33]);
                                                f15 = fArr2[i32];
                                                f16 = fArr2[i33];
                                            }
                                            f33 = f15;
                                            f34 = f16;
                                        } else {
                                            i5 = i10;
                                            f13 = f34;
                                            int i34 = i5 + 0;
                                            path.rLineTo(0.0f, fArr2[i34]);
                                            f14 = fArr2[i34];
                                        }
                                        f34 = f13 + f14;
                                    } else {
                                        i5 = i10;
                                        f6 = f34;
                                        float f48 = f33;
                                        int i35 = i5 + 0;
                                        float f49 = fArr2[i35];
                                        int i36 = i5 + 1;
                                        int i37 = i5 + 2;
                                        int i38 = i5 + 3;
                                        path.rQuadTo(f49, fArr2[i36], fArr2[i37], fArr2[i38]);
                                        f7 = fArr2[i35] + f48;
                                        f8 = fArr2[i36] + f6;
                                        float f50 = f48 + fArr2[i37];
                                        float f51 = fArr2[i38];
                                        f9 = f50;
                                        f10 = f51;
                                    }
                                    c4 = c7;
                                    dVar = dVar2;
                                    i6 = i9;
                                } else {
                                    i5 = i10;
                                    f6 = f34;
                                    float f52 = f33;
                                    int i39 = i5 + 2;
                                    int i40 = i5 + 3;
                                    int i41 = i5 + 4;
                                    int i42 = i5 + 5;
                                    path.rCubicTo(fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i39], fArr2[i40], fArr2[i41], fArr2[i42]);
                                    f7 = fArr2[i39] + f52;
                                    f8 = fArr2[i40] + f6;
                                    f9 = f52 + fArr2[i41];
                                    f10 = fArr2[i42];
                                }
                                f11 = f6 + f10;
                                f27 = f7;
                                f28 = f8;
                                f12 = f9;
                                f33 = f12;
                                f34 = f11;
                                c4 = c7;
                                dVar = dVar2;
                                i6 = i9;
                            } else {
                                i5 = i10;
                                float f53 = f34;
                                float f54 = f33;
                                int i43 = i5 + 5;
                                int i44 = i5 + 6;
                                c4 = c7;
                                dVar = dVar2;
                                i6 = i9;
                                a(path, f54, f53, fArr2[i43] + f54, fArr2[i44] + f53, fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f, fArr2[i5 + 4] != 0.0f);
                                f33 = f54 + fArr2[i43];
                                f34 = f53 + fArr2[i44];
                            }
                            i10 = i5 + i4;
                            dVar2 = dVar;
                            c6 = c4;
                            c7 = c6;
                            i9 = i6;
                            c5 = 'm';
                            i8 = 0;
                        } else {
                            i5 = i10;
                            c4 = c7;
                            dVar = dVar2;
                            i6 = i9;
                            int i45 = i5 + 2;
                            int i46 = i5 + 3;
                            int i47 = i5 + 4;
                            int i48 = i5 + 5;
                            path.cubicTo(fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i45], fArr2[i46], fArr2[i47], fArr2[i48]);
                            float f55 = fArr2[i47];
                            float f56 = fArr2[i48];
                            f4 = fArr2[i45];
                            f33 = f55;
                            f34 = f56;
                            f5 = fArr2[i46];
                        }
                        f27 = f4;
                        f28 = f5;
                        i10 = i5 + i4;
                        dVar2 = dVar;
                        c6 = c4;
                        c7 = c6;
                        i9 = i6;
                        c5 = 'm';
                        i8 = 0;
                    } else {
                        i5 = i10;
                        c4 = c7;
                        dVar = dVar2;
                        i6 = i9;
                        int i49 = i5 + 5;
                        int i50 = i5 + 6;
                        a(path, f33, f34, fArr2[i49], fArr2[i50], fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f, fArr2[i5 + 4] != 0.0f);
                        f33 = fArr2[i49];
                        f34 = fArr2[i50];
                    }
                    f28 = f34;
                    f27 = f33;
                    i10 = i5 + i4;
                    dVar2 = dVar;
                    c6 = c4;
                    c7 = c6;
                    i9 = i6;
                    c5 = 'm';
                    i8 = 0;
                }
            }
            int i51 = i9;
            int i52 = i8;
            fArr[i52] = f33;
            fArr[1] = f34;
            fArr[2] = f27;
            fArr[3] = f28;
            fArr[4] = f31;
            fArr[5] = f32;
            i9 = i51 + 1;
            i7 = 6;
            c5 = 'm';
            i8 = i52;
            c6 = dVarArr[i51].f333a;
            dVarArr2 = dVarArr;
        }
    }
}
