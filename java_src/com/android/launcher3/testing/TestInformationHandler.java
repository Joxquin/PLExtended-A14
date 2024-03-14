package com.android.launcher3.testing;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.testing.shared.HotseatCellCenterRequest;
import com.android.launcher3.testing.shared.TestProtocol;
import com.android.launcher3.testing.shared.WorkspaceCellCenterRequest;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.widget.picker.WidgetsFullSheet;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class TestInformationHandler implements ResourceBasedOverride {
    protected Context mContext;
    protected DeviceProfile mDeviceProfile;
    protected LauncherAppState mLauncherAppState;

    /* loaded from: classes.dex */
    public interface BundleSetter {
        void set(Bundle bundle, Object obj);
    }

    private static Rect getDescendantRectRelativeToDragLayerForCell(Launcher launcher, CellLayout cellLayout, int i4, int i5, int i6, int i7) {
        DragLayer dragLayer = launcher.getDragLayer();
        Rect rect = new Rect();
        cellLayout.cellToRect(i4, i5, i6, i7, rect);
        int[] iArr = {rect.left, rect.top};
        int[] iArr2 = {rect.right, rect.bottom};
        dragLayer.getDescendantCoordRelativeToSelf((View) cellLayout, iArr);
        dragLayer.getDescendantCoordRelativeToSelf((View) cellLayout, iArr2);
        rect.set(iArr[0], iArr[1], iArr2[0], iArr2[1]);
        return rect;
    }

    public static Object getFromExecutorSync(ExecutorService executorService, Callable callable) {
        try {
            return executorService.submit(callable).get();
        } catch (InterruptedException | ExecutionException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static Bundle getLauncherUIProperty(BundleSetter bundleSetter, Function function) {
        ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        return getUIProperty(bundleSetter, function, new d(2, activityTracker));
    }

    private static Bundle getUIProperty(final BundleSetter bundleSetter, final Function function, final Supplier supplier) {
        return (Bundle) getFromExecutorSync(Executors.MAIN_EXECUTOR, new Callable() { // from class: com.android.launcher3.testing.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle lambda$getUIProperty$17;
                lambda$getUIProperty$17 = TestInformationHandler.lambda$getUIProperty$17(supplier, function, bundleSetter);
                return lambda$getUIProperty$17;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Integer lambda$call$0(Launcher launcher) {
        LauncherState.NORMAL.getClass();
        LauncherState.ALL_APPS.getClass();
        return Integer.valueOf((int) (launcher.getAllAppsController().getShiftRange() * 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$call$1(Boolean bool) {
        return Boolean.valueOf(isLauncherInitialized());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int[] lambda$call$10(Launcher launcher) {
        Workspace workspace = launcher.getWorkspace();
        CellLayout screenWithId = workspace.getScreenWithId(workspace.getScreenIdForPageIndex(workspace.getCurrentPage()));
        return new int[]{screenWithId.getCountX(), screenWithId.getCountY()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Point lambda$call$11(WorkspaceCellCenterRequest workspaceCellCenterRequest, Launcher launcher) {
        Workspace workspace = launcher.getWorkspace();
        Rect descendantRectRelativeToDragLayerForCell = getDescendantRectRelativeToDragLayerForCell(launcher, (CellLayout) workspace.getPageAt(workspace.getCurrentPage()), workspaceCellCenterRequest.cellX, workspaceCellCenterRequest.cellY, workspaceCellCenterRequest.spanX, workspaceCellCenterRequest.spanY);
        return new Point(descendantRectRelativeToDragLayerForCell.centerX(), descendantRectRelativeToDragLayerForCell.centerY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Point lambda$call$12(InvariantDeviceProfile invariantDeviceProfile, Launcher launcher) {
        return new Point(invariantDeviceProfile.getDeviceProfile(this.mContext).getPanelCount() * invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$13(Launcher launcher) {
        return Integer.valueOf(launcher.getWorkspace().getCurrentPage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Point lambda$call$14(HotseatCellCenterRequest hotseatCellCenterRequest, Launcher launcher) {
        Rect descendantRectRelativeToDragLayerForCell = getDescendantRectRelativeToDragLayerForCell(launcher, launcher.getHotseat(), hotseatCellCenterRequest.cellInd, 0, 1, 1);
        int i4 = descendantRectRelativeToDragLayerForCell.left;
        int i5 = ((descendantRectRelativeToDragLayerForCell.right - i4) / 3) + i4;
        int i6 = descendantRectRelativeToDragLayerForCell.top;
        return new Point(i5, ((descendantRectRelativeToDragLayerForCell.bottom - i6) / 3) + i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$15(Launcher launcher) {
        return Integer.valueOf(launcher.getAppsView().getActiveRecyclerView().getClipBounds().top);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$16(Launcher launcher) {
        return Integer.valueOf(launcher.getAppsView().getActiveRecyclerView().getPaddingBottom() + (launcher.getAppsView().getBottom() - launcher.getAppsView().getActiveRecyclerView().getBottom()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$call$3(Launcher launcher) {
        launcher.getAppsView().getAppsStore().enableDeferUpdates(2);
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$call$4(Launcher launcher) {
        launcher.getAppsView().getAppsStore().disableDeferUpdates(2);
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$5(Launcher launcher) {
        return Integer.valueOf(launcher.getAppsView().getActiveRecyclerView().computeVerticalScrollOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$call$6(Launcher launcher) {
        return Integer.valueOf(WidgetsFullSheet.getWidgetsView(launcher).computeVerticalScrollOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Insets lambda$call$7(Activity activity) {
        WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
        return Insets.max(rootWindowInsets.getSystemGestureInsets(), rootWindowInsets.getSystemWindowInsets());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Insets lambda$call$8(Activity activity) {
        return activity.getWindow().getDecorView().getRootWindowInsets().getSystemWindowInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$call$9(String str) {
        ((Launcher) Launcher.ACTIVITY_TRACKER.getCreatedActivity()).getRotationHelper().forceAllowRotationForTesting(Boolean.parseBoolean(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle lambda$getUIProperty$17(Supplier supplier, Function function, BundleSetter bundleSetter) {
        Object obj = supplier.get();
        if (obj == null) {
            return null;
        }
        Object apply = function.apply(obj);
        Bundle bundle = new Bundle();
        bundleSetter.set(bundle, apply);
        return bundle;
    }

    public static TestInformationHandler newInstance(Context context) {
        return (TestInformationHandler) ResourceBasedOverride.Overrides.getObject(R.string.test_information_handler_class, context, TestInformationHandler.class);
    }

    public Bundle call(String str, final String str2, Bundle bundle) {
        char c4;
        Bundle bundle2 = new Bundle();
        if (bundle != null && bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        str.getClass();
        char c5 = 65535;
        switch (str.hashCode()) {
            case -1882752736:
                if (str.equals("workspace-current-page-index")) {
                    c5 = 0;
                    break;
                }
                break;
            case -1842849687:
                if (str.equals("is-tablet")) {
                    c5 = 1;
                    break;
                }
                break;
            case -1222247840:
                if (str.equals("is-two-panel")) {
                    c5 = 2;
                    break;
                }
                break;
            case -919388399:
                if (str.equals("workspace-cell-layout-size")) {
                    c5 = 3;
                    break;
                }
                break;
            case -739296992:
                if (str.equals("get-had-nontest-events")) {
                    c5 = 4;
                    break;
                }
                break;
            case -634643027:
                if (str.equals("apps-list-scroll-y")) {
                    c5 = 5;
                    break;
                }
                break;
            case -335925014:
                if (str.equals("is-launcher-initialized")) {
                    c5 = 6;
                    break;
                }
                break;
            case -132279417:
                if (str.equals("unfreeze-app-list")) {
                    c5 = 7;
                    break;
                }
                break;
            case -8342034:
                if (str.equals("mock-sensor-rotation")) {
                    c5 = '\b';
                    break;
                }
                break;
            case 116891322:
                if (str.equals("enable_rotation")) {
                    c5 = '\t';
                    break;
                }
                break;
            case 117113715:
                if (str.equals("window-insets")) {
                    c5 = '\n';
                    break;
                }
                break;
            case 203390977:
                if (str.equals("workspace-columns-rows")) {
                    c5 = 11;
                    break;
                }
                break;
            case 267083626:
                if (str.equals("all-apps-top-padding")) {
                    c5 = '\f';
                    break;
                }
                break;
            case 299522245:
                if (str.equals("home-to-all-apps-swipe-height")) {
                    c5 = '\r';
                    break;
                }
                break;
            case 485168855:
                if (str.equals("widgets-scroll-y")) {
                    c5 = 14;
                    break;
                }
                break;
            case 512131560:
                if (str.equals("workspace-cell-center")) {
                    c4 = 15;
                    c5 = c4;
                    break;
                }
                break;
            case 599032057:
                if (str.equals("has-touch-interaction-service")) {
                    c4 = 16;
                    c5 = c4;
                    break;
                }
                break;
            case 738461362:
                if (str.equals("target-insets")) {
                    c4 = 17;
                    c5 = c4;
                    break;
                }
                break;
            case 768460608:
                if (str.equals("freeze-app-list")) {
                    c4 = 18;
                    c5 = c4;
                    break;
                }
                break;
            case 844291326:
                if (str.equals("all-apps-bottom-padding")) {
                    c4 = 19;
                    c5 = c4;
                    break;
                }
                break;
            case 1792972989:
                if (str.equals("enable-grid-only-overview")) {
                    c4 = 20;
                    c5 = c4;
                    break;
                }
                break;
            case 1889473957:
                if (str.equals("hotseat-cell-center")) {
                    c4 = 21;
                    c5 = c4;
                    break;
                }
                break;
            case 2052224251:
                if (str.equals("icon-height")) {
                    c4 = 22;
                    c5 = c4;
                    break;
                }
                break;
            case 2140625885:
                if (str.equals("start-drag-threshold")) {
                    c4 = 23;
                    c5 = c4;
                    break;
                }
                break;
        }
        switch (c5) {
            case 0:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 1:
                bundle2.putBoolean("response", this.mDeviceProfile.isTablet);
                return bundle2;
            case 2:
                bundle2.putBoolean("response", FeatureFlags.FOLDABLE_SINGLE_PAGE.get() ? false : this.mDeviceProfile.isTwoPanels);
                return bundle2;
            case 3:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 4:
                bundle2.putBoolean("response", TestLogging.sHadEventsNotFromTest);
                return bundle2;
            case 5:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 6:
                return getUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$1;
                        Point lambda$call$11;
                        Point lambda$call$14;
                        switch (r1) {
                            case 0:
                                lambda$call$11 = TestInformationHandler.lambda$call$11((WorkspaceCellCenterRequest) this, (Launcher) obj);
                                return lambda$call$11;
                            case 1:
                                lambda$call$14 = TestInformationHandler.lambda$call$14((HotseatCellCenterRequest) this, (Launcher) obj);
                                return lambda$call$14;
                            default:
                                lambda$call$1 = ((TestInformationHandler) this).lambda$call$1((Boolean) obj);
                                return lambda$call$1;
                        }
                    }
                }, new h());
            case 7:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case '\b':
                TestProtocol.sDisableSensorRotation = true;
                return bundle2;
            case '\t':
                Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: com.android.launcher3.testing.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        TestInformationHandler.lambda$call$9(str2);
                    }
                });
                return bundle2;
            case '\n':
                return getUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                }, new d(1, this));
            case 11:
                final InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(this.mContext);
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.g
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Point lambda$call$12;
                        lambda$call$12 = TestInformationHandler.this.lambda$call$12(invariantDeviceProfile, (Launcher) obj);
                        return lambda$call$12;
                    }
                });
            case '\f':
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case '\r':
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 14:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 15:
                final WorkspaceCellCenterRequest workspaceCellCenterRequest = (WorkspaceCellCenterRequest) bundle.getParcelable("request");
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$1;
                        Point lambda$call$11;
                        Point lambda$call$14;
                        switch (r1) {
                            case 0:
                                lambda$call$11 = TestInformationHandler.lambda$call$11((WorkspaceCellCenterRequest) workspaceCellCenterRequest, (Launcher) obj);
                                return lambda$call$11;
                            case 1:
                                lambda$call$14 = TestInformationHandler.lambda$call$14((HotseatCellCenterRequest) workspaceCellCenterRequest, (Launcher) obj);
                                return lambda$call$14;
                            default:
                                lambda$call$1 = ((TestInformationHandler) workspaceCellCenterRequest).lambda$call$1((Boolean) obj);
                                return lambda$call$1;
                        }
                    }
                });
            case 16:
                bundle2.putBoolean("response", false);
                return bundle2;
            case 17:
                return getUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                }, new d(0, this));
            case 18:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 19:
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.c
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$4;
                        Integer lambda$call$5;
                        Integer lambda$call$6;
                        Insets lambda$call$7;
                        Insets lambda$call$8;
                        Integer lambda$call$0;
                        int[] lambda$call$10;
                        Integer lambda$call$13;
                        Integer lambda$call$15;
                        Integer lambda$call$16;
                        Boolean lambda$call$3;
                        switch (r1) {
                            case 0:
                                lambda$call$5 = TestInformationHandler.lambda$call$5((Launcher) obj);
                                return lambda$call$5;
                            case 1:
                                lambda$call$6 = TestInformationHandler.lambda$call$6((Launcher) obj);
                                return lambda$call$6;
                            case 2:
                                lambda$call$7 = TestInformationHandler.lambda$call$7((Activity) obj);
                                return lambda$call$7;
                            case 3:
                                lambda$call$8 = TestInformationHandler.lambda$call$8((Activity) obj);
                                return lambda$call$8;
                            case 4:
                                lambda$call$0 = TestInformationHandler.lambda$call$0((Launcher) obj);
                                return lambda$call$0;
                            case 5:
                                lambda$call$10 = TestInformationHandler.lambda$call$10((Launcher) obj);
                                return lambda$call$10;
                            case 6:
                                lambda$call$13 = TestInformationHandler.lambda$call$13((Launcher) obj);
                                return lambda$call$13;
                            case 7:
                                lambda$call$15 = TestInformationHandler.lambda$call$15((Launcher) obj);
                                return lambda$call$15;
                            case 8:
                                lambda$call$16 = TestInformationHandler.lambda$call$16((Launcher) obj);
                                return lambda$call$16;
                            case 9:
                                lambda$call$3 = TestInformationHandler.lambda$call$3((Launcher) obj);
                                return lambda$call$3;
                            default:
                                lambda$call$4 = TestInformationHandler.lambda$call$4((Launcher) obj);
                                return lambda$call$4;
                        }
                    }
                });
            case 20:
                bundle2.putBoolean("response", FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get());
                return bundle2;
            case 21:
                final HotseatCellCenterRequest hotseatCellCenterRequest = (HotseatCellCenterRequest) bundle.getParcelable("request");
                return getLauncherUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.b
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle3, Object obj) {
                        switch (r1) {
                            case 0:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 1:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 2:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 3:
                                bundle3.putParcelable("response", (Insets) obj);
                                return;
                            case 4:
                                bundle3.putIntArray("response", (int[]) obj);
                                return;
                            case 5:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 6:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 7:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 8:
                                bundle3.putParcelable("response", (Point) obj);
                                return;
                            case 9:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 10:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 11:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                            case 12:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            case 13:
                                bundle3.putBoolean("response", ((Boolean) obj).booleanValue());
                                return;
                            default:
                                bundle3.putInt("response", ((Integer) obj).intValue());
                                return;
                        }
                    }
                }, new Function() { // from class: com.android.launcher3.testing.f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Boolean lambda$call$1;
                        Point lambda$call$11;
                        Point lambda$call$14;
                        switch (r1) {
                            case 0:
                                lambda$call$11 = TestInformationHandler.lambda$call$11((WorkspaceCellCenterRequest) hotseatCellCenterRequest, (Launcher) obj);
                                return lambda$call$11;
                            case 1:
                                lambda$call$14 = TestInformationHandler.lambda$call$14((HotseatCellCenterRequest) hotseatCellCenterRequest, (Launcher) obj);
                                return lambda$call$14;
                            default:
                                lambda$call$1 = ((TestInformationHandler) hotseatCellCenterRequest).lambda$call$1((Boolean) obj);
                                return lambda$call$1;
                        }
                    }
                });
            case 22:
                bundle2.putInt("response", this.mDeviceProfile.allAppsCellHeightPx);
                return bundle2;
            case 23:
                Resources resources = this.mContext.getResources();
                bundle2.putInt("response", resources.getDimensionPixelSize(R.dimen.pre_drag_view_scale) + resources.getDimensionPixelSize(R.dimen.deep_shortcuts_start_drag_threshold));
                return bundle2;
            default:
                return null;
        }
    }

    public Activity getCurrentActivity() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity();
    }

    public void init(Context context) {
        this.mContext = context;
        this.mDeviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context)).getDeviceProfile(context);
        this.mLauncherAppState = (LauncherAppState) LauncherAppState.INSTANCE.getNoCreate();
    }

    public boolean isLauncherInitialized() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity() == null || LauncherAppState.getInstance(this.mContext).getModel().isModelLoaded();
    }
}
