package com.android.launcher3.hybridhotseat;

import L0.a;
import L0.g;
import android.content.Intent;
import android.graphics.Rect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.hybridhotseat.HotseatEduController;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public final class HotseatEduController {
    private HotseatEduDialog mActiveDialog;
    private final Hotseat mHotseat;
    private final Launcher mLauncher;
    private ArrayList mNewItems = new ArrayList();
    private IntArray mNewScreens = null;
    private List mPredictedApps;

    public HotseatEduController(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
        this.mHotseat = quickstepLauncher.getHotseat();
    }

    public static /* synthetic */ boolean a(HotseatEduController hotseatEduController, int i4) {
        View childAt = hotseatEduController.mHotseat.getShortcutsAndWidgets().getChildAt(i4);
        return (childAt == null || childAt.getTag() == null || ((ItemInfo) childAt.getTag()).container == -103) ? false : true;
    }

    public static void b(HotseatEduController hotseatEduController) {
        hotseatEduController.mLauncher.startActivity(new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS").addFlags(268435456));
    }

    public static void c(HotseatEduController hotseatEduController) {
        hotseatEduController.mLauncher.startActivity(new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS").addFlags(268435456));
    }

    private boolean showHotseatArrowTip(String str, boolean z4) {
        BubbleTextView bubbleTextView;
        Hotseat hotseat = this.mHotseat;
        int childCount = hotseat.getShortcutsAndWidgets().getChildCount();
        Launcher launcher = this.mLauncher;
        boolean z5 = !launcher.getDeviceProfile().isVerticalBarLayout();
        int i4 = childCount - 1;
        while (true) {
            if (i4 <= -1) {
                bubbleTextView = null;
                break;
            }
            View childAt = hotseat.getShortcutsAndWidgets().getChildAt(z5 ? i4 : 0, z5 ? 0 : i4);
            if ((childAt instanceof BubbleTextView) && (childAt.getTag() instanceof WorkspaceItemInfo)) {
                if ((((ItemInfo) childAt.getTag()).container == -101) == z4) {
                    bubbleTextView = (BubbleTextView) childAt;
                    break;
                }
            }
            i4--;
        }
        if (bubbleTextView == null) {
            Log.e("HotseatEduController", "Unable to find suitable view for ArrowTip");
            return false;
        }
        Rect viewBounds = Utilities.getViewBounds(bubbleTextView);
        new ArrowTipView(launcher, false, 0).show(str, 8388613, viewBounds.centerX(), viewBounds.top);
        return true;
    }

    public final void finishOnboarding() {
        this.mLauncher.getModel().onWorkspaceUiChanged();
    }

    public final void migrate() {
        int i4;
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        Launcher launcher = this.mLauncher;
        looperExecutor.execute(new g(1, launcher));
        Workspace workspace = launcher.getWorkspace();
        int i5 = 0;
        while (true) {
            if (i5 >= workspace.getPageCount()) {
                i4 = 0;
                i5 = -1;
                break;
            } else if (workspace.getScreenWithId(workspace.getScreenIdForPageIndex(i5)).makeSpaceForHotseatMigration(true)) {
                i4 = launcher.getDeviceProfile().inv.numRows - 1;
                break;
            } else {
                i5++;
            }
        }
        if (i5 == -1) {
            i5 = launcher.getModel().getModelDbController().getNewScreenId();
            this.mNewScreens = IntArray.wrap(i5);
        }
        boolean z4 = !launcher.getDeviceProfile().isVerticalBarLayout();
        int i6 = launcher.getDeviceProfile().numShownHotseatIcons;
        for (int i7 = 0; i7 < i6; i7++) {
            View childAt = this.mHotseat.getChildAt(z4 ? i7 : 0, z4 ? 0 : (i6 - i7) - 1);
            if (childAt != null && childAt.getTag() != null) {
                ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                if (itemInfo.container != -103) {
                    launcher.getModelWriter().moveItemInDatabase(itemInfo, -100, i5, i7, i4);
                    this.mNewItems.add(itemInfo);
                }
            }
        }
        Snackbar.show(launcher, (int) R.string.hotsaet_tip_prediction_enabled, (int) R.string.hotseat_prediction_settings, (Runnable) null, new a(this, 1));
    }

    public final void moveHotseatItems() {
        this.mHotseat.removeAllViewsInLayout();
        if (this.mNewItems.isEmpty()) {
            return;
        }
        ArrayList arrayList = this.mNewItems;
        int i4 = ((ItemInfo) arrayList.get(arrayList.size() - 1)).screenId;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = this.mNewItems.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.screenId == i4) {
                arrayList2.add(itemInfo);
            } else {
                arrayList3.add(itemInfo);
            }
        }
        this.mLauncher.bindAppsAdded(this.mNewScreens, arrayList3, arrayList2);
    }

    public final void setPredictedApps(List list) {
        this.mPredictedApps = list;
    }

    public final void showDimissTip() {
        int childCount = this.mHotseat.getShortcutsAndWidgets().getChildCount();
        Launcher launcher = this.mLauncher;
        if (childCount < launcher.getDeviceProfile().numShownHotseatIcons) {
            Snackbar.show(launcher, (int) R.string.hotseat_tip_gaps_filled, (int) R.string.hotseat_prediction_settings, (Runnable) null, new a(this, 0));
        } else {
            showHotseatArrowTip(launcher.getString(R.string.hotseat_tip_no_empty_slots), true);
        }
    }

    public final void showEdu() {
        int childCount = this.mHotseat.getShortcutsAndWidgets().getChildCount();
        Launcher launcher = this.mLauncher;
        CellLayout screenWithId = launcher.getWorkspace().getScreenWithId(0);
        boolean anyMatch = IntStream.range(0, childCount).anyMatch(new IntPredicate() { // from class: L0.b
            @Override // java.util.function.IntPredicate
            public final boolean test(int i4) {
                return HotseatEduController.a(HotseatEduController.this, i4);
            }
        });
        boolean makeSpaceForHotseatMigration = screenWithId.makeSpaceForHotseatMigration(false);
        if (!anyMatch || !makeSpaceForHotseatMigration) {
            if (showHotseatArrowTip(launcher.getString(anyMatch ? R.string.hotseat_tip_no_empty_slots : R.string.hotseat_auto_enrolled), anyMatch)) {
                launcher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_ONLY_TIP);
            }
            finishOnboarding();
            return;
        }
        List list = this.mPredictedApps;
        if (list == null || list.isEmpty()) {
            return;
        }
        HotseatEduDialog hotseatEduDialog = this.mActiveDialog;
        if (hotseatEduDialog != null) {
            hotseatEduDialog.handleClose(false);
        }
        int i4 = HotseatEduDialog.f4649d;
        HotseatEduDialog hotseatEduDialog2 = (HotseatEduDialog) LayoutInflater.from(launcher).inflate(R.layout.predicted_hotseat_edu, (ViewGroup) launcher.getDragLayer(), false);
        this.mActiveDialog = hotseatEduDialog2;
        hotseatEduDialog2.setHotseatEduController(this);
        this.mActiveDialog.show(this.mPredictedApps);
    }
}
