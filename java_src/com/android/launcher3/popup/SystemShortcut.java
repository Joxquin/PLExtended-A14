package com.android.launcher3.popup;

import android.app.ActivityOptions;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class SystemShortcut extends ItemInfo implements View.OnClickListener {
    private boolean isEnabled = true;
    protected int mAccessibilityActionId;
    private final int mIconResId;
    protected final ItemInfo mItemInfo;
    protected final int mLabelResId;
    protected final View mOriginalView;
    protected final Context mTarget;
    private static final String TAG = "SystemShortcut";
    public static final Factory WIDGETS = new Factory() { // from class: com.android.launcher3.popup.t
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
            SystemShortcut lambda$static$1;
            SystemShortcut lambda$static$0;
            switch (r1) {
                case 0:
                    lambda$static$0 = SystemShortcut.lambda$static$0((Launcher) context, itemInfo, view);
                    return lambda$static$0;
                case 1:
                    return new SystemShortcut.AppInfo((BaseDraggingActivity) context, itemInfo, view);
                default:
                    lambda$static$1 = SystemShortcut.lambda$static$1((BaseDraggingActivity) context, itemInfo, view);
                    return lambda$static$1;
            }
        }
    };
    public static final Factory APP_INFO = new Factory() { // from class: com.android.launcher3.popup.t
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
            SystemShortcut lambda$static$1;
            SystemShortcut lambda$static$0;
            switch (r1) {
                case 0:
                    lambda$static$0 = SystemShortcut.lambda$static$0((Launcher) context, itemInfo, view);
                    return lambda$static$0;
                case 1:
                    return new SystemShortcut.AppInfo((BaseDraggingActivity) context, itemInfo, view);
                default:
                    lambda$static$1 = SystemShortcut.lambda$static$1((BaseDraggingActivity) context, itemInfo, view);
                    return lambda$static$1;
            }
        }
    };
    public static final Factory INSTALL = new Factory() { // from class: com.android.launcher3.popup.t
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
            SystemShortcut lambda$static$1;
            SystemShortcut lambda$static$0;
            switch (r1) {
                case 0:
                    lambda$static$0 = SystemShortcut.lambda$static$0((Launcher) context, itemInfo, view);
                    return lambda$static$0;
                case 1:
                    return new SystemShortcut.AppInfo((BaseDraggingActivity) context, itemInfo, view);
                default:
                    lambda$static$1 = SystemShortcut.lambda$static$1((BaseDraggingActivity) context, itemInfo, view);
                    return lambda$static$1;
            }
        }
    };

    /* loaded from: classes.dex */
    public final class AppInfo extends SystemShortcut {
        private SplitAccessibilityInfo mSplitA11yInfo;

        /* loaded from: classes.dex */
        public final class SplitAccessibilityInfo {
            public final boolean containsMultipleTasks;
            public final int nodeId;
            public final CharSequence taskTitle;

            public SplitAccessibilityInfo(boolean z4, CharSequence charSequence, int i4) {
                this.containsMultipleTasks = z4;
                this.taskTitle = charSequence;
                this.nodeId = i4;
            }
        }

        public AppInfo(Context context, ItemInfo itemInfo, View view) {
            super(R.drawable.ic_info_no_shadow, R.string.app_info_drop_target_label, context, itemInfo, view);
        }

        @Override // com.android.launcher3.popup.SystemShortcut
        public final AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
            SplitAccessibilityInfo splitAccessibilityInfo = this.mSplitA11yInfo;
            if (splitAccessibilityInfo == null || !splitAccessibilityInfo.containsMultipleTasks) {
                return super.createAccessibilityAction(context);
            }
            return new AccessibilityNodeInfo.AccessibilityAction(this.mAccessibilityActionId, context.getString(R.string.split_app_info_accessibility, splitAccessibilityInfo.taskTitle));
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SystemShortcut.dismissTaskMenuView(this.mTarget);
            new PackageManagerHelper(this.mTarget).startDetailsActivityForInfo(this.mItemInfo, Utilities.getViewBounds(view), ActivityOptions.makeBasic().toBundle());
            ((ActivityContext) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP);
        }

        public AppInfo(Context context, WorkspaceItemInfo workspaceItemInfo, TaskView taskView, SplitAccessibilityInfo splitAccessibilityInfo) {
            this(context, workspaceItemInfo, taskView);
            this.mSplitA11yInfo = splitAccessibilityInfo;
            this.mAccessibilityActionId = splitAccessibilityInfo.nodeId;
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view);
    }

    /* loaded from: classes.dex */
    public final class Install extends SystemShortcut {
        public Install(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
            super(R.drawable.ic_install_no_shadow, R.string.install_drop_target_label, baseDraggingActivity, itemInfo, view);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((BaseDraggingActivity) this.mTarget).startActivitySafely(view, new PackageManagerHelper(view.getContext()).getMarketIntent(this.mItemInfo.getTargetComponent().getPackageName()), this.mItemInfo);
            AbstractFloatingView.closeAllOpenViews((ActivityContext) this.mTarget);
        }
    }

    /* loaded from: classes.dex */
    public final class Widgets extends SystemShortcut {
        public Widgets(Launcher launcher, ItemInfo itemInfo, View view) {
            super(R.drawable.ic_widget, R.string.widget_button_text, launcher, itemInfo, view);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractFloatingView.closeAllOpenViews((ActivityContext) this.mTarget);
            ((WidgetsBottomSheet) ((Launcher) this.mTarget).getLayoutInflater().inflate(R.layout.widgets_bottom_sheet, (ViewGroup) ((Launcher) this.mTarget).getDragLayer(), false)).populateAndShow(this.mItemInfo);
            ((Launcher) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP);
        }
    }

    public SystemShortcut(int i4, int i5, Context context, ItemInfo itemInfo, View view) {
        this.mIconResId = i4;
        this.mLabelResId = i5;
        this.mAccessibilityActionId = i5;
        this.mTarget = context;
        this.mItemInfo = itemInfo;
        this.mOriginalView = view;
    }

    public static void dismissTaskMenuView(Context context) {
        AbstractFloatingView.closeOpenViews((ActivityContext) context, true, 2661771);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SystemShortcut lambda$static$0(Launcher launcher, ItemInfo itemInfo, View view) {
        if (itemInfo.getTargetComponent() == null || launcher.getPopupDataProvider().getWidgetsForPackageUser(new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user)).isEmpty()) {
            return null;
        }
        return new Widgets(launcher, itemInfo, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SystemShortcut lambda$static$1(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
        boolean z4 = true;
        boolean z5 = (itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasStatusFlag(8);
        boolean isInstantApp = itemInfo instanceof com.android.launcher3.model.data.AppInfo ? InstantAppResolver.newInstance(baseDraggingActivity).isInstantApp((com.android.launcher3.model.data.AppInfo) itemInfo) : false;
        if (!z5 && !isInstantApp) {
            z4 = false;
        }
        if (z4) {
            return new Install(baseDraggingActivity, itemInfo, view);
        }
        return null;
    }

    public AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(this.mAccessibilityActionId, context.getText(this.mLabelResId));
    }

    public boolean hasHandlerForAction(int i4) {
        return this.mAccessibilityActionId == i4;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isLeftGroup() {
        return false;
    }

    public void setEnabled(boolean z4) {
        this.isEnabled = z4;
    }

    public void setIconAndContentDescriptionFor(ImageView imageView) {
        imageView.setImageResource(this.mIconResId);
        imageView.setContentDescription(imageView.getContext().getText(this.mLabelResId));
        imageView.setEnabled(this.isEnabled);
    }

    public void setIconAndLabelFor(View view, TextView textView) {
        view.setBackgroundResource(this.mIconResId);
        view.setEnabled(this.isEnabled);
        textView.setText(this.mLabelResId);
        textView.setEnabled(this.isEnabled);
    }

    public SystemShortcut(SystemShortcut systemShortcut) {
        this.mIconResId = systemShortcut.mIconResId;
        this.mLabelResId = systemShortcut.mLabelResId;
        this.mAccessibilityActionId = systemShortcut.mAccessibilityActionId;
        this.mTarget = systemShortcut.mTarget;
        this.mItemInfo = systemShortcut.mItemInfo;
        this.mOriginalView = systemShortcut.mOriginalView;
    }
}
