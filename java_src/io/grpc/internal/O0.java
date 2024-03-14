package io.grpc.internal;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class O0 {

    /* renamed from: a  reason: collision with root package name */
    public static final long f9971a = TimeUnit.SECONDS.toNanos(1);

    public static void a(List list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (!(list.get(i4) instanceof Map)) {
                throw new ClassCastException(String.format("value %s for idx %d in %s is not object", list.get(i4), Integer.valueOf(i4), list));
            }
        }
    }

    public static List b(Map map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                return (List) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
        }
        return null;
    }

    public static List c(Map map, String str) {
        List b4 = b(map, str);
        if (b4 == null) {
            return null;
        }
        for (int i4 = 0; i4 < b4.size(); i4++) {
            if (!(b4.get(i4) instanceof String)) {
                throw new ClassCastException(String.format("value '%s' for idx %d in '%s' is not string", b4.get(i4), Integer.valueOf(i4), b4));
            }
        }
        return b4;
    }

    public static Double d(Map map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Double) {
                return (Double) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Double", obj, str, map));
        }
        return null;
    }

    public static Integer e(Map map, String str) {
        Double d4 = d(map, str);
        if (d4 == null) {
            return null;
        }
        int intValue = d4.intValue();
        if (intValue == d4.doubleValue()) {
            return Integer.valueOf(intValue);
        }
        throw new ClassCastException("Number expected to be integer: " + d4);
    }

    public static Map f(Map map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof Map) {
                return (Map) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
        }
        return null;
    }

    public static String g(Map map, String str) {
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
            throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
        }
        return null;
    }

    public static Long h(Map map, String str) {
        String g4 = g(map, str);
        if (g4 == null) {
            return null;
        }
        try {
            return Long.valueOf(j(g4));
        } catch (ParseException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long i(int r18, long r19) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.O0.i(int, long):long");
    }

    public static long j(String str) {
        boolean z4;
        String str2;
        int i4;
        if (str.isEmpty() || str.charAt(str.length() - 1) != 's') {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z4 = true;
        } else {
            z4 = false;
        }
        String substring = str.substring(0, str.length() - 1);
        int indexOf = substring.indexOf(46);
        if (indexOf != -1) {
            str2 = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
        } else {
            str2 = "";
        }
        long parseLong = Long.parseLong(substring);
        if (str2.isEmpty()) {
            i4 = 0;
        } else {
            i4 = 0;
            for (int i5 = 0; i5 < 9; i5++) {
                i4 *= 10;
                if (i5 < str2.length()) {
                    if (str2.charAt(i5) < '0' || str2.charAt(i5) > '9') {
                        throw new ParseException("Invalid nanoseconds.", 0);
                    }
                    i4 = (str2.charAt(i5) - '0') + i4;
                }
            }
        }
        if (parseLong >= 0) {
            if (z4) {
                parseLong = -parseLong;
                i4 = -i4;
            }
            try {
                return i(i4, parseLong);
            } catch (IllegalArgumentException unused) {
                throw new ParseException("Duration value is out of range.", 0);
            }
        }
        throw new ParseException("Invalid duration string: ".concat(str), 0);
    }
}
