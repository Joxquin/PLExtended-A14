package com.android.launcher3.util;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class RunnableList {
    private ArrayList mList = null;
    private boolean mDestroyed = false;

    public final void add(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (this.mDestroyed) {
            runnable.run();
            return;
        }
        if (this.mList == null) {
            this.mList = new ArrayList();
        }
        this.mList.add(runnable);
    }

    public final void executeAllAndClear() {
        ArrayList arrayList = this.mList;
        if (arrayList != null) {
            this.mList = null;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((Runnable) arrayList.get(i4)).run();
            }
        }
    }

    public final void executeAllAndDestroy() {
        this.mDestroyed = true;
        executeAllAndClear();
    }
}
