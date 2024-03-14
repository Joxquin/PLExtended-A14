package X2;

import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class E0 {

    /* renamed from: e  reason: collision with root package name */
    public static final Logger f2100e = Logger.getLogger(E0.class.getName());

    /* renamed from: f  reason: collision with root package name */
    public static E0 f2101f;

    /* renamed from: a  reason: collision with root package name */
    public final C0 f2102a = new C0(this);

    /* renamed from: b  reason: collision with root package name */
    public String f2103b = "unknown";

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashSet f2104c = new LinkedHashSet();

    /* renamed from: d  reason: collision with root package name */
    public ImmutableMap f2105d = ImmutableMap.g();

    public final synchronized void a() {
        HashMap hashMap = new HashMap();
        String str = "unknown";
        Iterator it = this.f2104c.iterator();
        int i4 = Integer.MIN_VALUE;
        while (it.hasNext()) {
            B0 b02 = (B0) it.next();
            String b4 = b02.b();
            B0 b03 = (B0) hashMap.get(b4);
            if (b03 == null || b03.g() < b02.g()) {
                hashMap.put(b4, b02);
            }
            if (i4 < b02.g()) {
                i4 = b02.g();
                str = b02.b();
            }
        }
        this.f2105d = ImmutableMap.b(hashMap);
        this.f2103b = str;
    }
}
