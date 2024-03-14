package com.android.launcher3.hybridhotseat;

import L0.d;
import L0.e;
import L0.f;
import L0.g;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.C0339g;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Hotseat;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.StringJoiner;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class HotseatPredictionController implements DragController.DragListener, SystemShortcut.Factory, DeviceProfile.OnDeviceProfileChangeListener, DragSource, ViewGroup.OnHierarchyChangeListener {
    private int mHotSeatItemsCount;
    private final Hotseat mHotseat;
    private AnimatorSet mIconRemoveAnimators;
    private QuickstepLauncher mLauncher;
    private final d mUpdateFillIfNotLoading = new d(this, 2);
    private List mPredictedItems = Collections.emptyList();
    private int mPauseFlags = 0;
    private List mOutlineDrawings = new ArrayList();
    private boolean mEnableHotseatLongPressTipForTesting = true;
    private final f mPredictionLongClickListener = new View.OnLongClickListener() { // from class: L0.f
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return HotseatPredictionController.a(HotseatPredictionController.this, view);
        }
    };

    /* loaded from: classes.dex */
    final class PinPrediction extends SystemShortcut {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PinPrediction(QuickstepLauncher quickstepLauncher, ItemInfo itemInfo, View view) {
            super(R.drawable.ic_pin, R.string.pin_prediction, quickstepLauncher, itemInfo, view);
            HotseatPredictionController.this = r7;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SystemShortcut.dismissTaskMenuView((QuickstepLauncher) this.mTarget);
            HotseatPredictionController.this.pinPrediction(this.mItemInfo);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [L0.f] */
    public HotseatPredictionController(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
        Hotseat hotseat = quickstepLauncher.getHotseat();
        this.mHotseat = hotseat;
        this.mHotSeatItemsCount = this.mLauncher.getDeviceProfile().numShownHotseatIcons;
        this.mLauncher.getDragController().addDragListener(this);
        quickstepLauncher.addOnDeviceProfileChangeListener(this);
        hotseat.getShortcutsAndWidgets().setOnHierarchyChangeListener(this);
    }

    public static /* synthetic */ boolean a(HotseatPredictionController hotseatPredictionController, View view) {
        if (ItemLongClickListener.canStartDrag(hotseatPredictionController.mLauncher) && !hotseatPredictionController.mLauncher.getWorkspace().isSwitchingState()) {
            TestLogging.recordEvent("Main", "onWorkspaceItemLongClick");
            if (!hotseatPredictionController.mEnableHotseatLongPressTipForTesting || hotseatPredictionController.mLauncher.getOnboardingPrefs().getBoolean(OnboardingPrefs.HOTSEAT_LONGPRESS_TIP_SEEN)) {
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo((WorkspaceItemInfo) view.getTag());
                view.setVisibility(4);
                hotseatPredictionController.mLauncher.getWorkspace().beginDragShared(view, null, hotseatPredictionController, workspaceItemInfo, new DragPreviewProvider(view), new DragOptions());
            } else {
                Snackbar.show(hotseatPredictionController.mLauncher, (int) R.string.hotseat_tip_gaps_filled, (int) R.string.hotseat_prediction_settings, (Runnable) null, new d(hotseatPredictionController, 3));
                hotseatPredictionController.mLauncher.getOnboardingPrefs().markChecked(OnboardingPrefs.HOTSEAT_LONGPRESS_TIP_SEEN);
                hotseatPredictionController.mLauncher.getDragLayer().performHapticFeedback(0);
            }
            return true;
        }
        return false;
    }

    public static void b(HotseatPredictionController hotseatPredictionController) {
        hotseatPredictionController.mLauncher.startActivity(new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS").addFlags(268435456));
    }

    public static /* synthetic */ void c(HotseatPredictionController hotseatPredictionController) {
        HotseatEduController hotseatEduController = new HotseatEduController(hotseatPredictionController.mLauncher);
        hotseatEduController.setPredictedApps((List) hotseatPredictionController.mPredictedItems.stream().map(new e()).collect(Collectors.toList()));
        hotseatEduController.showEdu();
    }

    public static void e(HotseatPredictionController hotseatPredictionController) {
        if (hotseatPredictionController.mPauseFlags != 0 || hotseatPredictionController.mLauncher.isWorkspaceLoading()) {
            return;
        }
        hotseatPredictionController.fillGapsWithPrediction(true);
    }

    public void fillGapsWithPrediction(final boolean z4) {
        Log.d("HotseatPredictionController", "fillGapsWithPrediction flags: " + getStateString(this.mPauseFlags));
        if (this.mPauseFlags != 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        AnimatorSet animatorSet = this.mIconRemoveAnimators;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mIconRemoveAnimators.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.hybridhotseat.HotseatPredictionController.1
                {
                    HotseatPredictionController.this = this;
                }

                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public final void onAnimationSuccess(Animator animator) {
                    HotseatPredictionController.this.fillGapsWithPrediction(z4);
                    HotseatPredictionController.this.mIconRemoveAnimators.removeListener(this);
                }
            });
            return;
        }
        this.mPauseFlags |= 4;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < this.mHotSeatItemsCount; i6++) {
            Hotseat hotseat = this.mHotseat;
            View childAt = hotseat.getChildAt(hotseat.getCellXFromOrder(i6), this.mHotseat.getCellYFromOrder(i6));
            Log.d("HotseatPredictionController", "Hotseat app child is: " + childAt + " and isPredictedIcon() evaluates to: " + isPredictedIcon(childAt));
            if (childAt == null || isPredictedIcon(childAt)) {
                if (this.mPredictedItems.size() <= i4) {
                    Log.d("HotseatPredictionController", "Remove predicted apps from the past\nPrediction Index: " + i4);
                    if (isPredictedIcon(childAt)) {
                        this.mHotseat.removeView(childAt);
                    }
                } else {
                    int i7 = i4 + 1;
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) this.mPredictedItems.get(i4);
                    Log.d("HotseatPredictionController", "Predicted item is: " + workspaceItemInfo);
                    if (childAt != null) {
                        Log.d("HotseatPredictionController", "Predicted item is enabled: " + childAt.isEnabled());
                    }
                    if (isPredictedIcon(childAt) && childAt.isEnabled()) {
                        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) childAt;
                        boolean shouldAnimateIconChange = predictedAppIcon.shouldAnimateIconChange(workspaceItemInfo);
                        predictedAppIcon.applyFromWorkspaceItem(i5, workspaceItemInfo, shouldAnimateIconChange);
                        if (shouldAnimateIconChange) {
                            i5++;
                        }
                        predictedAppIcon.setOnLongClickListener(this.mPredictionLongClickListener);
                        ((CellLayoutLayoutParams) predictedAppIcon.getLayoutParams()).canReorder = false;
                        predictedAppIcon.setTextVisibility(false);
                        predictedAppIcon.verifyHighRes();
                    } else {
                        arrayList.add(workspaceItemInfo);
                    }
                    workspaceItemInfo.container = -103;
                    workspaceItemInfo.rank = i6;
                    workspaceItemInfo.cellX = this.mHotseat.getCellXFromOrder(i6);
                    workspaceItemInfo.cellY = this.mHotseat.getCellYFromOrder(i6);
                    workspaceItemInfo.screenId = i6;
                    i4 = i7;
                }
            }
        }
        Log.d("HotseatPredictionController", "bindItems to hotseat: " + arrayList);
        AnimatorSet animatorSet2 = new AnimatorSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) it.next();
            PredictedAppIcon createIcon = PredictedAppIcon.createIcon(this.mHotseat, workspaceItemInfo2);
            this.mLauncher.getWorkspace().addInScreenFromBind(createIcon, workspaceItemInfo2);
            createIcon.setOnLongClickListener(this.mPredictionLongClickListener);
            ((CellLayoutLayoutParams) createIcon.getLayoutParams()).canReorder = false;
            createIcon.setTextVisibility(false);
            createIcon.verifyHighRes();
            if (z4) {
                animatorSet2.play(ObjectAnimator.ofFloat(createIcon, LauncherAnimUtils.SCALE_PROPERTY, 0.2f, 1.0f));
            }
        }
        if (z4) {
            animatorSet2.addListener(AnimatorListeners.forSuccessCallback(new d(this, 0)));
            animatorSet2.start();
        } else {
            removeOutlineDrawings();
        }
        this.mPauseFlags &= -5;
    }

    private List getPredictedIcons() {
        ArrayList arrayList = new ArrayList();
        ShortcutAndWidgetContainer shortcutsAndWidgets = this.mHotseat.getShortcutsAndWidgets();
        for (int i4 = 0; i4 < shortcutsAndWidgets.getChildCount(); i4++) {
            View childAt = shortcutsAndWidgets.getChildAt(i4);
            if (isPredictedIcon(childAt)) {
                arrayList.add((PredictedAppIcon) childAt);
            }
        }
        return arrayList;
    }

    private static String getStateString(int i4) {
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1, "FLAG_UPDATE_PAUSED");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "FLAG_DRAG_IN_PROGRESS");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "FLAG_FILL_IN_PROGRESS");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "FLAG_REMOVING_PREDICTED_ICON");
        return stringJoiner.toString();
    }

    private static boolean isPredictedIcon(View view) {
        return (view instanceof PredictedAppIcon) && (view.getTag() instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) view.getTag()).container == -103;
    }

    private void onHotseatHierarchyChanged() {
        if (this.mPauseFlags != 0 || this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        looperExecutor.getHandler().removeCallbacks(this.mUpdateFillIfNotLoading);
        looperExecutor.getHandler().post(this.mUpdateFillIfNotLoading);
    }

    public void removeIconWithoutNotify(PredictedAppIcon predictedAppIcon) {
        this.mPauseFlags |= 8;
        this.mHotseat.removeView(predictedAppIcon);
        this.mPauseFlags &= -9;
    }

    public void removeOutlineDrawings() {
        if (((ArrayList) this.mOutlineDrawings).isEmpty()) {
            return;
        }
        Iterator it = ((ArrayList) this.mOutlineDrawings).iterator();
        while (it.hasNext()) {
            this.mHotseat.removeDelegatedCellDrawing((PredictedAppIcon.PredictedIconOutlineDrawing) it.next());
        }
        this.mHotseat.invalidate();
        ((ArrayList) this.mOutlineDrawings).clear();
    }

    public final void destroy() {
        this.mLauncher.removeOnDeviceProfileChangeListener(this);
    }

    public final void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "HotseatPredictionController");
        printWriter.println(str + "\tFlags: " + getStateString(this.mPauseFlags));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmHotSeatItemsCount: ");
        StringBuilder a4 = C0339g.a(sb, this.mHotSeatItemsCount, printWriter, str, "\tmPredictedItems: ");
        a4.append(this.mPredictedItems);
        printWriter.println(a4.toString());
    }

    public void enableHotseatEdu(boolean z4) {
        this.mEnableHotseatLongPressTipForTesting = z4;
    }

    @Override // com.android.launcher3.popup.SystemShortcut.Factory
    public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
        QuickstepLauncher quickstepLauncher = (QuickstepLauncher) context;
        if (itemInfo.container != -103) {
            return null;
        }
        return new PinPrediction(quickstepLauncher, itemInfo, view);
    }

    public final boolean hasPredictions() {
        return !this.mPredictedItems.isEmpty();
    }

    public final void logLaunchedAppRankingInfo(InstanceId instanceId, ItemInfo itemInfo) {
        ComponentName targetComponent = itemInfo.getTargetComponent();
        if (targetComponent == null) {
            return;
        }
        int size = this.mPredictedItems.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            }
            ItemInfo itemInfo2 = (ItemInfo) this.mPredictedItems.get(size);
            if (targetComponent.equals(itemInfo2.getTargetComponent()) && itemInfo.user.equals(itemInfo2.user)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return;
        }
        Iterator it = ((ArrayList) getPredictedIcons()).iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 |= 1 << ((ItemInfo) ((PredictedAppIcon) it.next()).getTag()).screenId;
        }
        LauncherAtom$PredictedHotseatContainer.Builder newBuilder = LauncherAtom$PredictedHotseatContainer.newBuilder();
        newBuilder.setCardinality$1(i4);
        if (itemInfo.container == -103) {
            newBuilder.setIndex$1(size);
        }
        StatsLogManager.StatsLogger withRank = this.mLauncher.getStatsLogManager().logger().withInstanceId(instanceId).withRank(size);
        LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
        newBuilder2.setPredictedHotseatContainer(newBuilder);
        withRank.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder2.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_RANKED);
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        onHotseatHierarchyChanged();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        onHotseatHierarchyChanged();
    }

    public final void onDeferredDrop(int i4, int i5) {
        View childAt = this.mHotseat.getChildAt(i4, i5);
        if (childAt instanceof PredictedAppIcon) {
            removeIconWithoutNotify((PredictedAppIcon) childAt);
        }
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mHotSeatItemsCount = deviceProfile.numShownHotseatIcons;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        this.mPauseFlags &= -3;
        fillGapsWithPrediction(true);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        List list = this.mOutlineDrawings;
        AnimatorSet animatorSet = this.mIconRemoveAnimators;
        if (animatorSet != null) {
            animatorSet.end();
        }
        this.mIconRemoveAnimators = new AnimatorSet();
        removeOutlineDrawings();
        Iterator it = ((ArrayList) getPredictedIcons()).iterator();
        while (it.hasNext()) {
            final PredictedAppIcon predictedAppIcon = (PredictedAppIcon) it.next();
            if (predictedAppIcon.isEnabled()) {
                if (dragObject.dragSource == this && predictedAppIcon.equals(dragObject.originalView)) {
                    removeIconWithoutNotify(predictedAppIcon);
                } else {
                    int i4 = ((WorkspaceItemInfo) predictedAppIcon.getTag()).rank;
                    ((ArrayList) list).add(new PredictedAppIcon.PredictedIconOutlineDrawing(this.mHotseat.getCellXFromOrder(i4), this.mHotseat.getCellYFromOrder(i4), predictedAppIcon));
                    predictedAppIcon.setEnabled(false);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(predictedAppIcon, LauncherAnimUtils.SCALE_PROPERTY, 0.0f);
                    ofFloat.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.hybridhotseat.HotseatPredictionController.2
                        {
                            HotseatPredictionController.this = this;
                        }

                        @Override // com.android.launcher3.anim.AnimationSuccessListener
                        public final void onAnimationSuccess(Animator animator) {
                            if (predictedAppIcon.getParent() != null) {
                                HotseatPredictionController.this.removeIconWithoutNotify(predictedAppIcon);
                            }
                        }
                    });
                    this.mIconRemoveAnimators.play(ofFloat);
                }
            }
        }
        this.mIconRemoveAnimators.start();
        if (((ArrayList) this.mOutlineDrawings).isEmpty()) {
            return;
        }
        Iterator it2 = ((ArrayList) this.mOutlineDrawings).iterator();
        while (it2.hasNext()) {
            this.mHotseat.addDelegatedCellDrawing((PredictedAppIcon.PredictedIconOutlineDrawing) it2.next());
        }
        this.mPauseFlags |= 2;
        this.mHotseat.invalidate();
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
    }

    public final void onModelItemsRemoved(Predicate predicate) {
        if (this.mPredictedItems.removeIf(predicate)) {
            fillGapsWithPrediction(true);
        }
    }

    public final void pinPrediction(ItemInfo itemInfo) {
        Hotseat hotseat = this.mHotseat;
        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) hotseat.getChildAt(hotseat.getCellXFromOrder(itemInfo.rank), this.mHotseat.getCellYFromOrder(itemInfo.rank));
        if (predictedAppIcon == null) {
            return;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo((WorkspaceItemInfo) itemInfo);
        this.mLauncher.getModelWriter().addItemToDatabase(workspaceItemInfo, -101, workspaceItemInfo.screenId, workspaceItemInfo.cellX, workspaceItemInfo.cellY);
        ObjectAnimator.ofFloat(predictedAppIcon, LauncherAnimUtils.SCALE_PROPERTY, 1.0f, 0.8f, 1.0f).start();
        predictedAppIcon.pin(workspaceItemInfo);
        this.mLauncher.getStatsLogManager().logger().withItemInfo(workspaceItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_PREDICTION_PINNED);
    }

    public final void setPauseUIUpdate(boolean z4) {
        Log.d("HotseatPredictionController", "setPauseUIUpdate parameter `paused` is " + z4);
        this.mPauseFlags = z4 ? this.mPauseFlags | 1 : this.mPauseFlags & (-2);
        if (z4) {
            return;
        }
        fillGapsWithPrediction(false);
    }

    public final void setPredictedItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        ArrayList arrayList = new ArrayList(fixedContainerItems.items);
        this.mPredictedItems = arrayList;
        if (arrayList.isEmpty()) {
            Log.d("HotseatPredictionController", "Predicted items is initially empty");
            Executors.MODEL_EXECUTOR.execute(new g(0, this.mLauncher));
        }
        Log.d("HotseatPredictionController", "Predicted items: " + this.mPredictedItems);
        fillGapsWithPrediction(false);
    }

    public final void showEdu() {
        this.mLauncher.getStateManager().goToState((BaseState) LauncherState.NORMAL, true, AnimatorListeners.forSuccessCallback(new d(this, 1)));
    }
}
