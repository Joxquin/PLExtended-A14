package K2;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.os.Bundle;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.Set;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public final class z {
    public static int a(SmartspaceTarget target) {
        kotlin.jvm.internal.h.e(target, "target");
        List actionChips = target.getActionChips();
        int featureType = target.getFeatureType();
        return (actionChips == null || actionChips.isEmpty()) ? featureType : (featureType == 13 && actionChips.size() == 1) ? -2 : -1;
    }

    public static boolean b(SmartspaceAction smartspaceAction, SmartspaceAction smartspaceAction2) {
        if (smartspaceAction == null && smartspaceAction2 == null) {
            return true;
        }
        if ((smartspaceAction == null || smartspaceAction2 == null) ? false : true) {
            kotlin.jvm.internal.h.b(smartspaceAction);
            Bundle extras = smartspaceAction.getExtras();
            kotlin.jvm.internal.h.b(smartspaceAction2);
            if (extras == null && smartspaceAction2.getExtras() == null) {
                return true;
            }
            if ((smartspaceAction.getExtras() == null || smartspaceAction2.getExtras() == null) ? false : true) {
                Bundle extras2 = smartspaceAction.getExtras();
                Set<String> keySet = extras2 != null ? extras2.keySet() : null;
                Bundle extras3 = smartspaceAction2.getExtras();
                if (kotlin.jvm.internal.h.a(keySet, extras3 != null ? extras3.keySet() : null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(List list, List list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if ((list == null || list2 == null) ? false : true) {
            kotlin.jvm.internal.h.b(list);
            int size = list.size();
            kotlin.jvm.internal.h.b(list2);
            if (size == list2.size() && IntStream.range(0, list.size()).allMatch(new y(list, list2))) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ void getMAX_FEATURE_TYPE$annotations() {
    }

    public static /* synthetic */ void getMIN_FEATURE_TYPE$annotations() {
    }

    public final int getBaseLegacyCardRes(int i4) {
        if (i4 == -2 || i4 == -1) {
            return R.layout.smartspace_card;
        }
        if (i4 != 1) {
            if (i4 == 2 || i4 == 3 || i4 == 4 || i4 == 6 || i4 == 18 || i4 == 20 || i4 == 30 || i4 == 9 || i4 == 10) {
                return R.layout.smartspace_card;
            }
            switch (i4) {
                case 13:
                case 14:
                case 15:
                default:
                    return R.layout.smartspace_card;
            }
        }
        return 0;
    }

    public final int getLegacySecondaryCardRes(int i4) {
        if (i4 != -2) {
            if (i4 != -1) {
                if (i4 == 1 || i4 == 2) {
                    return 0;
                }
                if (i4 != 3) {
                    if (i4 == 4) {
                        return R.layout.smartspace_card_flight;
                    }
                    if (i4 == 6) {
                        return 0;
                    }
                    if (i4 != 18) {
                        if (i4 == 20 || i4 == 30) {
                            return R.layout.smartspace_card_doorbell;
                        }
                        if (i4 != 9) {
                            if (i4 != 10) {
                                switch (i4) {
                                    case 13:
                                        return R.layout.smartspace_card_shopping_list;
                                    case 14:
                                        return R.layout.smartspace_card_loyalty;
                                    case 15:
                                    default:
                                        return 0;
                                }
                            }
                            return R.layout.smartspace_card_weather_forecast;
                        }
                        return R.layout.smartspace_card_sports;
                    }
                }
                return R.layout.smartspace_card_generic_landscape_image;
            }
            return R.layout.smartspace_card_combination;
        }
        return R.layout.smartspace_card_combination_at_store;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean useRecycledViewForNewTarget(android.app.smartspace.SmartspaceTarget r3, android.app.smartspace.SmartspaceTarget r4) {
        /*
            r2 = this;
            java.lang.String r2 = "newTarget"
            kotlin.jvm.internal.h.e(r3, r2)
            r2 = 0
            if (r4 == 0) goto L76
            java.lang.String r0 = r3.getSmartspaceTargetId()
            java.lang.String r1 = r4.getSmartspaceTargetId()
            boolean r0 = kotlin.jvm.internal.h.a(r0, r1)
            if (r0 == 0) goto L76
            android.app.smartspace.SmartspaceAction r0 = r3.getHeaderAction()
            android.app.smartspace.SmartspaceAction r1 = r4.getHeaderAction()
            boolean r0 = b(r0, r1)
            if (r0 == 0) goto L76
            android.app.smartspace.SmartspaceAction r0 = r3.getBaseAction()
            android.app.smartspace.SmartspaceAction r1 = r4.getBaseAction()
            boolean r0 = b(r0, r1)
            if (r0 == 0) goto L76
            java.util.List r0 = r3.getActionChips()
            java.util.List r1 = r4.getActionChips()
            boolean r0 = c(r0, r1)
            if (r0 == 0) goto L76
            java.util.List r0 = r3.getIconGrid()
            java.util.List r1 = r4.getIconGrid()
            boolean r0 = c(r0, r1)
            if (r0 == 0) goto L76
            android.app.smartspace.uitemplatedata.BaseTemplateData r3 = r3.getTemplateData()
            android.app.smartspace.uitemplatedata.BaseTemplateData r4 = r4.getTemplateData()
            r0 = 1
            if (r3 != 0) goto L5d
            if (r4 != 0) goto L5d
            r1 = r0
            goto L5e
        L5d:
            r1 = r2
        L5e:
            if (r1 != 0) goto L72
            if (r3 == 0) goto L66
            if (r4 == 0) goto L66
            r1 = r0
            goto L67
        L66:
            r1 = r2
        L67:
            if (r1 == 0) goto L70
            boolean r3 = kotlin.jvm.internal.h.a(r3, r4)
            if (r3 == 0) goto L70
            goto L72
        L70:
            r3 = r2
            goto L73
        L72:
            r3 = r0
        L73:
            if (r3 == 0) goto L76
            r2 = r0
        L76:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: K2.z.useRecycledViewForNewTarget(android.app.smartspace.SmartspaceTarget, android.app.smartspace.SmartspaceTarget):boolean");
    }
}
