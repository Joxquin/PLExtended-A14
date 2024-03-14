package c;

import android.content.Intent;
import android.os.Process;
import androidx.activity.l;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.s;
import kotlin.collections.w;
import kotlin.collections.x;
import kotlin.jvm.internal.h;
/* renamed from: c.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0319c extends AbstractC0318b {
    @Override // c.AbstractC0318b
    public final Intent a(l context, Object obj) {
        String[] input = (String[]) obj;
        h.e(context, "context");
        h.e(input, "input");
        Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", input);
        h.d(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
        return putExtra;
    }

    @Override // c.AbstractC0318b
    public final C0317a b(l context, Object obj) {
        String[] input = (String[]) obj;
        h.e(context, "context");
        h.e(input, "input");
        boolean z4 = true;
        if (input.length == 0) {
            return new C0317a(x.c());
        }
        int length = input.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            String str = input[i4];
            Object obj2 = B.c.f105a;
            if (str == null) {
                throw new NullPointerException("permission must be non-null");
            }
            if (!(context.checkPermission(str, Process.myPid(), Process.myUid()) == 0)) {
                z4 = false;
                break;
            }
            i4++;
        }
        if (z4) {
            int a4 = w.a(input.length);
            if (a4 < 16) {
                a4 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(a4);
            for (String str2 : input) {
                Pair pair = new Pair(str2, Boolean.TRUE);
                linkedHashMap.put(pair.c(), pair.d());
            }
            return new C0317a(linkedHashMap);
        }
        return null;
    }

    @Override // c.AbstractC0318b
    public final Object c(Intent intent, int i4) {
        if (i4 == -1 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                return x.c();
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i5 : intArrayExtra) {
                arrayList.add(Boolean.valueOf(i5 == 0));
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : stringArrayExtra) {
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            return x.f(s.o(arrayList2, arrayList));
        }
        return x.c();
    }
}
