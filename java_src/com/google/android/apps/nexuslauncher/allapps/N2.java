package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.Point;
import com.android.launcher3.DropTarget;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.taskbar.TaskbarDragController;
import com.android.launcher3.views.OptionsPopupView;
/* loaded from: classes.dex */
public final class N2 implements DragOptions.PreDragCondition {

    /* renamed from: d  reason: collision with root package name */
    public DragView f6639d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6640e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ float f6641f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ OptionsPopupView f6642g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Point f6643h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ TaskbarToastSessionController f6644i;

    public N2(float f4, OptionsPopupView optionsPopupView, Point point, TaskbarToastSessionController taskbarToastSessionController) {
        this.f6641f = f4;
        this.f6642g = optionsPopupView;
        this.f6643h = point;
        this.f6644i = taskbarToastSessionController;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final Point getDragOffset() {
        return this.f6643h;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragEnd(DropTarget.DragObject dragObject, boolean z4) {
        this.f6639d = null;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragStart(DropTarget.DragObject dragObject) {
        DragView dragView = dragObject != null ? dragObject.dragView : null;
        this.f6639d = dragView;
        if (dragView != null) {
            TaskbarDragController dragController = this.f6644i.f6889d.getDragController();
            kotlin.jvm.internal.h.d(dragController, "overlayContext.dragController");
            dragView.setOnShiftAnimEndCallback(new M2(0, dragController));
        }
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final boolean shouldStartDrag(double d4) {
        DragView dragView = this.f6639d;
        if (dragView != null && d4 > this.f6641f) {
            if (!this.f6640e) {
                this.f6640e = true;
                OptionsPopupView optionsPopupView = this.f6642g;
                if (optionsPopupView != null) {
                    optionsPopupView.close(true);
                }
                Point point = this.f6643h;
                dragView.animateShift(-point.x, -point.y);
            }
            return dragView.isShiftAnimationFinished();
        }
        return false;
    }
}
