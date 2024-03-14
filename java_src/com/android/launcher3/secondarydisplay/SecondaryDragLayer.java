package com.android.launcher3.secondarydisplay;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.secondarydisplay.SecondaryDragLayer;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public class SecondaryDragLayer extends BaseDragLayer {
    private View mAllAppsButton;
    private ActivityAllAppsContainerView mAppsView;
    private PinnedAppsAdapter mPinnedAppsAdapter;
    private GridView mWorkspace;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CloseAllAppsTouchController implements TouchController {
        public CloseAllAppsTouchController() {
        }

        @Override // com.android.launcher3.util.TouchController
        public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
            SecondaryDragLayer secondaryDragLayer = SecondaryDragLayer.this;
            if (((SecondaryDisplayLauncher) ((BaseDragLayer) secondaryDragLayer).mActivity).isAppDrawerShown() && AbstractFloatingView.getTopOpenView((ActivityContext) ((BaseDragLayer) secondaryDragLayer).mActivity) == null && motionEvent.getAction() == 0 && !secondaryDragLayer.isEventOverView(((SecondaryDisplayLauncher) ((BaseDragLayer) secondaryDragLayer).mActivity).getAppsView(), motionEvent)) {
                ((SecondaryDisplayLauncher) ((BaseDragLayer) secondaryDragLayer).mActivity).showAppDrawer(false);
                return true;
            }
            return false;
        }

        @Override // com.android.launcher3.util.TouchController
        public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public SecondaryDragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
        recreateControllers();
    }

    public final PinnedAppsAdapter getPinnedAppsAdapter() {
        return this.mPinnedAppsAdapter;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mPinnedAppsAdapter.init();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPinnedAppsAdapter.destroy();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [V0.l] */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mAllAppsButton = findViewById(R.id.all_apps_button);
        this.mAppsView = (ActivityAllAppsContainerView) findViewById(R.id.apps_view);
        this.mWorkspace = (GridView) findViewById(R.id.workspace_grid);
        PinnedAppsAdapter pinnedAppsAdapter = new PinnedAppsAdapter((SecondaryDisplayLauncher) this.mActivity, this.mAppsView.getAppsStore(), new View.OnLongClickListener() { // from class: V0.l
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return SecondaryDragLayer.this.onIconLongClicked(view);
            }
        });
        this.mPinnedAppsAdapter = pinnedAppsAdapter;
        this.mWorkspace.setAdapter((ListAdapter) pinnedAppsAdapter);
        this.mWorkspace.setNumColumns(((SecondaryDisplayLauncher) this.mActivity).getDeviceProfile().inv.numColumns);
    }

    public final boolean onIconLongClicked(View view) {
        PopupDataProvider popupDataProvider;
        PopupContainerWithArrow popupContainerWithArrow;
        if (view instanceof BubbleTextView) {
            if (PopupContainerWithArrow.getOpen((SecondaryDisplayLauncher) this.mActivity) != null) {
                view.clearFocus();
                return false;
            }
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            if (ShortcutUtil.supportsShortcuts(itemInfo) && (popupDataProvider = ((SecondaryDisplayLauncher) this.mActivity).getPopupDataProvider()) != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(SystemShortcut.APP_INFO.getShortcut((BaseDraggingActivity) this.mActivity, itemInfo, view));
                FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.SECONDARY_DRAG_N_DROP_TO_PIN;
                if (!booleanFlag.get() || !((SecondaryDisplayLauncher) this.mActivity).isAppDrawerShown()) {
                    arrayList.add(this.mPinnedAppsAdapter.getSystemShortcut(view, itemInfo));
                }
                int shortcutCountForItem = popupDataProvider.getShortcutCountForItem(itemInfo);
                if (FeatureFlags.ENABLE_MATERIAL_U_POPUP.get()) {
                    popupContainerWithArrow = (PopupContainerWithArrow) ((SecondaryDisplayLauncher) this.mActivity).getLayoutInflater().inflate(R.layout.popup_container_material_u, (ViewGroup) ((SecondaryDisplayLauncher) this.mActivity).getDragLayer(), false);
                    popupContainerWithArrow.populateAndShowRowsMaterialU((BubbleTextView) view, shortcutCountForItem, arrayList);
                } else {
                    popupContainerWithArrow = (PopupContainerWithArrow) ((SecondaryDisplayLauncher) this.mActivity).getLayoutInflater().inflate(R.layout.popup_container, (ViewGroup) ((SecondaryDisplayLauncher) this.mActivity).getDragLayer(), false);
                    popupContainerWithArrow.populateAndShow((BubbleTextView) view, shortcutCountForItem, Collections.emptyList(), arrayList);
                }
                popupContainerWithArrow.requestFocus();
                if (booleanFlag.get() && ((SecondaryDisplayLauncher) this.mActivity).isAppDrawerShown()) {
                    DragOptions dragOptions = new DragOptions();
                    int i4 = ((SecondaryDisplayLauncher) this.mActivity).getDeviceProfile().allAppsIconSizePx;
                    dragOptions.preDragCondition = popupContainerWithArrow.createPreDragCondition(false);
                    Context context = this.mActivity;
                    ((SecondaryDisplayLauncher) context).beginDragShared(view, ((SecondaryDisplayLauncher) context).getAppsView(), dragOptions);
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        setMeasuredDimension(size, size2);
        DeviceProfile deviceProfile = ((SecondaryDisplayLauncher) this.mActivity).getDeviceProfile();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt == this.mAppsView) {
                Rect rect = deviceProfile.cellLayoutPaddingPx;
                int i7 = (deviceProfile.desiredWorkspaceHorizontalMarginPx * 2) + rect.left + rect.right;
                int i8 = rect.top + rect.bottom;
                int i9 = deviceProfile.allAppsCellWidthPx;
                int i10 = deviceProfile.numShownAllAppsColumns;
                this.mAppsView.measure(View.MeasureSpec.makeMeasureSpec(Math.min((size - getPaddingLeft()) - getPaddingRight(), (i9 * i10) + i7), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(Math.min((size2 - getPaddingTop()) - getPaddingBottom(), (deviceProfile.allAppsCellHeightPx * i10) + i8), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            } else if (childAt == this.mAllAppsButton) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(deviceProfile.iconSizePx, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
                this.mAllAppsButton.measure(makeMeasureSpec, makeMeasureSpec);
            } else {
                GridView gridView = this.mWorkspace;
                if (childAt == gridView) {
                    measureChildWithMargins(gridView, i4, 0, i5, deviceProfile.iconSizePx + deviceProfile.edgeMarginPx);
                } else {
                    measureChildWithMargins(childAt, i4, 0, i5, 0);
                }
            }
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public final void recreateControllers() {
        this.mControllers = new TouchController[]{new CloseAllAppsTouchController(), ((SecondaryDisplayLauncher) this.mActivity).getDragController()};
    }
}
