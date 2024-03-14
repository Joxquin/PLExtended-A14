package com.android.systemui.monet;

import androidx.constraintlayout.widget.j;
import com.android.internal.graphics.cam.Cam;
import com.android.internal.graphics.cam.CamUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.o;
import kotlin.collections.s;
import kotlin.jvm.internal.h;
import m3.l;
import q3.b;
import q3.c;
import s3.g;
/* loaded from: classes.dex */
public final class a {
    public static final String a(String str, List list) {
        ArrayList arrayList = new ArrayList(o.d(list));
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            arrayList.add(b(((Number) it.next()).intValue()));
        }
        String i4 = s.i(arrayList, "\n", null, null, new l() { // from class: com.android.systemui.monet.ColorScheme$Companion$humanReadable$2
            @Override // m3.l
            public final Object invoke(Object obj) {
                String it2 = (String) obj;
                h.e(it2, "it");
                return it2;
            }
        }, 30);
        return str + "\n" + i4;
    }

    public static String b(int i4) {
        CharSequence charSequence;
        Cam fromInt = Cam.fromInt(i4);
        String a4 = j.a("H", g.c(String.valueOf(n3.a.a(fromInt.getHue()))));
        String a5 = j.a("C", g.c(String.valueOf(n3.a.a(fromInt.getChroma()))));
        String a6 = j.a("T", g.c(String.valueOf(n3.a.a(CamUtils.lstarFromInt(i4)))));
        String hexString = Integer.toHexString(i4 & 16777215);
        h.d(hexString, "toHexString(color and 0xffffff)");
        if (6 <= hexString.length()) {
            charSequence = hexString.subSequence(0, hexString.length());
        } else {
            StringBuilder sb = new StringBuilder(6);
            b it = new c(1, 6 - hexString.length()).iterator();
            while (it.f12058f) {
                it.a();
                sb.append('0');
            }
            sb.append((CharSequence) hexString);
            charSequence = sb;
        }
        String upperCase = charSequence.toString().toUpperCase(Locale.ROOT);
        h.d(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return a4 + a5 + a6 + " = #" + upperCase;
    }
}
