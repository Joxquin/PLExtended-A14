package s3;

import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class g extends f {
    public static final int a(CharSequence charSequence) {
        h.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0094 A[EDGE_INSN: B:58:0x0094->B:50:0x0094 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int b(java.lang.CharSequence r9, java.lang.String r10, int r11, boolean r12) {
        /*
            java.lang.String r0 = "string"
            kotlin.jvm.internal.h.e(r10, r0)
            if (r12 != 0) goto L14
            boolean r0 = r9 instanceof java.lang.String
            if (r0 != 0) goto Lc
            goto L14
        Lc:
            java.lang.String r9 = (java.lang.String) r9
            int r9 = r9.indexOf(r10, r11)
            goto L9b
        L14:
            int r0 = r9.length()
            q3.c r1 = new q3.c
            r2 = 0
            if (r11 >= 0) goto L1e
            r11 = r2
        L1e:
            int r3 = r9.length()
            if (r0 <= r3) goto L25
            r0 = r3
        L25:
            r1.<init>(r11, r0)
            boolean r0 = r9 instanceof java.lang.String
            if (r0 == 0) goto L55
            int r0 = r1.f12054e
            int r1 = r1.f12055f
            if (r1 <= 0) goto L34
            if (r11 <= r0) goto L38
        L34:
            if (r1 >= 0) goto L9a
            if (r0 > r11) goto L9a
        L38:
            r6 = r9
            java.lang.String r6 = (java.lang.String) r6
            int r8 = r10.length()
            if (r12 != 0) goto L46
            boolean r3 = r10.regionMatches(r2, r6, r11, r8)
            goto L4e
        L46:
            r5 = 0
            r3 = r10
            r4 = r12
            r7 = r11
            boolean r3 = r3.regionMatches(r4, r5, r6, r7, r8)
        L4e:
            if (r3 == 0) goto L51
            goto L94
        L51:
            if (r11 == r0) goto L9a
            int r11 = r11 + r1
            goto L38
        L55:
            int r0 = r1.f12054e
            int r1 = r1.f12055f
            if (r1 <= 0) goto L5d
            if (r11 <= r0) goto L61
        L5d:
            if (r1 >= 0) goto L9a
            if (r0 > r11) goto L9a
        L61:
            int r3 = r10.length()
            if (r11 < 0) goto L91
            int r4 = r10.length()
            int r4 = r4 - r3
            if (r4 < 0) goto L91
            int r4 = r9.length()
            int r4 = r4 - r3
            if (r11 <= r4) goto L76
            goto L91
        L76:
            r4 = r2
        L77:
            if (r4 >= r3) goto L8f
            int r5 = r2 + r4
            char r5 = r10.charAt(r5)
            int r6 = r11 + r4
            char r6 = r9.charAt(r6)
            boolean r5 = s3.a.a(r5, r6, r12)
            if (r5 != 0) goto L8c
            goto L91
        L8c:
            int r4 = r4 + 1
            goto L77
        L8f:
            r3 = 1
            goto L92
        L91:
            r3 = r2
        L92:
            if (r3 == 0) goto L96
        L94:
            r9 = r11
            goto L9b
        L96:
            if (r11 == r0) goto L9a
            int r11 = r11 + r1
            goto L61
        L9a:
            r9 = -1
        L9b:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.g.b(java.lang.CharSequence, java.lang.String, int, boolean):int");
    }

    public static String c(String str) {
        CharSequence charSequence;
        h.e(str, "<this>");
        if (4 <= str.length()) {
            charSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(4);
            sb.append((CharSequence) str);
            q3.b it = new q3.c(1, 4 - str.length()).iterator();
            while (it.f12058f) {
                it.a();
                sb.append(' ');
            }
            charSequence = sb;
        }
        return charSequence.toString();
    }

    public static String d(String str, String str2, String str3) {
        int b4 = b(str, str2, 0, false);
        if (b4 < 0) {
            return str;
        }
        int length = str2.length();
        int i4 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 >= 0) {
            StringBuilder sb = new StringBuilder(length2);
            int i5 = 0;
            do {
                sb.append((CharSequence) str, i5, b4);
                sb.append(str3);
                i5 = b4 + length;
                if (b4 >= str.length()) {
                    break;
                }
                b4 = b(str, str2, b4 + i4, false);
            } while (b4 > 0);
            sb.append((CharSequence) str, i5, str.length());
            String sb2 = sb.toString();
            h.d(sb2, "stringBuilder.append(this, i, length).toString()");
            return sb2;
        }
        throw new OutOfMemoryError();
    }

    public static String e(String str, String delimiter) {
        h.e(delimiter, "delimiter");
        int b4 = b(str, delimiter, 0, false);
        if (b4 == -1) {
            return str;
        }
        String substring = str.substring(delimiter.length() + b4, str.length());
        h.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static String f(String missingDelimiterValue) {
        h.e(missingDelimiterValue, "<this>");
        h.e(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf = missingDelimiterValue.lastIndexOf(46, a(missingDelimiterValue));
        if (lastIndexOf == -1) {
            return missingDelimiterValue;
        }
        String substring = missingDelimiterValue.substring(lastIndexOf + 1, missingDelimiterValue.length());
        h.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }
}
