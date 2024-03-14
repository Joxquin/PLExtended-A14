package com.android.quickstep.util;

import com.android.systemui.shared.recents.model.Task;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class DesktopTask extends GroupTask {
    public final ArrayList tasks;

    public DesktopTask(ArrayList arrayList) {
        super((Task) arrayList.get(0), null, null, 3);
        this.tasks = arrayList;
    }

    @Override // com.android.quickstep.util.GroupTask
    public boolean containsTask(int i4) {
        Iterator it = this.tasks.iterator();
        while (it.hasNext()) {
            if (((Task) it.next()).key.id == i4) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.quickstep.util.GroupTask
    public boolean hasMultipleTasks() {
        return true;
    }

    @Override // com.android.quickstep.util.GroupTask
    public DesktopTask copy() {
        return new DesktopTask(this.tasks);
    }
}
