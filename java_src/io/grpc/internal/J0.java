package io.grpc.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class J0 implements InterfaceC0986b0 {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f9920b = Logger.getLogger(J0.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final K0 f9921a;

    static {
        Pattern.compile("\\s+");
    }

    public J0(I0 i02) {
        this.f9921a = i02;
    }

    @Override // io.grpc.internal.InterfaceC0986b0
    public final List a(String str) {
        Level level = Level.FINER;
        Logger logger = f9920b;
        if (logger.isLoggable(level)) {
            logger.log(level, "About to query TXT records for {0}", new Object[]{str});
        }
        List c4 = ((I0) this.f9921a).c(androidx.constraintlayout.widget.j.a("dns:///", str));
        if (logger.isLoggable(level)) {
            logger.log(level, "Found {0} TXT records", new Object[]{Integer.valueOf(((ArrayList) c4).size())});
        }
        ArrayList arrayList = (ArrayList) c4;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            StringBuilder sb = new StringBuilder(str2.length());
            int i4 = 0;
            boolean z4 = false;
            while (i4 < str2.length()) {
                char charAt = str2.charAt(i4);
                if (z4) {
                    if (charAt == '\"') {
                        z4 = false;
                    } else {
                        if (charAt == '\\') {
                            i4++;
                            charAt = str2.charAt(i4);
                        }
                        sb.append(charAt);
                    }
                } else if (charAt != ' ') {
                    if (charAt == '\"') {
                        z4 = true;
                    }
                    sb.append(charAt);
                }
                i4++;
            }
            arrayList2.add(sb.toString());
        }
        return Collections.unmodifiableList(arrayList2);
    }
}
