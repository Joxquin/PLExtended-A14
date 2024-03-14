package com.android.launcher3.views;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.views.OptionsPopupView;
import com.android.systemui.shared.R;
import java.util.Iterator;
/* loaded from: classes.dex */
public class AccessibilityActionsView extends View implements StateManager.StateListener {
    public AccessibilityActionsView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final AccessibilityNodeInfo createAccessibilityNodeInfo() {
        AccessibilityNodeInfo createAccessibilityNodeInfo = super.createAccessibilityNodeInfo();
        Launcher launcher = Launcher.getLauncher(getContext());
        createAccessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.all_apps_button_label, launcher.getText(R.string.all_apps_button_label)));
        Iterator it = OptionsPopupView.getOptions(launcher).iterator();
        while (it.hasNext()) {
            OptionsPopupView.OptionItem optionItem = (OptionsPopupView.OptionItem) it.next();
            createAccessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(optionItem.labelRes, optionItem.label));
        }
        return createAccessibilityNodeInfo;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        setImportantForAccessibility(((LauncherState) obj) == LauncherState.NORMAL ? 1 : 2);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i4, Bundle bundle) {
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        Launcher launcher = Launcher.getLauncher(getContext());
        if (i4 == R.string.all_apps_button_label) {
            launcher.getStateManager().goToState(LauncherState.ALL_APPS);
            return true;
        }
        Iterator it = OptionsPopupView.getOptions(launcher).iterator();
        while (it.hasNext()) {
            OptionsPopupView.OptionItem optionItem = (OptionsPopupView.OptionItem) it.next();
            if (optionItem.labelRes == i4) {
                StatsLogManager.EventEnum eventEnum = optionItem.eventId;
                if (eventEnum.getId() > 0) {
                    launcher.getStatsLogManager().logger().log(eventEnum);
                }
                if (optionItem.clickListener.onLongClick(this)) {
                    return true;
                }
            }
        }
        return false;
    }

    public AccessibilityActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AccessibilityActionsView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Launcher.getLauncher(context).getStateManager().addStateListener(this);
        setWillNotDraw(true);
    }
}
