package com.android.launcher3.popup;

import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class LauncherPopupLiveUpdateHandler extends PopupLiveUpdateHandler {
    public LauncherPopupLiveUpdateHandler(Launcher launcher, PopupContainerWithArrow popupContainerWithArrow) {
        super(launcher, popupContainerWithArrow);
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public final void onWidgetsBound() {
        View view;
        View view2;
        BubbleTextView originalIcon = this.mPopupContainerWithArrow.getOriginalIcon();
        SystemShortcut shortcut = SystemShortcut.WIDGETS.getShortcut((Launcher) this.mContext, (ItemInfo) originalIcon.getTag(), originalIcon);
        PopupContainerWithArrow popupContainerWithArrow = this.mPopupContainerWithArrow;
        int childCount = popupContainerWithArrow.getChildCount();
        while (true) {
            childCount--;
            view = null;
            if (childCount < 0) {
                view2 = null;
                break;
            }
            view2 = popupContainerWithArrow.getChildAt(childCount);
            if (view2.getTag() instanceof SystemShortcut.Widgets) {
                break;
            }
        }
        if (view2 == null && this.mPopupContainerWithArrow.getWidgetContainer() != null) {
            ViewGroup widgetContainer = this.mPopupContainerWithArrow.getWidgetContainer();
            int childCount2 = widgetContainer.getChildCount();
            while (true) {
                childCount2--;
                if (childCount2 < 0) {
                    break;
                }
                View childAt = widgetContainer.getChildAt(childCount2);
                if (childAt.getTag() instanceof SystemShortcut.Widgets) {
                    view = childAt;
                    break;
                }
            }
            view2 = view;
        }
        if (shortcut == null || view2 != null) {
            if (shortcut != null || view2 == null) {
                return;
            }
            ViewGroup systemShortcutContainer = this.mPopupContainerWithArrow.getSystemShortcutContainer();
            PopupContainerWithArrow popupContainerWithArrow2 = this.mPopupContainerWithArrow;
            if (systemShortcutContainer != popupContainerWithArrow2 && popupContainerWithArrow2.getWidgetContainer() != null) {
                this.mPopupContainerWithArrow.getWidgetContainer().removeView(view2);
                return;
            }
            this.mPopupContainerWithArrow.close(false);
            PopupContainerWithArrow.showForIcon(this.mPopupContainerWithArrow.getOriginalIcon());
            return;
        }
        ViewGroup systemShortcutContainer2 = this.mPopupContainerWithArrow.getSystemShortcutContainer();
        PopupContainerWithArrow popupContainerWithArrow3 = this.mPopupContainerWithArrow;
        if (systemShortcutContainer2 == popupContainerWithArrow3) {
            popupContainerWithArrow3.close(false);
            PopupContainerWithArrow.showForIcon(this.mPopupContainerWithArrow.getOriginalIcon());
            return;
        }
        if (popupContainerWithArrow3.getWidgetContainer() == null) {
            PopupContainerWithArrow popupContainerWithArrow4 = this.mPopupContainerWithArrow;
            popupContainerWithArrow4.setWidgetContainer((ViewGroup) popupContainerWithArrow4.inflateAndAdd(R.layout.widget_shortcut_container, popupContainerWithArrow4));
        }
        PopupContainerWithArrow popupContainerWithArrow5 = this.mPopupContainerWithArrow;
        popupContainerWithArrow5.initializeWidgetShortcut(popupContainerWithArrow5.getWidgetContainer(), shortcut);
    }
}
