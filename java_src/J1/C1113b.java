package j1;

import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import java.util.Comparator;
/* renamed from: j1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C1113b implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        WidgetItem widgetItem = (WidgetItem) obj;
        WidgetItem widgetItem2 = (WidgetItem) obj2;
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem.widgetInfo;
        if (launcherAppWidgetProviderInfo == null || widgetItem2.widgetInfo != null) {
            if (launcherAppWidgetProviderInfo != null || widgetItem2.widgetInfo == null) {
                int i4 = widgetItem2.spanX;
                int i5 = widgetItem.spanX;
                if (i5 == i4) {
                    int i6 = widgetItem.spanY;
                    int i7 = widgetItem2.spanY;
                    if (i6 == i7) {
                        return 0;
                    }
                    if (i6 > i7) {
                    }
                } else if (i5 > i4) {
                }
            }
            return 1;
        }
        return -1;
    }
}
