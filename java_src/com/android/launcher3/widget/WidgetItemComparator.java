package com.android.launcher3.widget;

import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.model.WidgetItem;
import java.text.Collator;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class WidgetItemComparator implements Comparator {
    private final UserHandle mMyUserHandle = Process.myUserHandle();
    private final Collator mCollator = Collator.getInstance();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        WidgetItem widgetItem = (WidgetItem) obj;
        WidgetItem widgetItem2 = (WidgetItem) obj2;
        boolean z4 = !this.mMyUserHandle.equals(widgetItem.user);
        if ((!this.mMyUserHandle.equals(widgetItem2.user)) ^ z4) {
            return z4 ? 1 : -1;
        }
        int compare = this.mCollator.compare(widgetItem.label, widgetItem2.label);
        if (compare != 0) {
            return compare;
        }
        int i4 = widgetItem.spanX;
        int i5 = widgetItem.spanY;
        int i6 = i4 * i5;
        int i7 = widgetItem2.spanX;
        int i8 = widgetItem2.spanY;
        int i9 = i7 * i8;
        return i6 == i9 ? Integer.compare(i5, i8) : Integer.compare(i6, i9);
    }
}
