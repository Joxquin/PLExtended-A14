package N1;

import android.app.search.SearchTarget;
import com.google.android.apps.nexuslauncher.allapps.D2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class a {
    public static boolean a(int i4, ArrayList arrayList) {
        if (i4 < 0 || i4 >= arrayList.size()) {
            return false;
        }
        return "com.android.vending".equals(((SearchTarget) arrayList.get(i4)).getPackageName());
    }

    public static void addWebTargetsAtIndex(int i4, ArrayList arrayList, int i5, ArrayList arrayList2, SearchTarget searchTarget, boolean z4) {
        if (z4) {
            i5++;
        }
        ArrayList arrayList3 = new ArrayList();
        int i6 = 0;
        for (int i7 = 0; i7 < arrayList2.size() && i6 < i5; i7++) {
            SearchTarget searchTarget2 = (SearchTarget) arrayList2.get(i7);
            arrayList3.add(searchTarget2);
            if (searchTarget2.getParentId() == null) {
                i6++;
            }
        }
        arrayList.addAll(i4, arrayList3);
        arrayList.add(arrayList3.size() + i4, searchTarget);
    }

    public static boolean b(int i4, List list) {
        if (i4 >= 0) {
            ArrayList arrayList = (ArrayList) list;
            if (i4 < arrayList.size()) {
                String layoutType = ((SearchTarget) arrayList.get(i4)).getLayoutType();
                layoutType.getClass();
                if (layoutType.equals("educard")) {
                    D2.k(i4, list);
                    return true;
                } else if (layoutType.equals("text_header_row")) {
                    arrayList.remove(i4);
                    return true;
                } else {
                    return false;
                }
            }
        }
        return false;
    }

    public static int getWebTargetTotalCount(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            if (((SearchTarget) it.next()).getParentId() == null) {
                i4++;
            }
        }
        return i4;
    }
}
