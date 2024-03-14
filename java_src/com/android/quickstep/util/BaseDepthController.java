package com.android.quickstep.util;

import android.app.WallpaperManager;
import android.os.IBinder;
import android.util.FloatProperty;
import android.util.Log;
import android.view.AttachedSurfaceControl;
import android.view.SurfaceControl;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.taskbar.C0449q;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.BlurUtils;
/* loaded from: classes.dex */
public class BaseDepthController {
    private static final FloatProperty DEPTH = new FloatProperty("depth") { // from class: com.android.quickstep.util.BaseDepthController.1
        @Override // android.util.Property
        public Float get(BaseDepthController baseDepthController) {
            return Float.valueOf(baseDepthController.mDepth);
        }

        @Override // android.util.FloatProperty
        public void setValue(BaseDepthController baseDepthController, float f4) {
            baseDepthController.setDepth(f4);
        }
    };
    private static final int DEPTH_INDEX_COUNT = 2;
    private static final int DEPTH_INDEX_STATE_TRANSITION = 0;
    private static final int DEPTH_INDEX_WIDGET = 1;
    private static final String TAG = "BaseDepthController";
    protected boolean mCrossWindowBlursEnabled;
    protected int mCurrentBlur;
    private float mDepth;
    private boolean mHasContentBehindLauncher;
    protected boolean mInEarlyWakeUp;
    protected final Launcher mLauncher;
    protected final int mMaxBlurRadius;
    protected boolean mPauseBlurs;
    protected SurfaceControl mSurface;
    protected boolean mWaitingOnSurfaceValidity;
    protected final WallpaperManager mWallpaperManager;
    public final MultiPropertyFactory.MultiProperty stateDepth;
    public final MultiPropertyFactory.MultiProperty widgetDepth;

    public BaseDepthController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mMaxBlurRadius = launcher.getResources().getInteger(R.integer.max_depth_blur_radius);
        this.mWallpaperManager = (WallpaperManager) launcher.getSystemService(WallpaperManager.class);
        MultiPropertyFactory multiPropertyFactory = new MultiPropertyFactory(this, DEPTH, 2, new C0449q());
        this.stateDepth = multiPropertyFactory.get(0);
        this.widgetDepth = multiPropertyFactory.get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDepth(float f4) {
        float boundToRange = ((int) (Utilities.boundToRange(f4, 0.0f, 1.0f) * 256.0f)) / 256.0f;
        if (Float.compare(this.mDepth, boundToRange) == 0) {
            return;
        }
        this.mDepth = boundToRange;
        applyDepthAndBlur();
    }

    public void applyDepthAndBlur() {
        float f4 = this.mDepth;
        IBinder windowToken = this.mLauncher.getRootView().getWindowToken();
        if (windowToken != null) {
            this.mWallpaperManager.setWallpaperZoomOut(windowToken, f4 / 3.0f);
        }
        if (BlurUtils.supportsBlursOnWindows()) {
            SurfaceControl surfaceControl = this.mSurface;
            if (surfaceControl == null) {
                Log.d(TAG, "mSurface is null and mCurrentBlur is: " + this.mCurrentBlur);
            } else if (!surfaceControl.isValid()) {
                Log.d(TAG, "mSurface is not valid");
                this.mWaitingOnSurfaceValidity = true;
                onInvalidSurface();
            } else {
                this.mWaitingOnSurfaceValidity = false;
                boolean isFullyOpaque = this.mLauncher.getScrimView().isFullyOpaque();
                boolean z4 = (this.mHasContentBehindLauncher || !isFullyOpaque || this.mPauseBlurs) ? false : true;
                this.mCurrentBlur = (!this.mCrossWindowBlursEnabled || isFullyOpaque || this.mPauseBlurs) ? 0 : (int) (this.mMaxBlurRadius * f4);
                SurfaceControl.Transaction opaque = new SurfaceControl.Transaction().setBackgroundBlurRadius(this.mSurface, this.mCurrentBlur).setOpaque(this.mSurface, z4);
                boolean z5 = f4 > 0.0f && f4 < 1.0f;
                if (z5 && !this.mInEarlyWakeUp) {
                    opaque.setEarlyWakeupStart();
                    this.mInEarlyWakeUp = true;
                } else if (!z5 && this.mInEarlyWakeUp) {
                    opaque.setEarlyWakeupEnd();
                    this.mInEarlyWakeUp = false;
                }
                AttachedSurfaceControl rootSurfaceControl = this.mLauncher.getRootView().getRootSurfaceControl();
                if (rootSurfaceControl != null) {
                    rootSurfaceControl.applyTransactionOnDraw(opaque);
                }
            }
        }
    }

    public void onInvalidSurface() {
    }

    public void pauseBlursOnWindows(boolean z4) {
        if (z4 != this.mPauseBlurs) {
            this.mPauseBlurs = z4;
            applyDepthAndBlur();
        }
    }

    public void setCrossWindowBlursEnabled(boolean z4) {
        this.mCrossWindowBlursEnabled = z4;
        applyDepthAndBlur();
    }

    public void setHasContentBehindLauncher(boolean z4) {
        this.mHasContentBehindLauncher = z4;
    }

    public void setSurface(SurfaceControl surfaceControl) {
        if (this.mSurface != surfaceControl || this.mWaitingOnSurfaceValidity) {
            this.mSurface = surfaceControl;
            Log.d(TAG, "setSurface:\n\tmWaitingOnSurfaceValidity: " + this.mWaitingOnSurfaceValidity + "\n\tmSurface: " + this.mSurface);
            applyDepthAndBlur();
        }
    }
}
