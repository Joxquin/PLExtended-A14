package com.android.launcher3.accessibility;

import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.PagedView;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import java.util.function.Function;
/* loaded from: classes.dex */
public class AccessibleDragListenerAdapter implements DragController.DragListener, ViewGroup.OnHierarchyChangeListener {
    private final Function mDelegateFactory;
    private final ViewGroup mViewGroup;

    public AccessibleDragListenerAdapter(PagedView pagedView, Function function) {
        this.mViewGroup = pagedView;
        this.mDelegateFactory = function;
    }

    public void enableAccessibleDrag(boolean z4) {
        for (int i4 = 0; i4 < this.mViewGroup.getChildCount(); i4++) {
            setEnableForLayout((CellLayout) this.mViewGroup.getChildAt(i4), z4);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        if (view == this.mViewGroup) {
            setEnableForLayout((CellLayout) view2, true);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        if (view == this.mViewGroup) {
            setEnableForLayout((CellLayout) view2, false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        this.mViewGroup.setOnHierarchyChangeListener(null);
        enableAccessibleDrag(false);
        Launcher.getLauncher(this.mViewGroup.getContext()).getDragController().removeDragListener(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.mViewGroup.setOnHierarchyChangeListener(this);
        enableAccessibleDrag(true);
    }

    public final void setEnableForLayout(CellLayout cellLayout, boolean z4) {
        cellLayout.setDragAndDropAccessibilityDelegate(z4 ? (DragAndDropAccessibilityDelegate) this.mDelegateFactory.apply(cellLayout) : null);
    }
}
