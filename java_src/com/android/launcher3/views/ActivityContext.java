package com.android.launcher3.views;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTargetHandler;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.KeyboardStateManager;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.util.ViewCache;
import com.android.systemui.shared.R;
import java.util.List;
/* loaded from: classes.dex */
public interface ActivityContext {
    static Context lookupContext(Context context) {
        Context lookupContextNoThrow = lookupContextNoThrow(context);
        if (lookupContextNoThrow != null) {
            return lookupContextNoThrow;
        }
        throw new IllegalArgumentException("Cannot find ActivityContext in parent tree");
    }

    static Context lookupContextNoThrow(Context context) {
        if (context instanceof ActivityContext) {
            return context;
        }
        if (context instanceof ContextWrapper) {
            return lookupContextNoThrow(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    default void addOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        getOnDeviceProfileChangeListeners().add(onDeviceProfileChangeListener);
    }

    default void applyOverwritesToLogItem(LauncherAtom$ItemInfo.Builder builder) {
    }

    default boolean canUseMultipleShadesForPopup() {
        return true;
    }

    default void dispatchDeviceProfileChanged() {
        DeviceProfile deviceProfile = getDeviceProfile();
        List onDeviceProfileChangeListeners = getOnDeviceProfileChangeListeners();
        for (int size = onDeviceProfileChangeListeners.size() - 1; size >= 0; size--) {
            ((DeviceProfile.OnDeviceProfileChangeListener) onDeviceProfileChangeListeners.get(size)).onDeviceProfileChanged(deviceProfile);
        }
    }

    default FolderIcon findFolderIcon(int i4) {
        return null;
    }

    default boolean finishAutoCancelActionMode() {
        return false;
    }

    default View.AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }

    default ActivityOptionsWrapper getActivityLaunchOptions(View view, ItemInfo itemInfo) {
        int i4;
        int i5;
        int i6;
        FastBitmapDrawable icon;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (!(view instanceof BubbleTextView) || (icon = ((BubbleTextView) view).getIcon()) == null) {
            i4 = measuredWidth;
            i5 = 0;
            i6 = 0;
        } else {
            Rect bounds = icon.getBounds();
            i5 = (measuredWidth - bounds.width()) / 2;
            i6 = view.getPaddingTop();
            i4 = bounds.width();
            measuredHeight = bounds.height();
        }
        ActivityOptions makeClipRevealAnimation = ActivityOptions.makeClipRevealAnimation(view, i5, i6, i4, measuredHeight);
        Utilities.allowBGLaunch(makeClipRevealAnimation);
        makeClipRevealAnimation.setLaunchDisplayId(view.getDisplay() != null ? view.getDisplay().getDisplayId() : 0);
        return new ActivityOptionsWrapper(makeClipRevealAnimation, new RunnableList());
    }

    default View.OnLongClickListener getAllAppsItemLongClickListener() {
        return new e();
    }

    default ActivityAllAppsContainerView getAppsView() {
        return null;
    }

    default CellPosMapper getCellPosMapper() {
        return CellPosMapper.DEFAULT;
    }

    DeviceProfile getDeviceProfile();

    default DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return null;
    }

    default DragController getDragController() {
        return null;
    }

    BaseDragLayer getDragLayer();

    default DropTargetHandler getDropTargetHandler() {
        return null;
    }

    default Rect getFolderBoundingBox() {
        return getDeviceProfile().getAbsoluteOpenFolderBounds();
    }

    default View.OnClickListener getItemOnClickListener() {
        return new d();
    }

    default LayoutInflater getLayoutInflater() {
        if (this instanceof Context) {
            Context context = (Context) this;
            return LayoutInflater.from(context).cloneInContext(context);
        }
        return null;
    }

    List getOnDeviceProfileChangeListeners();

    default OnboardingPrefs getOnboardingPrefs() {
        return null;
    }

    default PopupDataProvider getPopupDataProvider() {
        return null;
    }

    default StatsLogManager getStatsLogManager() {
        return StatsLogManager.newInstance((Context) this);
    }

    default StringCache getStringCache() {
        return null;
    }

    default ViewCache getViewCache() {
        return new ViewCache();
    }

