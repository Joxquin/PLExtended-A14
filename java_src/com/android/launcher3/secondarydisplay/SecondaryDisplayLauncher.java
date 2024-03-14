package com.android.launcher3.secondarydisplay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class SecondaryDisplayLauncher extends BaseDraggingActivity implements BgDataModel.Callbacks, DragController.DragListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4975d = 0;
    private View mAppsButton;
    private ActivityAllAppsContainerView mAppsView;
    private SecondaryDragController mDragController;
    private SecondaryDragLayer mDragLayer;
    private LauncherModel mModel;
    private OnboardingPrefs mOnboardingPrefs;
    private PopupDataProvider mPopupDataProvider;
    private SecondaryDisplayPredictions mSecondaryDisplayPredictions;
    private StringCache mStringCache;
    private boolean mAppDrawerShown = false;
    private final int[] mTempXY = new int[2];

    private void initUi() {
        if (this.mDragLayer != null) {
            return;
        }
        DeviceProfile.Builder builder = new InvariantDeviceProfile(this, getWindow().getDecorView().getDisplay()).getDeviceProfile(this).toBuilder(this);
        builder.setMultiWindowMode(true);
        builder.setTransposeLayoutWithOrientation();
        DeviceProfile build = builder.build();
        this.mDeviceProfile = build;
        build.autoResizeAllAppsCells();
        setContentView(R.layout.secondary_launcher);
        this.mDragLayer = (SecondaryDragLayer) findViewById(R.id.drag_layer);
        this.mAppsView = (ActivityAllAppsContainerView) findViewById(R.id.apps_view);
        this.mAppsButton = findViewById(R.id.all_apps_button);
        this.mDragController.addDragListener(this);
        final AllAppsStore appsStore = this.mAppsView.getAppsStore();
        Objects.requireNonNull(appsStore);
        this.mPopupDataProvider = new PopupDataProvider(new Consumer() { // from class: V0.h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AllAppsStore.this.updateNotificationDots((Predicate) obj);
            }
        });
        this.mModel.addCallbacksAndLoad(this);
    }

    public final void beginDragShared(View view, DragSource dragSource, DragOptions dragOptions) {
        float scaleAndPosition;
        FastBitmapDrawable icon;
        Object tag = view.getTag();
        if (!(tag instanceof ItemInfo)) {
            throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + view + "  tag: " + view.getTag());
        }
        ItemInfo itemInfo = (ItemInfo) tag;
        DragPreviewProvider dragPreviewProvider = new DragPreviewProvider(view);
        boolean z4 = view instanceof BubbleTextView;
        float animatedScale = (!z4 || (icon = ((BubbleTextView) view).getIcon()) == null) ? 1.0f : icon.getAnimatedScale();
        view.clearFocus();
        view.setPressed(false);
        if (z4) {
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            bubbleTextView.setPressed(false);
            bubbleTextView.setStayPressed(false);
        }
        Drawable drawable = null;
        DraggableView draggableView = view instanceof DraggableView ? (DraggableView) view : null;
        View contentView = dragPreviewProvider.getContentView();
        int[] iArr = this.mTempXY;
        if (contentView == null) {
            drawable = dragPreviewProvider.createDrawable();
            scaleAndPosition = dragPreviewProvider.getScaleAndPosition(drawable, iArr);
        } else {
            scaleAndPosition = dragPreviewProvider.getScaleAndPosition(contentView, iArr);
        }
        float f4 = scaleAndPosition;
        int i4 = iArr[0];
        int i5 = iArr[1];
        Rect rect = new Rect();
        if (draggableView != null) {
            draggableView.getSourceVisualDragBounds(rect);
            i5 += rect.top;
        }
        DragOptions.PreDragCondition preDragCondition = dragOptions.preDragCondition;
        if (preDragCondition != null) {
            int i6 = preDragCondition.getDragOffset().x;
            int i7 = dragOptions.preDragCondition.getDragOffset().y;
            if (i6 != 0 && i7 != 0) {
                i4 += i6;
                i5 += i7;
            }
        }
        int i8 = i5;
        int i9 = i4;
        if (contentView != null) {
            this.mDragController.startDrag(contentView, draggableView, i9, i8, dragSource, itemInfo, rect, f4 * animatedScale, f4, dragOptions);
        } else {
            this.mDragController.startDrag(drawable, draggableView, i9, i8, dragSource, itemInfo, rect, f4 * animatedScale, f4, dragOptions);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAllApplications(AppInfo[] appInfoArr, int i4, Map map) {
        this.mAppsView.getAppsStore().setApps(appInfoArr, i4, map);
        PopupContainerWithArrow.dismissInvalidPopup(this);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindDeepShortcutMap(HashMap hashMap) {
        this.mPopupDataProvider.setDeepShortcutMap(hashMap);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindExtraContainerItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        if (fixedContainerItems.containerId == -102) {
            this.mSecondaryDisplayPredictions.setPredictedApps(fixedContainerItems);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindIncrementalDownloadProgressUpdated(AppInfo appInfo) {
        this.mAppsView.getAppsStore().updateProgressBar(appInfo);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindStringCache(StringCache stringCache) {
        this.mStringCache = stringCache;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void finishBindingItems(IntSet intSet) {
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.OnLongClickListener getAllAppsItemLongClickListener() {
        return new View.OnLongClickListener() { // from class: V0.j
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean onIconLongClicked;
                onIconLongClicked = SecondaryDisplayLauncher.this.mDragLayer.onIconLongClicked(view);
                return onIconLongClicked;
            }
        };
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final ActivityAllAppsContainerView getAppsView() {
        return this.mAppsView;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DragController getDragController() {
        return this.mDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.views.ActivityContext
    public final View.OnClickListener getItemOnClickListener() {
        return new View.OnClickListener() { // from class: V0.i
            /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.view.View r4) {
                /*
                    r3 = this;
                    com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher r3 = com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher.this
                    int r0 = com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher.f4975d
                    r3.getClass()
                    android.os.IBinder r0 = r4.getWindowToken()
                    if (r0 != 0) goto Le
                    goto L53
                Le:
                    java.lang.Object r0 = r4.getTag()
                    boolean r1 = r0 instanceof com.android.launcher3.touch.ItemClickHandler.ItemClickProxy
                    if (r1 == 0) goto L1c
                    com.android.launcher3.touch.ItemClickHandler$ItemClickProxy r0 = (com.android.launcher3.touch.ItemClickHandler.ItemClickProxy) r0
                    r0.onItemClicked(r4)
                    goto L53
                L1c:
                    boolean r1 = r0 instanceof com.android.launcher3.model.data.ItemInfo
                    if (r1 == 0) goto L53
                    com.android.launcher3.model.data.ItemInfo r0 = (com.android.launcher3.model.data.ItemInfo) r0
                    boolean r1 = r0 instanceof com.android.launcher3.model.data.ItemInfoWithIcon
                    if (r1 == 0) goto L41
                    r1 = r0
                    com.android.launcher3.model.data.ItemInfoWithIcon r1 = (com.android.launcher3.model.data.ItemInfoWithIcon) r1
                    int r2 = r1.runtimeStatusFlags
                    r2 = r2 & 1024(0x400, float:1.435E-42)
                    if (r2 == 0) goto L41
                    java.lang.String r1 = r1.getTargetPackage()
                    if (r1 == 0) goto L3f
                    com.android.launcher3.util.PackageManagerHelper r2 = new com.android.launcher3.util.PackageManagerHelper
                    r2.<init>(r3)
                    android.content.Intent r1 = r2.getMarketIntent(r1)
                    goto L45
                L3f:
                    r1 = 0
                    goto L45
                L41:
                    android.content.Intent r1 = r0.getIntent()
                L45:
                    if (r1 == 0) goto L4b
                    r3.startActivitySafely(r4, r1, r0)
                    goto L53
                L4b:
                    java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
                    java.lang.String r4 = "Input must have a valid intent"
                    r3.<init>(r4)
                    throw r3
                L53:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: V0.i.onClick(android.view.View):void");
            }
        };
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final OnboardingPrefs getOnboardingPrefs() {
        return this.mOnboardingPrefs;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final View getOverviewPanel() {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final PopupDataProvider getPopupDataProvider() {
        return this.mPopupDataProvider;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final View getRootView() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final StringCache getStringCache() {
        return this.mStringCache;
    }

    public final boolean isAppDrawerShown() {
        return this.mAppDrawerShown;
    }

    public void onAppsButtonClicked(View view) {
        showAppDrawer(true);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        initUi();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (finishAutoCancelActionMode()) {
            return;
        }
        if (this.mDragController.isDragging()) {
            this.mDragController.cancelDrag();
            return;
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView == null || !topOpenView.canHandleBack()) {
            showAppDrawer(false);
        } else {
            topOpenView.onBackInvoked();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mModel = LauncherAppState.getInstance(this).getModel();
        this.mDragController = new SecondaryDragController(this);
        this.mOnboardingPrefs = new OnboardingPrefs(this, LauncherPrefs.getPrefs(this));
        this.mSecondaryDisplayPredictions = (SecondaryDisplayPredictions) ResourceBasedOverride.Overrides.getObject(R.string.secondary_display_predictions_class, this, SecondaryDisplayPredictions.class);
        if (getWindow().getDecorView().isAttachedToWindow()) {
            initUi();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.mModel.removeCallbacks(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mDragController.removeDragListener(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        View peekDecorView;
        super.onNewIntent(intent);
        if ("android.intent.action.MAIN".equals(intent.getAction()) && (peekDecorView = getWindow().peekDecorView()) != null && peekDecorView.getWindowToken() != null) {
            ((InputMethodManager) getSystemService(InputMethodManager.class)).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
        }
        showAppDrawer(false);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.mDragController.cancelDrag();
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final void reapplyUi() {
    }

    public final void showAppDrawer(boolean z4) {
        if (z4 == this.mAppDrawerShown) {
            return;
        }
        float hypot = (float) Math.hypot(this.mAppsView.getWidth(), this.mAppsView.getHeight());
        float dialogCornerRadius = Themes.getDialogCornerRadius(this);
        float width = this.mAppsButton.getWidth() / 2.0f;
        float[] fArr = {width, width};
        this.mDragLayer.getDescendantCoordRelativeToSelf(this.mAppsButton, fArr);
        this.mDragLayer.mapCoordInSelfToDescendant(this.mAppsView, fArr);
        ActivityAllAppsContainerView activityAllAppsContainerView = this.mAppsView;
        int i4 = (int) fArr[0];
        int i5 = (int) fArr[1];
        float f4 = z4 ? dialogCornerRadius : hypot;
        if (!z4) {
            hypot = dialogCornerRadius;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(activityAllAppsContainerView, i4, i5, f4, hypot);
        if (z4) {
            this.mAppDrawerShown = true;
            this.mAppsView.setVisibility(0);
            this.mAppsButton.setVisibility(4);
            this.mSecondaryDisplayPredictions.updateAppDivider();
        } else {
            this.mAppDrawerShown = false;
            createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    SecondaryDisplayLauncher.this.mAppsView.setVisibility(4);
                    SecondaryDisplayLauncher.this.mAppsButton.setVisibility(0);
                    SecondaryDisplayLauncher.this.mAppsView.getSearchUiManager().resetSearch();
                }
            });
        }
        createCircularReveal.start();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void startBinding() {
        this.mDragController.cancelDrag();
    }
}
