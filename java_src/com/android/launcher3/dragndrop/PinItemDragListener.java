package com.android.launcher3.dragndrop;

import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.util.ActivityTracker;
import java.util.UUID;
/* loaded from: classes.dex */
public final class PinItemDragListener implements View.OnDragListener, DragSource, DragOptions.PreDragCondition, ActivityTracker.SchedulerCallback {
    private LauncherDragController mDragController;
    protected Launcher mLauncher;
    private final int mPreviewBitmapWidth;
    private final Rect mPreviewRect;
    private final float mPreviewScale;
    private final int mPreviewViewWidth;
    private final LauncherApps.PinItemRequest mRequest;
    private final String mId = UUID.randomUUID().toString();
    private final CancellationSignal mCancelSignal = new CancellationSignal();

    public PinItemDragListener(LauncherApps.PinItemRequest pinItemRequest, Rect rect, int i4, int i5, float f4) {
        this.mPreviewRect = rect;
        this.mPreviewBitmapWidth = i4;
        this.mPreviewViewWidth = i5;
        this.mRequest = pinItemRequest;
        this.mPreviewScale = f4;
    }

    public final String a() {
        return "com.android.launcher3.drag_and_drop/" + this.mId;
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public final boolean init(BaseActivity baseActivity, boolean z4) {
        Launcher launcher = (Launcher) baseActivity;
        AbstractFloatingView.closeAllOpenViews(launcher, z4);
        launcher.getStateManager().goToState(LauncherState.NORMAL, z4);
        launcher.getDragLayer().setOnDragListener(this);
        launcher.getRotationHelper().setStateHandlerRequest(2);
        this.mLauncher = launcher;
        this.mDragController = (LauncherDragController) launcher.getDragController();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0  */
    @Override // android.view.View.OnDragListener
    /* renamed from: onDrag$com$android$launcher3$dragndrop$BaseItemDragListener */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onDrag(android.view.View r10, android.view.DragEvent r11) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.PinItemDragListener.onDrag(android.view.View, android.view.DragEvent):boolean");
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
        postCleanup();
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragEnd(DropTarget.DragObject dragObject, boolean z4) {
        if (z4) {
            dragObject.dragView.setAlpha(1.0f);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragStart(DropTarget.DragObject dragObject) {
        this.mLauncher.getDragLayer().setAlpha(1.0f);
        dragObject.dragView.setAlpha(0.5f);
    }

    public final void postCleanup() {
        if (this.mLauncher != null) {
            Intent intent = new Intent(this.mLauncher.getIntent());
            intent.removeExtra("pin_item_drag_listener");
            this.mLauncher.setIntent(intent);
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.launcher3.dragndrop.a
            @Override // java.lang.Runnable
            public final void run() {
                PinItemDragListener pinItemDragListener = PinItemDragListener.this;
                Launcher launcher = pinItemDragListener.mLauncher;
                if (launcher != null) {
                    launcher.getRotationHelper().setStateHandlerRequest(0);
                    pinItemDragListener.mLauncher.getDragLayer().setOnDragListener(null);
                }
            }
        });
        this.mCancelSignal.cancel();
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final boolean shouldStartDrag(double d4) {
        return !this.mLauncher.isWorkspaceLocked();
    }
}
