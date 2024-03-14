package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.Point;
import com.android.launcher3.DropTarget;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.views.OptionsPopupView;
/* loaded from: classes.dex */
public final class P1 implements DragOptions.PreDragCondition {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ float f6674d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ OptionsPopupView f6675e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Point f6676f;

    public P1(float f4, OptionsPopupView optionsPopupView, Point point) {
        this.f6674d = f4;
        this.f6675e = optionsPopupView;
        this.f6676f = point;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final Point getDragOffset() {
        return this.f6676f;
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragEnd(DropTarget.DragObject dragObject, boolean z4) {
        if (z4) {
            dragObject.dragView.setVisibility(0);
            OptionsPopupView optionsPopupView = this.f6675e;
            if (optionsPopupView != null) {
                optionsPopupView.close(true);
            }
            DragView dragView = dragObject.dragView;
            Point point = this.f6676f;
            dragView.animateShift(-point.x, -point.y);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final void onPreDragStart(DropTarget.DragObject dragObject) {
        dragObject.dragView.setVisibility(4);
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public final boolean shouldStartDrag(double d4) {
        return d4 > ((double) this.f6674d);
    }
}
