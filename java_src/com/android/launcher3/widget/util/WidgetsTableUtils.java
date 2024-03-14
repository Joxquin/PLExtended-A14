package com.android.launcher3.widget.util;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.util.WidgetSizes;
import j1.C1113b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class WidgetsTableUtils {
    private static final C1113b WIDGET_SHORTCUT_COMPARATOR = new C1113b();

    public static List groupWidgetItemsUsingRowPxWithReordering(List list, Context context, DeviceProfile deviceProfile, int i4, int i5) {
        return groupWidgetItemsUsingRowPxWithoutReordering((List) list.stream().sorted(WIDGET_SHORTCUT_COMPARATOR).collect(Collectors.toList()), context, deviceProfile, i4, i5);
    }

    public static List groupWidgetItemsUsingRowPxWithoutReordering(List list, final Context context, final DeviceProfile deviceProfile, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        ArrayList arrayList2 = null;
        while (it.hasNext()) {
            WidgetItem widgetItem = (WidgetItem) it.next();
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
            }
            int size = arrayList2.size();
            final int i6 = (i4 / (size + 1)) - (i5 * 2);
            if (size == 0) {
                arrayList2.add(widgetItem);
            } else {
                WidgetItem widgetItem2 = (WidgetItem) arrayList2.get(size - 1);
                boolean z4 = true;
                if ((widgetItem.widgetInfo == null || widgetItem2.widgetInfo == null) && (widgetItem.activityInfo == null || widgetItem2.activityInfo == null)) {
                    z4 = false;
                }
                if (z4 && arrayList2.stream().allMatch(new Predicate() { // from class: j1.a
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return WidgetSizes.getWidgetItemSizePx(context, deviceProfile, (WidgetItem) obj).getWidth() <= i6;
                    }
                }) && WidgetSizes.getWidgetItemSizePx(context, deviceProfile, widgetItem).getWidth() <= i6) {
                    arrayList2.add(widgetItem);
                } else {
                    arrayList2 = new ArrayList();
                    arrayList.add(arrayList2);
                    arrayList2.add(widgetItem);
                }
            }
        }
        return arrayList;
    }
}
