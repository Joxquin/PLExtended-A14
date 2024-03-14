package com.android.quickstep;

import com.android.quickstep.util.GroupTask;
import com.android.systemui.shared.recents.model.Task;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class RecentsFilterState {
    public static final Predicate DEFAULT_FILTER = new L0();
    public static final int MIN_FILTERING_TASK_COUNT = 2;
    private Map mInstanceCountMap;
    private String mPackageNameToFilter = null;
    private Runnable mOnFilterUpdatedListener = null;

    public static Predicate getFilter(final String str) {
        return str == null ? DEFAULT_FILTER : new Predicate() { // from class: com.android.quickstep.K0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getFilter$1;
                lambda$getFilter$1 = RecentsFilterState.lambda$getFilter$1(str, (GroupTask) obj);
                return lambda$getFilter$1;
            }
        };
    }

    private static void incrementOrAddIfNotExists(Map map, String str) {
        if (!map.containsKey(str)) {
            map.put(str, 0);
        }
        map.put(str, Integer.valueOf(((Integer) map.get(str)).intValue() + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getFilter$1(String str, GroupTask groupTask) {
        Task task = groupTask.task2;
        return (task != null && task.key.getPackageName().equals(str)) || groupTask.task1.key.getPackageName().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(GroupTask groupTask) {
        return true;
    }

    public Map getInstanceCountMap() {
        return this.mInstanceCountMap;
    }

    public String getPackageNameToFilter() {
        return this.mPackageNameToFilter;
    }

    public boolean isFiltered() {
        return this.mPackageNameToFilter != null;
    }

    public void setFilterBy(String str) {
        if (Objects.equals(str, this.mPackageNameToFilter)) {
            return;
        }
        this.mPackageNameToFilter = str;
        Runnable runnable = this.mOnFilterUpdatedListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setOnFilterUpdatedListener(Runnable runnable) {
        this.mOnFilterUpdatedListener = runnable;
    }

    public boolean shouldShowFilterUI(String str) {
        return !isFiltered() && ((Integer) getInstanceCountMap().get(str)).intValue() >= 2;
    }

    public void updateInstanceCountMap(List list) {
        this.mInstanceCountMap = getInstanceCountMap(list);
    }

    public static Map getInstanceCountMap(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GroupTask groupTask = (GroupTask) it.next();
            String packageName = groupTask.task1.key.getPackageName();
            Task task = groupTask.task2;
            String packageName2 = task == null ? null : task.key.getPackageName();
            incrementOrAddIfNotExists(hashMap, packageName);
            if (packageName2 != null) {
                incrementOrAddIfNotExists(hashMap, packageName2);
            }
        }
        return hashMap;
    }
}
