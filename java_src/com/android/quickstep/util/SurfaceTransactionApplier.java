package com.android.quickstep.util;

import android.graphics.HardwareRenderer;
import android.os.Handler;
import android.os.Message;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.quickstep.RemoteAnimationTargets;
/* loaded from: classes.dex */
public class SurfaceTransactionApplier extends RemoteAnimationTargets.ReleaseCheck {
    private static final int MSG_UPDATE_SEQUENCE_NUMBER = 0;
    private final Handler mApplyHandler;
    private SurfaceControl mBarrierSurfaceControl;
    private boolean mInitialized;
    private int mLastSequenceNumber = 0;
    private ViewRootImpl mTargetViewRootImpl;

    public SurfaceTransactionApplier(final View view) {
        if (view.isAttachedToWindow()) {
            initialize(view);
        } else {
            this.mInitialized = false;
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.quickstep.util.SurfaceTransactionApplier.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    if (SurfaceTransactionApplier.this.mInitialized) {
                        return;
                    }
                    view.removeOnAttachStateChangeListener(this);
                    SurfaceTransactionApplier.this.initialize(view);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
        this.mApplyHandler = new Handler(new Handler.Callback() { // from class: com.android.quickstep.util.U
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return SurfaceTransactionApplier.this.onApplyMessage(message);
            }
        });
        setCanRelease(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize(View view) {
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        this.mTargetViewRootImpl = viewRootImpl;
        this.mBarrierSurfaceControl = viewRootImpl.getSurfaceControl();
        this.mInitialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleApply$0(int i4, SurfaceControl.Transaction transaction, long j4) {
        SurfaceControl surfaceControl = this.mBarrierSurfaceControl;
        if (surfaceControl == null || !surfaceControl.isValid()) {
            Message.obtain(this.mApplyHandler, 0, i4, 0).sendToTarget();
            return;
        }
        this.mTargetViewRootImpl.mergeWithNextTransaction(transaction, j4);
        Message.obtain(this.mApplyHandler, 0, i4, 0).sendToTarget();
    }

    public boolean onApplyMessage(Message message) {
        if (message.what == 0) {
            setCanRelease(message.arg1 == this.mLastSequenceNumber);
            return true;
        }
        return false;
    }

    public void scheduleApply(SurfaceTransaction surfaceTransaction) {
        if (!this.mInitialized) {
            surfaceTransaction.getTransaction().apply();
            return;
        }
        View view = this.mTargetViewRootImpl.getView();
        if (view == null) {
            return;
        }
        final SurfaceControl.Transaction transaction = surfaceTransaction.getTransaction();
        final int i4 = this.mLastSequenceNumber + 1;
        this.mLastSequenceNumber = i4;
        setCanRelease(false);
        this.mTargetViewRootImpl.registerRtFrameCallback(new HardwareRenderer.FrameDrawingCallback() { // from class: com.android.quickstep.util.V
            public final void onFrameDraw(long j4) {
                SurfaceTransactionApplier.this.lambda$scheduleApply$0(i4, transaction, j4);
            }
        });
        view.invalidate();
    }
}
