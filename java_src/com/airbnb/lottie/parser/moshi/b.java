package com.airbnb.lottie.parser.moshi;

import java.io.EOFException;
import okio.ByteString;
import v0.C1430a;
import x3.c;
import x3.k;
/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: o  reason: collision with root package name */
    public static final ByteString f4388o = ByteString.a("'\\");

    /* renamed from: p  reason: collision with root package name */
    public static final ByteString f4389p = ByteString.a("\"\\");

    /* renamed from: q  reason: collision with root package name */
    public static final ByteString f4390q = ByteString.a("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: i  reason: collision with root package name */
    public final c f4391i;

    /* renamed from: j  reason: collision with root package name */
    public final x3.b f4392j;

    /* renamed from: k  reason: collision with root package name */
    public int f4393k = 0;

    /* renamed from: l  reason: collision with root package name */
    public long f4394l;

    /* renamed from: m  reason: collision with root package name */
    public int f4395m;

    /* renamed from: n  reason: collision with root package name */
    public String f4396n;

    static {
        ByteString.a("\n\r");
        ByteString.a("*/");
    }

    public b(k kVar) {
        this.f4391i = kVar;
        this.f4392j = kVar.f12906e;
        o(6);
    }

    public final boolean A(int i4) {
        if (i4 == 9 || i4 == 10 || i4 == 12 || i4 == 13 || i4 == 32) {
            return false;
        }
        if (i4 != 35) {
            if (i4 == 44) {
                return false;
            }
            if (i4 != 47 && i4 != 61) {
                if (i4 == 123 || i4 == 125 || i4 == 58) {
                    return false;
                }
                if (i4 != 59) {
                    switch (i4) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        x();
        throw null;
    }

    public final String B() {
        String str;
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 14) {
            str = E();
        } else if (i4 == 13) {
            str = D(f4389p);
        } else if (i4 == 12) {
            str = D(f4388o);
        } else if (i4 != 15) {
            throw new JsonDataException("Expected a name but was " + n() + " at path " + e());
        } else {
            str = this.f4396n;
        }
        this.f4393k = 0;
        this.f4386f[this.f4384d - 1] = str;
        return str;
    }

    public final int C(boolean z4) {
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            if (!this.f4391i.f(i5)) {
                if (z4) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            byte a4 = this.f4392j.a(i4);
            if (a4 != 10 && a4 != 32 && a4 != 13 && a4 != 9) {
                this.f4392j.j(i5 - 1);
                if (a4 == 47) {
                    if (this.f4391i.f(2L)) {
                        x();
                        throw null;
                    }
                    return a4;
                } else if (a4 != 35) {
                    return a4;
                } else {
                    x();
                    throw null;
                }
            }
            i4 = i5;
        }
    }

    public final String D(ByteString byteString) {
        StringBuilder sb = null;
        while (true) {
            long p4 = this.f4391i.p(byteString);
            if (p4 == -1) {
                v("Unterminated string");
                throw null;
            } else if (this.f4392j.a(p4) != 92) {
                if (sb == null) {
                    String i4 = this.f4392j.i(p4);
                    this.f4392j.c();
                    return i4;
                }
                sb.append(this.f4392j.i(p4));
                this.f4392j.c();
                return sb.toString();
            } else {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.f4392j.i(p4));
                this.f4392j.c();
                sb.append(F());
            }
        }
    }

    public final String E() {
        long p4 = this.f4391i.p(f4390q);
        int i4 = (p4 > (-1L) ? 1 : (p4 == (-1L) ? 0 : -1));
        x3.b bVar = this.f4392j;
        return i4 != 0 ? bVar.i(p4) : bVar.h(bVar.f12892e, s3.b.f12286a);
    }

    public final char F() {
        int i4;
        int i5;
        if (!this.f4391i.f(1L)) {
            v("Unterminated escape sequence");
            throw null;
        }
        byte c4 = this.f4392j.c();
        if (c4 == 10 || c4 == 34 || c4 == 39 || c4 == 47 || c4 == 92) {
            return (char) c4;
        }
        if (c4 != 98) {
            if (c4 != 102) {
                if (c4 != 110) {
                    if (c4 != 114) {
                        if (c4 != 116) {
                            if (c4 != 117) {
                                v("Invalid escape sequence: \\" + ((char) c4));
                                throw null;
                            } else if (!this.f4391i.f(4L)) {
                                throw new EOFException("Unterminated escape sequence at path " + e());
                            } else {
                                char c5 = 0;
                                for (int i6 = 0; i6 < 4; i6++) {
                                    byte a4 = this.f4392j.a(i6);
                                    char c6 = (char) (c5 << 4);
                                    if (a4 < 48 || a4 > 57) {
                                        if (a4 >= 97 && a4 <= 102) {
                                            i4 = a4 - 97;
                                        } else if (a4 < 65 || a4 > 70) {
                                            v("\\u".concat(this.f4392j.i(4L)));
                                            throw null;
                                        } else {
                                            i4 = a4 - 65;
                                        }
                                        i5 = i4 + 10;
                                    } else {
                                        i5 = a4 - 48;
                                    }
                                    c5 = (char) (i5 + c6);
                                }
                                this.f4392j.j(4L);
                                return c5;
                            }
                        }
                        return '\t';
                    }
                    return '\r';
                }
                return '\n';
            }
            return '\f';
        }
        return '\b';
    }

    public final void G(ByteString byteString) {
        while (true) {
            long p4 = this.f4391i.p(byteString);
            if (p4 == -1) {
                v("Unterminated string");
                throw null;
            } else if (this.f4392j.a(p4) != 92) {
                this.f4392j.j(p4 + 1);
                return;
            } else {
                this.f4392j.j(p4 + 1);
                F();
            }
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void a() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 3) {
            o(1);
            this.f4387g[this.f4384d - 1] = 0;
            this.f4393k = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_ARRAY but was " + n() + " at path " + e());
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void b() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 1) {
            o(3);
            this.f4393k = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + n() + " at path " + e());
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void c() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + n() + " at path " + e());
        }
        int i5 = this.f4384d - 1;
        this.f4384d = i5;
        int[] iArr = this.f4387g;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f4393k = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4393k = 0;
        this.f4385e[0] = 8;
        this.f4384d = 1;
        x3.b bVar = this.f4392j;
        bVar.j(bVar.f12892e);
        this.f4391i.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void d() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + n() + " at path " + e());
        }
        int i5 = this.f4384d - 1;
        this.f4384d = i5;
        this.f4386f[i5] = null;
        int[] iArr = this.f4387g;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f4393k = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final boolean h() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        return (i4 == 2 || i4 == 4 || i4 == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final boolean i() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 5) {
            this.f4393k = 0;
            int[] iArr = this.f4387g;
            int i5 = this.f4384d - 1;
            iArr[i5] = iArr[i5] + 1;
            return true;
        } else if (i4 == 6) {
            this.f4393k = 0;
            int[] iArr2 = this.f4387g;
            int i6 = this.f4384d - 1;
            iArr2[i6] = iArr2[i6] + 1;
            return false;
        } else {
            throw new JsonDataException("Expected a boolean but was " + n() + " at path " + e());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final double j() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 16) {
            this.f4393k = 0;
            int[] iArr = this.f4387g;
            int i5 = this.f4384d - 1;
            iArr[i5] = iArr[i5] + 1;
            return this.f4394l;
        }
        if (i4 == 17) {
            this.f4396n = this.f4392j.i(this.f4395m);
        } else if (i4 == 9) {
            this.f4396n = D(f4389p);
        } else if (i4 == 8) {
            this.f4396n = D(f4388o);
        } else if (i4 == 10) {
            this.f4396n = E();
        } else if (i4 != 11) {
            throw new JsonDataException("Expected a double but was " + n() + " at path " + e());
        }
        this.f4393k = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4396n);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + e());
            }
            this.f4396n = null;
            this.f4393k = 0;
            int[] iArr2 = this.f4387g;
            int i6 = this.f4384d - 1;
            iArr2[i6] = iArr2[i6] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f4396n + " at path " + e());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final int k() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 16) {
            long j4 = this.f4394l;
            int i5 = (int) j4;
            if (j4 == i5) {
                this.f4393k = 0;
                int[] iArr = this.f4387g;
                int i6 = this.f4384d - 1;
                iArr[i6] = iArr[i6] + 1;
                return i5;
            }
            throw new JsonDataException("Expected an int but was " + this.f4394l + " at path " + e());
        }
        if (i4 == 17) {
            this.f4396n = this.f4392j.i(this.f4395m);
        } else if (i4 == 9 || i4 == 8) {
            String D3 = i4 == 9 ? D(f4389p) : D(f4388o);
            this.f4396n = D3;
            try {
                int parseInt = Integer.parseInt(D3);
                this.f4393k = 0;
                int[] iArr2 = this.f4387g;
                int i7 = this.f4384d - 1;
                iArr2[i7] = iArr2[i7] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i4 != 11) {
            throw new JsonDataException("Expected an int but was " + n() + " at path " + e());
        }
        this.f4393k = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4396n);
            int i8 = (int) parseDouble;
            if (i8 != parseDouble) {
                throw new JsonDataException("Expected an int but was " + this.f4396n + " at path " + e());
            }
            this.f4396n = null;
            this.f4393k = 0;
            int[] iArr3 = this.f4387g;
            int i9 = this.f4384d - 1;
            iArr3[i9] = iArr3[i9] + 1;
            return i8;
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f4396n + " at path " + e());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final String l() {
        String i4;
        int i5 = this.f4393k;
        if (i5 == 0) {
            i5 = y();
        }
        if (i5 == 10) {
            i4 = E();
        } else if (i5 == 9) {
            i4 = D(f4389p);
        } else if (i5 == 8) {
            i4 = D(f4388o);
        } else if (i5 == 11) {
            i4 = this.f4396n;
            this.f4396n = null;
        } else if (i5 == 16) {
            i4 = Long.toString(this.f4394l);
        } else if (i5 != 17) {
            throw new JsonDataException("Expected a string but was " + n() + " at path " + e());
        } else {
            i4 = this.f4392j.i(this.f4395m);
        }
        this.f4393k = 0;
        int[] iArr = this.f4387g;
        int i6 = this.f4384d - 1;
        iArr[i6] = iArr[i6] + 1;
        return i4;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final JsonReader$Token n() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        switch (i4) {
            case 1:
                return JsonReader$Token.BEGIN_OBJECT;
            case 2:
                return JsonReader$Token.END_OBJECT;
            case 3:
                return JsonReader$Token.BEGIN_ARRAY;
            case 4:
                return JsonReader$Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader$Token.BOOLEAN;
            case 7:
                return JsonReader$Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader$Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader$Token.NAME;
            case 16:
            case 17:
                return JsonReader$Token.NUMBER;
            case 18:
                return JsonReader$Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final int r(C1430a c1430a) {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 < 12 || i4 > 15) {
            return -1;
        }
        if (i4 == 15) {
            return z(this.f4396n, c1430a);
        }
        int q4 = this.f4391i.q(c1430a.f12629b);
        if (q4 != -1) {
            this.f4393k = 0;
            this.f4386f[this.f4384d - 1] = c1430a.f12628a[q4];
            return q4;
        }
        String str = this.f4386f[this.f4384d - 1];
        String B3 = B();
        int z4 = z(B3, c1430a);
        if (z4 == -1) {
            this.f4393k = 15;
            this.f4396n = B3;
            this.f4386f[this.f4384d - 1] = str;
        }
        return z4;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void t() {
        int i4 = this.f4393k;
        if (i4 == 0) {
            i4 = y();
        }
        if (i4 == 14) {
            long p4 = this.f4391i.p(f4390q);
            x3.b bVar = this.f4392j;
            if (p4 == -1) {
                p4 = bVar.f12892e;
            }
            bVar.j(p4);
        } else if (i4 == 13) {
            G(f4389p);
        } else if (i4 == 12) {
            G(f4388o);
        } else if (i4 != 15) {
            throw new JsonDataException("Expected a name but was " + n() + " at path " + e());
        }
        this.f4393k = 0;
        this.f4386f[this.f4384d - 1] = "null";
    }

    public final String toString() {
        return "JsonReader(" + this.f4391i + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public final void u() {
        int i4 = 0;
        do {
            int i5 = this.f4393k;
            if (i5 == 0) {
                i5 = y();
            }
            if (i5 == 3) {
                o(1);
            } else if (i5 == 1) {
                o(3);
            } else {
                if (i5 == 4) {
                    i4--;
                    if (i4 < 0) {
                        throw new JsonDataException("Expected a value but was " + n() + " at path " + e());
                    }
                    this.f4384d--;
                } else if (i5 == 2) {
                    i4--;
                    if (i4 < 0) {
                        throw new JsonDataException("Expected a value but was " + n() + " at path " + e());
                    }
                    this.f4384d--;
                } else if (i5 == 14 || i5 == 10) {
                    long p4 = this.f4391i.p(f4390q);
                    x3.b bVar = this.f4392j;
                    if (p4 == -1) {
                        p4 = bVar.f12892e;
                    }
                    bVar.j(p4);
                } else if (i5 == 9 || i5 == 13) {
                    G(f4389p);
                } else if (i5 == 8 || i5 == 12) {
                    G(f4388o);
                } else if (i5 == 17) {
                    this.f4392j.j(this.f4395m);
                } else if (i5 == 18) {
                    throw new JsonDataException("Expected a value but was " + n() + " at path " + e());
                }
                this.f4393k = 0;
            }
            i4++;
            this.f4393k = 0;
        } while (i4 != 0);
        int[] iArr = this.f4387g;
        int i6 = this.f4384d;
        int i7 = i6 - 1;
        iArr[i7] = iArr[i7] + 1;
        this.f4386f[i6 - 1] = "null";
    }

    public final void x() {
        v("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x01a0, code lost:
        if (A(r2) != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01a2, code lost:
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01a3, code lost:
        if (r5 != r2) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01a5, code lost:
        if (r7 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01ab, code lost:
        if (r8 != Long.MIN_VALUE) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01ad, code lost:
        if (r10 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b3, code lost:
        if (r8 != 0) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01b5, code lost:
        if (r10 != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01b7, code lost:
        if (r10 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01ba, code lost:
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01bb, code lost:
        r16.f4394l = r8;
        r16.f4392j.j(r1);
        r8 = 16;
        r16.f4393k = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01c8, code lost:
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x01c9, code lost:
        if (r5 == r2) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x01cc, code lost:
        if (r5 == 4) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01cf, code lost:
        if (r5 != 7) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01d1, code lost:
        r16.f4395m = r1;
        r8 = 17;
        r16.f4393k = 17;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0203 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0120 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int y() {
        /*
            Method dump skipped, instructions count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.b.y():int");
    }

    public final int z(String str, C1430a c1430a) {
        int length = c1430a.f12628a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(c1430a.f12628a[i4])) {
                this.f4393k = 0;
                this.f4386f[this.f4384d - 1] = str;
                return i4;
            }
        }
        return -1;
    }
}
