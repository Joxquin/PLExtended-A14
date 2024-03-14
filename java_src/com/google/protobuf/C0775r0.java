package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.protobuf.r0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0775r0 {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f8690a;

    static {
        char[] cArr = new char[80];
        f8690a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(int i4, StringBuilder sb) {
        while (i4 > 0) {
            int i5 = 80;
            if (i4 <= 80) {
                i5 = i4;
            }
            sb.append(f8690a, 0, i5);
            i4 -= i5;
        }
    }

    public static void b(StringBuilder sb, int i4, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                b(sb, i4, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                b(sb, i4, str, entry);
            }
        } else {
            sb.append('\n');
            a(i4, sb);
            if (!str.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Character.toLowerCase(str.charAt(0)));
                for (int i5 = 1; i5 < str.length(); i5++) {
                    char charAt = str.charAt(i5);
                    if (Character.isUpperCase(charAt)) {
                        sb2.append("_");
                    }
                    sb2.append(Character.toLowerCase(charAt));
                }
                str = sb2.toString();
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                ByteString byteString = ByteString.f8505d;
                sb.append(N0.a(new ByteString.LiteralByteString(((String) obj).getBytes(T.f8577a))));
                sb.append('\"');
            } else if (obj instanceof ByteString) {
                sb.append(": \"");
                sb.append(N0.a((ByteString) obj));
                sb.append('\"');
            } else if (obj instanceof J) {
                sb.append(" {");
                c((J) obj, sb, i4 + 2);
                sb.append("\n");
                a(i4, sb);
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj);
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i6 = i4 + 2;
                b(sb, i6, "key", entry2.getKey());
                b(sb, i6, "value", entry2.getValue());
                sb.append("\n");
                a(i4, sb);
                sb.append("}");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0198, code lost:
        if (((java.lang.Integer) r7).intValue() == 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01aa, code lost:
        if (java.lang.Float.floatToRawIntBits(((java.lang.Float) r7).floatValue()) == 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01c0, code lost:
        if (java.lang.Double.doubleToRawLongBits(((java.lang.Double) r7).doubleValue()) == 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f4, code lost:
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(com.google.protobuf.InterfaceC0772p0 r20, java.lang.StringBuilder r21, int r22) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0775r0.c(com.google.protobuf.p0, java.lang.StringBuilder, int):void");
    }
}
