package com.android.launcher3.accessibility;

import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class ShortcutMenuAccessibilityDelegate extends LauncherAccessibilityDelegate {
    public ShortcutMenuAccessibilityDelegate(Launcher launcher) {
        super(launcher);
        this.mActions.put(R.id.action_dismiss_notification, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_dismiss_notification, R.string.action_dismiss_notification, 52));
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate, com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final void getSupportedActions(View view, ItemInfo itemInfo, List list) {
        if (view.getParent() instanceof DeepShortcutView) {
            ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_add_to_workspace));
        } else if ((view instanceof NotificationMainView) && ((NotificationMainView) view).canChildBeDismissed()) {
            ((ArrayList) list).add((BaseAccessibilityDelegate.LauncherAction) this.mActions.get(R.id.action_dismiss_notification));
        }
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate, com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final boolean performAction(View view, ItemInfo itemInfo, int i4, boolean z4) {
        if (i4 != R.id.action_add_to_workspace) {
            if (i4 == R.id.action_dismiss_notification && (view instanceof NotificationMainView)) {
                ((NotificationMainView) view).onChildDismissed();
                announceConfirmation(R.string.notification_dismissed);
                return true;
            }
            return false;
        } else if (view.getParent() instanceof DeepShortcutView) {
            final WorkspaceItemInfo finalInfo = ((DeepShortcutView) view.getParent()).getFinalInfo();
            final int[] iArr = new int[2];
            final int findSpaceOnWorkspace = findSpaceOnWorkspace(itemInfo, iArr);
            if (findSpaceOnWorkspace == -1) {
                return false;
            }
            ((Launcher) this.mContext).getStateManager().goToState((BaseState) LauncherState.NORMAL, true, AnimatorListeners.forSuccessCallback(new Runnable() { // from class: com.android.launcher3.accessibility.d
                @Override // java.lang.Runnable
                public final void run() {
                    ShortcutMenuAccessibilityDelegate shortcutMenuAccessibilityDelegate = ShortcutMenuAccessibilityDelegate.this;
                    WorkspaceItemInfo workspaceItemInfo = finalInfo;
                    int i5 = findSpaceOnWorkspace;
                    int[] iArr2 = iArr;
                    ((Launcher) shortcutMenuAccessibilityDelegate.mContext).getModelWriter().addItemToDatabase(workspaceItemInfo, -100, i5, iArr2[0], iArr2[1]);
                    ((Launcher) shortcutMenuAccessibilityDelegate.mContext).bindItems(Collections.singletonList(workspaceItemInfo), true, false);
                    AbstractFloatingView.closeAllOpenViews((ActivityContext) shortcutMenuAccessibilityDelegate.mContext);
                    shortcutMenuAccessibilityDelegate.announceConfirmation(R.string.item_added_to_workspace);
                }
            }));
            return true;
        } else {
            return false;
        }
    }
}
