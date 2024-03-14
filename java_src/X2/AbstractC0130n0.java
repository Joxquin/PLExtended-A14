package X2;

import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;
/* renamed from: X2.n0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0130n0 {

    /* renamed from: d  reason: collision with root package name */
    public static final BitSet f2205d;

    /* renamed from: a  reason: collision with root package name */
    public final String f2206a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2207b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f2208c;

    static {
        BitSet bitSet = new BitSet(127);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        for (char c4 = '0'; c4 <= '9'; c4 = (char) (c4 + 1)) {
            bitSet.set(c4);
        }
        for (char c5 = 'a'; c5 <= 'z'; c5 = (char) (c5 + 1)) {
            bitSet.set(c5);
        }
        f2205d = bitSet;
    }

    public AbstractC0130n0(String str, boolean z4, Object obj) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        O2.m.h(lowerCase, "name");
        O2.m.b("token must have at least 1 tchar", !lowerCase.isEmpty());
        if (lowerCase.equals("connection")) {
            r0.f2219c.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
        }
        for (int i4 = 0; i4 < lowerCase.length(); i4++) {
            char charAt = lowerCase.charAt(i4);
            if ((!z4 || charAt != ':' || i4 != 0) && !f2205d.get(charAt)) {
                throw new IllegalArgumentException(O2.p.a("Invalid character '%s' in key name '%s'", Character.valueOf(charAt), lowerCase));
            }
        }
        this.f2206a = lowerCase;
        this.f2207b = lowerCase.getBytes(O2.e.f1510a);
        this.f2208c = obj;
    }

    public static C0120i0 a(String str, InterfaceC0122j0 interfaceC0122j0) {
        return new C0120i0(str, interfaceC0122j0);
    }

    public abstract Object b(byte[] bArr);

    public abstract byte[] c(Object obj);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f2206a.equals(((AbstractC0130n0) obj).f2206a);
    }

    public final int hashCode() {
        return this.f2206a.hashCode();
    }

    public final String toString() {
        return "Key{name='" + this.f2206a + "'}";
    }
}
