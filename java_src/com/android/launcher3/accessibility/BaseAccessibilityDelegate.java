package com.android.launcher3.accessibility;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BubbleTextHolder;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class BaseAccessibilityDelegate extends View.AccessibilityDelegate implements DragController.DragListener {
    protected final Context mContext;
    protected final SparseArray mActions = new SparseArray();
    protected DragInfo mDragInfo = null;

    /* loaded from: classes.dex */
    public final class DragInfo {
        public DragType dragType;
        public ItemInfo info;
        public View item;
    }

    /* loaded from: classes.dex */
    public enum DragType {
        ICON,
        FOLDER,
        WIDGET
    }

    /* loaded from: classes.dex */
    public final class LauncherAction {
        public final AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
        public final int keyCode;
        private final BaseAccessibilityDelegate mDelegate;

        public LauncherAction(BaseAccessibilityDelegate baseAccessibilityDelegate, int i4, int i5, int i6) {
            this.keyCode = i6;
            this.accessibilityAction = new AccessibilityNodeInfo.AccessibilityAction(i4, baseAccessibilityDelegate.mContext.getString(i5));
            this.mDelegate = baseAccessibilityDelegate;
        }

        public final boolean invokeFromKeyboard(View view) {
            if (view == null || !(view.getTag() instanceof ItemInfo)) {
                return false;
            }
            int id = this.accessibilityAction.getId();
            return this.mDelegate.performAction(view, (ItemInfo) view.getTag(), id, true);
        }
    }

    public BaseAccessibilityDelegate(Context context) {
        this.mContext = context;
    }

    public abstract void getSupportedActions(View view, ItemInfo itemInfo, List list);

    public final void handleAccessibleDrop(View view, Rect rect, String str) {
        if (isInAccessibleDrag()) {
            int[] iArr = new int[2];
            if (rect == null) {
                iArr[0] = view.getWidth() / 2;
                iArr[1] = view.getHeight() / 2;
            } else {
                iArr[0] = rect.centerX();
                iArr[1] = rect.centerY();
            }
            ((ActivityContext) this.mContext).getDragLayer().getDescendantCoordRelativeToSelf(view, iArr);
            ((ActivityContext) this.mContext).getDragController().completeAccessibleDrag(iArr);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ((ActivityContext) this.mContext).getDragLayer().announceForAccessibility(str);
        }
    }

    public final boolean isInAccessibleDrag() {
        return this.mDragInfo != null;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        ((ActivityContext) this.mContext).getDragController().removeDragListener(this);
        this.mDragInfo = null;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z4;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        if (view.getTag() instanceof ItemInfo) {
            ArrayList arrayList = new ArrayList();
            getSupportedActions(view, (ItemInfo) view.getTag(), arrayList);
            arrayList.forEach(new Consumer() { // from class: C0.a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    accessibilityNodeInfo.addAction(((BaseAccessibilityDelegate.LauncherAction) obj).accessibilityAction);
                }
            });
            if (view instanceof BubbleTextView) {
                z4 = ((BubbleTextView) view).canShowLongPressPopup();
            } else {
                if (view instanceof BubbleTextHolder) {
                    BubbleTextHolder bubbleTextHolder = (BubbleTextHolder) view;
                    if (bubbleTextHolder.getBubbleText() != null && bubbleTextHolder.getBubbleText().canShowLongPressPopup()) {
                        z4 = true;
                    }
                }
                z4 = false;
            }
            if (z4) {
                return;
            }
            accessibilityNodeInfo.setLongClickable(false);
            accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if ((view.getTag() instanceof ItemInfo) && performAction(view, (ItemInfo) view.getTag(), i4, false)) {
            return true;
        }
        return super.performAccessibilityAction(view, i4, bundle);
    }

    public abstract boolean performAction(View view, ItemInfo itemInfo, int i4, boolean z4);
}
