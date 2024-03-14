package com.android.launcher3.accessibility;

import M.e;
import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class DragAndDropAccessibilityDelegate extends Q.c implements View.OnClickListener, View.OnHoverListener {
    protected final Context mContext;
    protected final LauncherAccessibilityDelegate mDelegate;
    protected final DragLayer mDragLayer;
    protected final int[] mTempCords;
    protected final Rect mTempRect;
    protected final CellLayout mView;

    public DragAndDropAccessibilityDelegate(CellLayout cellLayout) {
        super(cellLayout);
        this.mTempRect = new Rect();
        this.mTempCords = new int[2];
        this.mView = cellLayout;
        Context context = cellLayout.getContext();
        this.mContext = context;
        Launcher launcher = Launcher.getLauncher(context);
        this.mDelegate = launcher.getAccessibilityDelegate();
        this.mDragLayer = launcher.getDragLayer();
    }

    private Rect getItemBounds(int i4) {
        int countX = i4 % this.mView.getCountX();
        int countX2 = i4 / this.mView.getCountX();
        BaseAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        CellLayout cellLayout = this.mView;
        ItemInfo itemInfo = dragInfo.info;
        cellLayout.cellToRect(countX, countX2, itemInfo.spanX, itemInfo.spanY, this.mTempRect);
        return this.mTempRect;
    }

    public abstract String getConfirmationForIconDrop(int i4);

    public final CellLayout getHost() {
        return this.mView;
    }

    public abstract String getLocationDescriptionForIconDrop(int i4);

    @Override // Q.c
    public final int getVirtualViewAt(float f4, float f5) {
        if (f4 < 0.0f || f5 < 0.0f || f4 > this.mView.getMeasuredWidth() || f5 > this.mView.getMeasuredHeight()) {
            return Integer.MIN_VALUE;
        }
        this.mView.pointToCellExact((int) f4, (int) f5, this.mTempCords);
        int[] iArr = this.mTempCords;
        return intersectsValidDropTarget((this.mView.getCountX() * iArr[1]) + iArr[0]);
    }

    @Override // Q.c
    public final void getVisibleVirtualViews(List list) {
        int countY = this.mView.getCountY() * this.mView.getCountX();
        for (int i4 = 0; i4 < countY; i4++) {
            if (intersectsValidDropTarget(i4) == i4) {
                ((ArrayList) list).add(Integer.valueOf(i4));
            }
        }
    }

    public abstract int intersectsValidDropTarget(int i4);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        onPerformActionForVirtualView(getFocusedVirtualView(), 16);
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        return dispatchHoverEvent(motionEvent);
    }

    @Override // Q.c
    public final boolean onPerformActionForVirtualView(int i4, int i5) {
        if (i5 != 16 || i4 == Integer.MIN_VALUE) {
            return false;
        }
        this.mDelegate.handleAccessibleDrop(this.mView, getItemBounds(i4), getConfirmationForIconDrop(i4));
        return true;
    }

    @Override // Q.c
    public final void onPopulateEventForVirtualView(AccessibilityEvent accessibilityEvent, int i4) {
        if (i4 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        accessibilityEvent.setContentDescription(this.mContext.getString(R.string.action_move_here));
    }

    @Override // Q.c
    public final void onPopulateNodeForVirtualView(int i4, e eVar) {
        if (i4 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        eVar.j(getLocationDescriptionForIconDrop(i4));
        Rect itemBounds = getItemBounds(i4);
        eVar.g(itemBounds);
        int[] iArr = this.mTempCords;
        iArr[1] = 0;
        iArr[0] = 0;
        float descendantCoordRelativeToSelf = this.mDragLayer.getDescendantCoordRelativeToSelf((View) this.mView, iArr);
        Rect rect = this.mTempRect;
        int[] iArr2 = this.mTempCords;
        int i5 = iArr2[0];
        rect.left = ((int) (itemBounds.left * descendantCoordRelativeToSelf)) + i5;
        rect.right = i5 + ((int) (itemBounds.right * descendantCoordRelativeToSelf));
        int i6 = iArr2[1];
        rect.top = ((int) (itemBounds.top * descendantCoordRelativeToSelf)) + i6;
        rect.bottom = i6 + ((int) (itemBounds.bottom * descendantCoordRelativeToSelf));
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        accessibilityNodeInfo.setBoundsInScreen(rect);
        eVar.a(16);
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setFocusable(true);
    }
}
