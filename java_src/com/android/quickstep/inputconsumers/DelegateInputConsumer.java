package com.android.quickstep.inputconsumers;

import android.view.MotionEvent;
import com.android.launcher3.testing.TestLogging;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public abstract class DelegateInputConsumer implements InputConsumer {
    protected static final int STATE_ACTIVE = 1;
    protected static final int STATE_DELEGATE_ACTIVE = 2;
    protected static final int STATE_INACTIVE = 0;
    protected final InputConsumer mDelegate;
    protected final InputMonitorCompat mInputMonitor;
    protected int mState = 0;

    public DelegateInputConsumer(InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        this.mDelegate = inputConsumer;
        this.mInputMonitor = inputMonitorCompat;
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return this.mDelegate.allowInterceptByParent() && this.mState != 1;
    }

    @Override // com.android.quickstep.InputConsumer
    public InputConsumer getActiveConsumerInHierarchy() {
        return this.mState == 1 ? this : this.mDelegate.getActiveConsumerInHierarchy();
    }

    public abstract String getDelegatorName();

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mDelegate.onConsumerAboutToBeSwitched();
    }

    public void setActive(MotionEvent motionEvent) {
        ActiveGestureLog.INSTANCE.addLog(new ActiveGestureLog.CompoundString(getDelegatorName()).append(" became active"));
        this.mState = 1;
        TestLogging.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitor.pilferPointers();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mDelegate.onMotionEvent(obtain);
        obtain.recycle();
    }
}
