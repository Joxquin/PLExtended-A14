package com.android.quickstep;

import android.graphics.HardwareRenderer;
import android.os.Handler;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import com.android.launcher3.Utilities;
import com.android.quickstep.ViewUtils;
import java.util.function.BooleanSupplier;
/* loaded from: classes.dex */
public class ViewUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class FrameHandler implements HardwareRenderer.FrameDrawingCallback, ViewRootImpl.SurfaceChangedCallback {
        final BooleanSupplier mCancelled;
        final Runnable mFinishCallback;
        boolean mFinished;
        final ViewRootImpl mViewRoot;
        boolean mSurfaceCallbackRegistered = false;
        int mDeferFrameCount = 1;
        final Handler mHandler = new Handler();

        public FrameHandler(View view, Runnable runnable, BooleanSupplier booleanSupplier) {
            this.mViewRoot = view.getViewRootImpl();
            this.mFinishCallback = runnable;
            this.mCancelled = booleanSupplier;
        }

        private void finish() {
            if (this.mFinished) {
                return;
            }
            this.mFinished = true;
            this.mDeferFrameCount = 0;
            Runnable runnable = this.mFinishCallback;
            if (runnable != null) {
                runnable.run();
            }
            ViewRootImpl viewRootImpl = this.mViewRoot;
            if (viewRootImpl != null) {
                viewRootImpl.removeSurfaceChangedCallback(this);
                this.mSurfaceCallbackRegistered = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFrame() {
            if (this.mCancelled.getAsBoolean()) {
                return;
            }
            int i4 = this.mDeferFrameCount;
            if (i4 <= 0) {
                finish();
                return;
            }
            this.mDeferFrameCount = i4 - 1;
            schedule();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean schedule() {
            ViewRootImpl viewRootImpl = this.mViewRoot;
            if (viewRootImpl == null || viewRootImpl.getView() == null) {
                return false;
            }
            if (!this.mSurfaceCallbackRegistered) {
                this.mSurfaceCallbackRegistered = true;
                this.mViewRoot.addSurfaceChangedCallback(this);
            }
            this.mViewRoot.registerRtFrameCallback(this);
            this.mViewRoot.getView().invalidate();
            return true;
        }

        public void onFrameDraw(long j4) {
            Utilities.postAsyncCallback(this.mHandler, new Runnable() { // from class: com.android.quickstep.k2
                @Override // java.lang.Runnable
                public final void run() {
                    ViewUtils.FrameHandler.this.onFrame();
                }
            });
        }

        public void surfaceCreated(SurfaceControl.Transaction transaction) {
        }

        public void surfaceDestroyed() {
            finish();
        }

        public void surfaceReplaced(SurfaceControl.Transaction transaction) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$postFrameDrawn$0() {
        return false;
    }

    public static boolean postFrameDrawn(View view, Runnable runnable) {
        return postFrameDrawn(view, runnable, new j2());
    }

    public static boolean postFrameDrawn(View view, Runnable runnable, BooleanSupplier booleanSupplier) {
        return new FrameHandler(view, runnable, booleanSupplier).schedule();
    }
}
