package com.android.launcher3.util;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.animation.Interpolator;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class WallpaperOffsetInterpolator {
    private static final int[] sTempInt = new int[2];
    private final Handler mHandler;
    private final boolean mIsRtl;
    private boolean mLockedToDefaultPage;
    private int mNumScreens;
    private boolean mWallpaperIsLiveWallpaper;
    private IBinder mWindowToken;
    private final Workspace mWorkspace;
    private final SimpleBroadcastReceiver mWallpaperChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: com.android.launcher3.util.P
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            Intent intent = (Intent) obj;
            WallpaperOffsetInterpolator.b(WallpaperOffsetInterpolator.this);
        }
    });
    private boolean mRegistered = false;

    /* loaded from: classes.dex */
    final class OffsetHandler extends Handler {
        private boolean mAnimating;
        private float mAnimationStartOffset;
        private long mAnimationStartTime;
        private float mCurrentOffset;
        private float mFinalOffset;
        private final Interpolator mInterpolator;
        private float mOffsetX;
        private final WallpaperManager mWM;

        public OffsetHandler(Context context) {
            super(Executors.UI_HELPER_EXECUTOR.getLooper());
            this.mCurrentOffset = 0.5f;
            this.mInterpolator = y0.e.f12927A;
            this.mWM = WallpaperManager.getInstance(context);
        }

        private void setOffsetSafely(IBinder iBinder) {
            try {
                this.mWM.setWallpaperOffsets(iBinder, this.mCurrentOffset, 0.5f);
            } catch (IllegalArgumentException e4) {
                Log.e("WPOffsetInterpolator", "Error updating wallpaper offset: " + e4);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r11) {
            /*
                r10 = this;
                java.lang.Object r0 = r11.obj
                android.os.IBinder r0 = (android.os.IBinder) r0
                if (r0 != 0) goto L7
                return
            L7:
                int r1 = r11.what
                r2 = 0
                r3 = 3
                r4 = 1065353216(0x3f800000, float:1.0)
                r5 = 1
                if (r1 == r5) goto L3e
                r6 = 2
                if (r1 == r6) goto L4a
                if (r1 == r3) goto L53
                r3 = 4
                if (r1 == r3) goto L30
                r11 = 5
                if (r1 == r11) goto L1c
                return
            L1c:
                float r11 = r10.mCurrentOffset
                float r1 = r10.mFinalOffset
                int r11 = java.lang.Float.compare(r11, r1)
                if (r11 == 0) goto L2d
                float r11 = r10.mFinalOffset
                r10.mCurrentOffset = r11
                r10.setOffsetSafely(r0)
            L2d:
                r10.mAnimating = r2
                return
            L30:
                int r11 = r11.arg1
                int r11 = r11 - r5
                float r11 = (float) r11
                float r11 = r4 / r11
                r10.mOffsetX = r11
                android.app.WallpaperManager r10 = r10.mWM
                r10.setWallpaperOffsetSteps(r11, r4)
                return
            L3e:
                r10.mAnimating = r5
                float r1 = r10.mCurrentOffset
                r10.mAnimationStartOffset = r1
                long r6 = r11.getWhen()
                r10.mAnimationStartTime = r6
            L4a:
                int r1 = r11.arg1
                float r1 = (float) r1
                int r11 = r11.arg2
                float r11 = (float) r11
                float r1 = r1 / r11
                r10.mFinalOffset = r1
            L53:
                float r11 = r10.mCurrentOffset
                boolean r1 = r10.mAnimating
                if (r1 == 0) goto L80
                long r6 = android.os.SystemClock.uptimeMillis()
                long r8 = r10.mAnimationStartTime
                long r6 = r6 - r8
                float r1 = (float) r6
                r8 = 1132068864(0x437a0000, float:250.0)
                float r1 = r1 / r8
                android.view.animation.Interpolator r8 = r10.mInterpolator
                android.view.animation.DecelerateInterpolator r8 = (android.view.animation.DecelerateInterpolator) r8
                float r1 = r8.getInterpolation(r1)
                float r8 = r10.mAnimationStartOffset
                float r9 = r10.mFinalOffset
                float r1 = w.f.a(r9, r8, r1, r8)
                r10.mCurrentOffset = r1
                r8 = 250(0xfa, double:1.235E-321)
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L7d
                r2 = r5
            L7d:
                r10.mAnimating = r2
                goto L84
            L80:
                float r1 = r10.mFinalOffset
                r10.mCurrentOffset = r1
            L84:
                float r1 = r10.mCurrentOffset
                int r11 = java.lang.Float.compare(r1, r11)
                if (r11 == 0) goto L96
                r10.setOffsetSafely(r0)
                android.app.WallpaperManager r11 = r10.mWM
                float r1 = r10.mOffsetX
                r11.setWallpaperOffsetSteps(r1, r4)
            L96:
                boolean r11 = r10.mAnimating
                if (r11 == 0) goto La1
                android.os.Message r10 = android.os.Message.obtain(r10, r3, r0)
                r10.sendToTarget()
            La1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.WallpaperOffsetInterpolator.OffsetHandler.handleMessage(android.os.Message):void");
        }
    }

    public WallpaperOffsetInterpolator(Workspace workspace) {
        this.mWorkspace = workspace;
        this.mIsRtl = Utilities.isRtl(workspace.getResources());
        this.mHandler = new OffsetHandler(workspace.getContext());
    }

    public static void a(WallpaperOffsetInterpolator wallpaperOffsetInterpolator) {
        wallpaperOffsetInterpolator.mWallpaperIsLiveWallpaper = WallpaperManager.getInstance(wallpaperOffsetInterpolator.mWorkspace.getContext()).getWallpaperInfo() != null;
        Message.obtain(wallpaperOffsetInterpolator.mHandler, 4, wallpaperOffsetInterpolator.getNumPagesForWallpaperParallax(), 0, wallpaperOffsetInterpolator.mWindowToken).sendToTarget();
    }

    public static void b(WallpaperOffsetInterpolator wallpaperOffsetInterpolator) {
        wallpaperOffsetInterpolator.getClass();
        Executors.UI_HELPER_EXECUTOR.execute(new Q(wallpaperOffsetInterpolator));
    }

    private void wallpaperOffsetForScroll(int i4, int i5, int[] iArr) {
        iArr[1] = 1;
        boolean z4 = this.mLockedToDefaultPage;
        boolean z5 = this.mIsRtl;
        if (!z4 && i5 > 1) {
            int max = this.mWallpaperIsLiveWallpaper ? i5 : Math.max(4, i5);
            Workspace workspace = this.mWorkspace;
            int childCount = workspace.getChildCount();
            if (childCount >= 4 && workspace.hasExtraEmptyScreens()) {
                childCount -= workspace.getPanelCount();
            }
            int i6 = childCount - 1;
            int i7 = z5 ? i6 : 0;
            if (z5) {
                i6 = 0;
            }
            int scrollForPage = workspace.getScrollForPage(i7);
            int scrollForPage2 = workspace.getScrollForPage(i6) - scrollForPage;
            if (scrollForPage2 <= 0) {
                iArr[0] = 0;
                return;
            }
            int boundToRange = Utilities.boundToRange((i4 - scrollForPage) - workspace.getLayoutTransitionOffsetForPage(0), 0, scrollForPage2);
            int i8 = (max - 1) * scrollForPage2;
            iArr[1] = i8;
            iArr[0] = ((i5 - 1) * boundToRange) + (z5 ? i8 - ((i5 - 1) * scrollForPage2) : 0);
            return;
        }
        iArr[0] = z5 ? 1 : 0;
    }

    public final int getNumPagesForWallpaperParallax() {
        return this.mWallpaperIsLiveWallpaper ? this.mNumScreens : Math.max(4, this.mNumScreens);
    }

    public final boolean isLockedToDefaultPage() {
        return this.mLockedToDefaultPage;
    }

    public final void jumpToFinal() {
        Message.obtain(this.mHandler, 5, this.mWindowToken).sendToTarget();
    }

    public final void setLockToDefaultPage(boolean z4) {
        this.mLockedToDefaultPage = z4;
    }

    public final void setWindowToken(IBinder iBinder) {
        this.mWindowToken = iBinder;
        Workspace workspace = this.mWorkspace;
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.mWallpaperChangeReceiver;
        if (iBinder == null && this.mRegistered) {
            Context context = workspace.getContext();
            simpleBroadcastReceiver.getClass();
            try {
                context.unregisterReceiver(simpleBroadcastReceiver);
            } catch (IllegalArgumentException unused) {
            }
            this.mRegistered = false;
        } else if (iBinder == null || this.mRegistered) {
        } else {
            simpleBroadcastReceiver.register(workspace.getContext(), "android.intent.action.WALLPAPER_CHANGED");
            Executors.UI_HELPER_EXECUTOR.execute(new Q(this));
            this.mRegistered = true;
        }
    }

    public final void syncWithScroll() {
        Workspace workspace = this.mWorkspace;
        int childCount = workspace.getChildCount();
        if (childCount >= 4 && workspace.hasExtraEmptyScreens()) {
            childCount -= workspace.getPanelCount();
        }
        int ceil = (int) Math.ceil(childCount / workspace.getPanelCount());
        int scrollX = workspace.getScrollX();
        int[] iArr = sTempInt;
        wallpaperOffsetForScroll(scrollX, ceil, iArr);
        Handler handler = this.mHandler;
        Message obtain = Message.obtain(handler, 2, iArr[0], iArr[1], this.mWindowToken);
        int i4 = this.mNumScreens;
        if (ceil != i4) {
            if (i4 > 0) {
                obtain.what = 1;
            }
            this.mNumScreens = ceil;
            Message.obtain(handler, 4, getNumPagesForWallpaperParallax(), 0, this.mWindowToken).sendToTarget();
        }
        obtain.sendToTarget();
    }

    public final float wallpaperOffsetForScroll(int i4) {
        Workspace workspace = this.mWorkspace;
        int childCount = workspace.getChildCount();
        if (childCount >= 4 && workspace.hasExtraEmptyScreens()) {
            childCount -= workspace.getPanelCount();
        }
        int[] iArr = sTempInt;
        wallpaperOffsetForScroll(i4, (int) Math.ceil(childCount / workspace.getPanelCount()), iArr);
        return iArr[0] / iArr[1];
    }
}
