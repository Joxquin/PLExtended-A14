package com.android.quickstep.util;

import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public abstract class CancellableTask implements Runnable {
    private boolean mCancelled = false;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$run$0(Object obj) {
        if (this.mCancelled) {
            return;
        }
        handleResult(obj);
    }

    public void cancel() {
        this.mCancelled = true;
    }

    public abstract Object getResultOnBg();

    public abstract void handleResult(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mCancelled) {
            return;
        }
        final Object resultOnBg = getResultOnBg();
        if (this.mCancelled) {
            return;
        }
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.p
            @Override // java.lang.Runnable
            public final void run() {
                CancellableTask.this.lambda$run$0(resultOnBg);
            }
        });
    }
}
