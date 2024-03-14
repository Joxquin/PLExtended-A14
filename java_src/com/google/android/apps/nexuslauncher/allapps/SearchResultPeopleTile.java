package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.Process;
import android.util.AttributeSet;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class SearchResultPeopleTile extends SearchResultWidget {
    public SearchResultPeopleTile(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.SearchResultWidget, com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        H2 h22;
        SearchTarget searchTarget = c0653h1.f7080a;
        if (searchTarget.getId().equals(this.f6846m)) {
            return;
        }
        this.f6846m = searchTarget.getId();
        l();
        ShortcutInfo shortcutInfo = searchTarget.getShortcutInfo();
        C0719y0 c0719y0 = this.f6839f;
        c0719y0.getClass();
        ShortcutKey fromInfo = ShortcutKey.fromInfo(shortcutInfo);
        if (c0719y0.f7275h.containsKey(fromInfo)) {
            h22 = (H2) c0719y0.f7275h.get(fromInfo);
        } else {
            final ComponentKey componentKey = new ComponentKey(new ComponentName("com.android.systemui", "com.android.systemui.people.widget.PeopleSpaceWidgetProvider"), Process.myUserHandle());
            LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo) ((ActivityContext) c0719y0.f7271d).getPopupDataProvider().getAllWidgets().stream().filter(new C0676n0(0)).flatMap(new Y(0)).filter(new Predicate() { // from class: com.google.android.apps.nexuslauncher.allapps.Z
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    WidgetItem widgetItem = (WidgetItem) obj;
                    return ComponentKey.this.equals(widgetItem) && widgetItem.widgetInfo != null;
                }
            }).map(new Y(1)).findFirst().orElse(null);
            if (launcherAppWidgetProviderInfo == null) {
                h22 = null;
            } else {
                G2 g22 = new G2(launcherAppWidgetProviderInfo, shortcutInfo);
                g22.spanX = c0719y0.f7288u;
                g22.spanY = 1;
                h22 = new H2(c0719y0.f7271d);
                Executors.UI_HELPER_EXECUTOR.post(new RunnableC0672m0(c0719y0, g22, h22, 1));
                c0719y0.f7275h.put(fromInfo, h22);
                h22.setTag(g22);
            }
        }
        k(h22);
    }

    public SearchResultPeopleTile(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultPeopleTile(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