    default void hideKeyboard() {
        BaseDragLayer dragLayer = getDragLayer();
        if (dragLayer == null) {
            return;
        }
        if (Utilities.ATLEAST_R) {
            WindowInsetsController windowInsetsController = dragLayer.getWindowInsetsController();
            WindowInsets rootWindowInsets = dragLayer.getRootWindowInsets();
            boolean z4 = rootWindowInsets != null && rootWindowInsets.isVisible(WindowInsets.Type.ime());
            if (windowInsetsController != null && z4) {
                StatsLogManager statsLogManager = getStatsLogManager();
                statsLogManager.keyboardStateManager().setKeyboardState(KeyboardStateManager.KeyboardState.HIDE);
                windowInsetsController.hide(WindowInsets.Type.ime());
                statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_KEYBOARD_CLOSED);
                return;
            }
        }
        final InputMethodManager inputMethodManager = (InputMethodManager) dragLayer.getContext().getSystemService(InputMethodManager.class);
        final IBinder windowToken = dragLayer.getWindowToken();
        if (inputMethodManager == null || windowToken == null) {
            return;
        }
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.views.f
            @Override // java.lang.Runnable
            public final void run() {
                final ActivityContext activityContext = ActivityContext.this;
                InputMethodManager inputMethodManager2 = inputMethodManager;
                IBinder iBinder = windowToken;
                activityContext.getClass();
                if (inputMethodManager2.hideSoftInputFromWindow(iBinder, 0)) {
                    Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.views.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            ActivityContext.this.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_KEYBOARD_CLOSED);
                        }
                    });
                }
            }
        });
    }

    default void invalidateParent(ItemInfo itemInfo) {
    }

    default boolean isAppBlockedForSafeMode() {
        return false;
    }

    default void logAppLaunch(StatsLogManager statsLogManager, ItemInfo itemInfo, InstanceId instanceId) {
        statsLogManager.logger().withItemInfo(itemInfo).withInstanceId(instanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
    }

    default ActivityOptionsWrapper makeDefaultActivityOptions(int i4) {
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        Utilities.allowBGLaunch(makeBasic);
        if (Utilities.ATLEAST_T) {
            makeBasic.setSplashScreenStyle(i4);
        }
        return new ActivityOptionsWrapper(makeBasic, new RunnableList());
    }

    default void removeOnDeviceProfileChangeListener(DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener) {
        getOnDeviceProfileChangeListeners().remove(onDeviceProfileChangeListener);
    }

    default RunnableList sendPendingIntentWithAnimation(View view, PendingIntent pendingIntent, ItemInfo itemInfo) {
        ActivityOptionsWrapper activityLaunchOptions = getActivityLaunchOptions(view, itemInfo);
        try {
            pendingIntent.send(null, 0, null, null, null, null, activityLaunchOptions.toBundle());
            if (itemInfo != null) {
                getStatsLogManager().logger().withItemInfo(itemInfo).withInstanceId(new InstanceIdSequence().newInstanceId()).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_PENDING_INTENT);
            }
            return activityLaunchOptions.onEndCallback;
        } catch (PendingIntent.CanceledException unused) {
            Toast.makeText(view.getContext(), view.getContext().getResources().getText(R.string.shortcut_not_available), 0).show();
            return null;
        }
    }

    default RunnableList startActivitySafely(View view, Intent intent, ItemInfo itemInfo) {
        ActivityOptionsWrapper makeDefaultActivityOptions;
        Context context = (Context) this;
        if (isAppBlockedForSafeMode() && !PackageManagerHelper.isSystemApp(context, intent)) {
            Toast.makeText(context, (int) R.string.safemode_shortcut_error, 0).show();
            return null;
        }
        boolean z4 = (itemInfo instanceof WorkspaceItemInfo) && itemInfo.itemType == 6 && !((WorkspaceItemInfo) itemInfo).hasStatusFlag(3);
        if (view != null) {
            makeDefaultActivityOptions = getActivityLaunchOptions(view, itemInfo);
        } else {
            makeDefaultActivityOptions = makeDefaultActivityOptions((itemInfo == null || itemInfo.animationType != 2) ? -1 : 0);
        }
        UserHandle userHandle = itemInfo == null ? null : itemInfo.user;
        Bundle bundle = makeDefaultActivityOptions.toBundle();
        intent.addFlags(268435456);
        if (view != null) {
            intent.setSourceBounds(Utilities.getViewBounds(view));
        }
        try {
            if (z4) {
                ((LauncherApps) ((Context) this).getSystemService(LauncherApps.class)).startShortcut(intent.getPackage(), ((WorkspaceItemInfo) itemInfo).getDeepShortcutId(), intent.getSourceBounds(), bundle, userHandle);
            } else {
                if (userHandle != null && !userHandle.equals(Process.myUserHandle())) {
                    ((LauncherApps) context.getSystemService(LauncherApps.class)).startMainActivity(intent.getComponent(), userHandle, intent.getSourceBounds(), bundle);
                }
                context.startActivity(intent, bundle);
            }
            if (itemInfo != null) {
                logAppLaunch(getStatsLogManager(), itemInfo, new InstanceIdSequence().newInstanceId());
            }
            return makeDefaultActivityOptions.onEndCallback;
        } catch (ActivityNotFoundException | NullPointerException | SecurityException e4) {
            Toast.makeText(context, (int) R.string.activity_not_found, 0).show();
            Log.e("ActivityContext", "Unable to launch. tag=" + itemInfo + " intent=" + intent, e4);
            return null;
        }
    }

    default void startSplitSelection(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
    }

    default void updateOpenFolderPosition(int[] iArr, Rect rect, int i4, int i5) {
    }
}
