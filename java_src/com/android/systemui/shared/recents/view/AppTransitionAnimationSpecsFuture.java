package com.android.systemui.shared.recents.view;

import android.os.Handler;
import android.os.Looper;
import android.view.AppTransitionAnimationSpec;
import android.view.IAppTransitionAnimationSpecsFuture;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes.dex */
public abstract class AppTransitionAnimationSpecsFuture {
    private FutureTask mComposeTask = new FutureTask(new Callable() { // from class: com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture.1
        @Override // java.util.concurrent.Callable
        public List call() {
            return AppTransitionAnimationSpecsFuture.this.composeSpecs();
        }
    });
    private final IAppTransitionAnimationSpecsFuture mFuture = new IAppTransitionAnimationSpecsFuture.Stub() { // from class: com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture.2
        public AppTransitionAnimationSpec[] get() {
            try {
                if (!AppTransitionAnimationSpecsFuture.this.mComposeTask.isDone()) {
                    AppTransitionAnimationSpecsFuture.this.mHandler.post(AppTransitionAnimationSpecsFuture.this.mComposeTask);
                }
                List list = (List) AppTransitionAnimationSpecsFuture.this.mComposeTask.get();
                AppTransitionAnimationSpecsFuture.this.mComposeTask = null;
                if (list == null) {
                    return null;
                }
                AppTransitionAnimationSpec[] appTransitionAnimationSpecArr = new AppTransitionAnimationSpec[list.size()];
                for (int i4 = 0; i4 < list.size(); i4++) {
                    appTransitionAnimationSpecArr[i4] = ((AppTransitionAnimationSpecCompat) list.get(i4)).toAppTransitionAnimationSpec();
                }
                return appTransitionAnimationSpecArr;
            } catch (Exception unused) {
                return null;
            }
        }
    };
    private final Handler mHandler;

    public AppTransitionAnimationSpecsFuture(Handler handler) {
        this.mHandler = handler;
    }

    public abstract List composeSpecs();

    public final void composeSpecsSynchronous() {
        if (Looper.myLooper() != this.mHandler.getLooper()) {
            throw new RuntimeException("composeSpecsSynchronous() called from wrong looper");
        }
        this.mComposeTask.run();
    }

    public final IAppTransitionAnimationSpecsFuture getFuture() {
        return this.mFuture;
    }
}
