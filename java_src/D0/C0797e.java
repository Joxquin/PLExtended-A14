package d0;

import android.text.TextUtils;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.List;
/* renamed from: d0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0797e {
    public static boolean a(SliceItem sliceItem, String str) {
        return str == null || str.equals(sliceItem.f4057b);
    }

    public static SliceItem b(Slice slice, String str, String str2) {
        return c(slice, str, new String[]{str2}, new String[]{null});
    }

    public static SliceItem c(Slice slice, String str, String[] strArr, String[] strArr2) {
        if (slice == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        Collections.addAll(arrayDeque, slice.f4053b);
        return g(arrayDeque, new C0794b(str, strArr, strArr2, 1));
    }

    public static SliceItem d(SliceItem sliceItem, String str, String str2) {
        return e(sliceItem, str, new String[]{str2}, new String[]{null});
    }

    public static SliceItem e(SliceItem sliceItem, String str, String[] strArr, String[] strArr2) {
        if (sliceItem == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        return g(arrayDeque, new C0794b(str, strArr, strArr2, 0));
    }

    public static List f(SliceItem sliceItem, String str, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        C0794b c0794b = new C0794b(str, strArr, strArr2, 2);
        while (!arrayDeque.isEmpty()) {
            SliceItem sliceItem2 = (SliceItem) arrayDeque.poll();
            if (c0794b.a(sliceItem2)) {
                arrayList.add(sliceItem2);
            }
            if (sliceItem2 != null && ("slice".equals(sliceItem2.f4057b) || "action".equals(sliceItem2.f4057b))) {
                Collections.addAll(arrayDeque, sliceItem2.g().f4053b);
            }
        }
        return arrayList;
    }

    public static SliceItem g(Deque deque, InterfaceC0796d interfaceC0796d) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            if (arrayDeque.isEmpty()) {
                return null;
            }
            SliceItem sliceItem = (SliceItem) arrayDeque.poll();
            if (interfaceC0796d.a(sliceItem)) {
                return sliceItem;
            }
            if (sliceItem != null && ("slice".equals(sliceItem.f4057b) || "action".equals(sliceItem.f4057b))) {
                Collections.addAll(deque, sliceItem.g().f4053b);
            }
        }
    }

    public static SliceItem h(Slice slice, String str, String str2) {
        if (slice == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        Collections.addAll(arrayDeque, slice.f4053b);
        return g(arrayDeque, new C0795c(str, str2, 0));
    }

    public static SliceItem i(SliceItem sliceItem, String str, String str2) {
        if (sliceItem == null) {
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(sliceItem);
        return g(arrayDeque, new C0795c(str, str2, 1));
    }

    public static SliceItem j(Slice slice, String str, String str2, String[] strArr) {
        SliceItem[] sliceItemArr;
        for (SliceItem sliceItem : slice.f4053b) {
            if (a(sliceItem, str)) {
                if ((str2 == null || str2.equals(sliceItem.f4058c)) && l(sliceItem, strArr) && !k(sliceItem, null)) {
                    return sliceItem;
                }
            }
        }
        return null;
    }

    public static boolean k(SliceItem sliceItem, String... strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (sliceItem.i(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(SliceItem sliceItem, String... strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && !sliceItem.i(str)) {
                return false;
            }
        }
        return true;
    }
}
