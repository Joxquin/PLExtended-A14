package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.IntSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class ModelUtils {
    public static void filterCurrentWorkspaceItems(IntSet intSet, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        arrayList.removeIf(new C0380n0(0));
        IntSet intSet2 = new IntSet();
        Collections.sort(arrayList, new C0382o0());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            int i4 = itemInfo.container;
            if (i4 == -100) {
                if (intSet.contains(itemInfo.screenId)) {
                    arrayList2.add(itemInfo);
                    intSet2.add(itemInfo.id);
                } else {
                    arrayList3.add(itemInfo);
                }
            } else if (i4 == -101) {
                arrayList2.add(itemInfo);
                intSet2.add(itemInfo.id);
            } else if (intSet2.contains(i4)) {
                arrayList2.add(itemInfo);
                intSet2.add(itemInfo.id);
            } else {
                arrayList3.add(itemInfo);
            }
        }
    }
}
