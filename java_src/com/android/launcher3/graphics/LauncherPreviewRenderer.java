package com.android.launcher3.graphics;

import android.app.Fragment;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Size;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextClock;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.launcher3.WorkspaceLayoutManager;
import com.android.launcher3.apppairs.AppPairIcon;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.C0380n0;
import com.android.launcher3.model.ModelUtils;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.util.C0480m;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.WindowBounds;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.BaseLauncherAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.LocalColorExtractor;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public final class LauncherPreviewRenderer extends ContextWrapper implements ActivityContext, WorkspaceLayoutManager, LayoutInflater.Factory2 {
    private final AppWidgetHost mAppWidgetHost;
    private final Context mContext;
    private final DeviceProfile mDp;
    private final List mDpChangeListeners;
    private final DeviceProfile mDpOrig;
    private final LayoutInflater mHomeElementInflater;
    private final Hotseat mHotseat;
    private final SparseArray mLauncherWidgetSpanInfo;
    private final InsettableFrameLayout mRootView;
    private final Handler mUiHandler;
    private final SparseIntArray mWallpaperColorResources;
    private final Map mWorkspaceScreens;

    /* loaded from: classes.dex */
    final class LauncherPreviewAppWidgetHost extends AppWidgetHost {
        public LauncherPreviewAppWidgetHost(Context context) {
            super(context, 1024);
        }

        @Override // android.appwidget.AppWidgetHost
        public final AppWidgetHostView onCreateView(Context context, int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
            return new LauncherPreviewAppWidgetHostView(LauncherPreviewRenderer.this);
        }
    }

    /* loaded from: classes.dex */
    final class LauncherPreviewAppWidgetHostView extends BaseLauncherAppWidgetHostView {
        public LauncherPreviewAppWidgetHostView(LauncherPreviewRenderer launcherPreviewRenderer) {
            super(launcherPreviewRenderer);
        }

        @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
        public final boolean shouldAllowDirectClick() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public class LauncherPreviewLayout extends InsettableFrameLayout {
        public LauncherPreviewLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public final class PreviewContext extends MainThreadInitializedObject.SandboxContext {
        private final ConcurrentLinkedQueue mIconPool;
        private final InvariantDeviceProfile mIdp;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public final class LauncherIconsForPreview extends LauncherIcons {
            public LauncherIconsForPreview(Context context, int i4, int i5) {
                super(context, i4, i5, -1);
            }

            @Override // com.android.launcher3.icons.LauncherIcons
            public final void recycle() {
                clear();
                PreviewContext.this.mIconPool.offer(this);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public PreviewContext(android.content.Context r12, com.android.launcher3.InvariantDeviceProfile r13) {
            /*
                r11 = this;
                com.android.launcher3.util.MainThreadInitializedObject r0 = com.android.launcher3.pm.UserCache.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r1 = com.android.launcher3.pm.InstallSessionHelper.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r2 = com.android.launcher3.LauncherPrefs.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r9 = com.android.launcher3.LauncherAppState.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r10 = com.android.launcher3.InvariantDeviceProfile.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r5 = com.android.launcher3.widget.custom.CustomWidgetManager.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r6 = com.android.launcher3.uioverrides.plugins.PluginManagerWrapper.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r7 = com.android.launcher3.util.window.WindowManagerProxy.INSTANCE
                com.android.launcher3.util.MainThreadInitializedObject r8 = com.android.launcher3.util.DisplayController.INSTANCE
                r3 = r9
                r4 = r10
                com.android.launcher3.util.MainThreadInitializedObject[] r0 = new com.android.launcher3.util.MainThreadInitializedObject[]{r0, r1, r2, r3, r4, r5, r6, r7, r8}
                r11.<init>(r12, r0)
                java.util.concurrent.ConcurrentLinkedQueue r12 = new java.util.concurrent.ConcurrentLinkedQueue
                r12.<init>()
                r11.mIconPool = r12
                r11.mIdp = r13
                java.util.Map r12 = r11.mObjectMap
                java.util.HashMap r12 = (java.util.HashMap) r12
                r12.put(r10, r13)
                java.util.Map r12 = r11.mObjectMap
                com.android.launcher3.LauncherAppState r13 = new com.android.launcher3.LauncherAppState
                r0 = 0
                r13.<init>(r11, r0)
                java.util.HashMap r12 = (java.util.HashMap) r12
                r12.put(r9, r13)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.graphics.LauncherPreviewRenderer.PreviewContext.<init>(android.content.Context, com.android.launcher3.InvariantDeviceProfile):void");
        }

        public final LauncherIcons newLauncherIcons(Context context) {
            LauncherIconsForPreview launcherIconsForPreview = (LauncherIconsForPreview) this.mIconPool.poll();
            if (launcherIconsForPreview != null) {
                return launcherIconsForPreview;
            }
            InvariantDeviceProfile invariantDeviceProfile = this.mIdp;
            return new LauncherIconsForPreview(context, invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize);
        }
    }

    public LauncherPreviewRenderer(Context context, InvariantDeviceProfile invariantDeviceProfile, WallpaperColors wallpaperColors, SparseArray sparseArray) {
        super(context);
        this.mDpChangeListeners = new ArrayList();
        this.mWorkspaceScreens = new HashMap();
        this.mUiHandler = new Handler(Looper.getMainLooper());
        this.mContext = context;
        DeviceProfile.Builder builder = invariantDeviceProfile.getDeviceProfile(context).toBuilder(context);
        builder.setViewScaleProvider(new DeviceProfile.ViewScaleProvider() { // from class: K0.d
            @Override // com.android.launcher3.DeviceProfile.ViewScaleProvider
            public final PointF getScaleFromItemInfo(ItemInfo itemInfo) {
                return LauncherPreviewRenderer.a(LauncherPreviewRenderer.this, itemInfo);
            }
        });
        DeviceProfile build = builder.build();
        this.mDp = build;
        if (context instanceof PreviewContext) {
            Context baseContext = ((PreviewContext) context).getBaseContext();
            this.mDpOrig = new InvariantDeviceProfile(baseContext, InvariantDeviceProfile.getCurrentGridName(baseContext)).getDeviceProfile(baseContext).toBuilder(baseContext).build();
        } else {
            this.mDpOrig = build;
        }
        DisplayController.Info info = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo();
        Display display = context.getDisplay();
        Rect rect = new Rect();
        Iterator it = ((ArraySet) info.supportedBounds).iterator();
        float f4 = Float.MAX_VALUE;
        while (it.hasNext()) {
            WindowBounds windowBounds = (WindowBounds) it.next();
            double pow = Math.pow(display.getHeight() - windowBounds.availableSize.y, 2.0d) + Math.pow(display.getWidth() - windowBounds.availableSize.x, 2.0d);
            if (windowBounds.rotationHint == context.getDisplay().getRotation() && pow < f4) {
                f4 = (float) pow;
                rect = windowBounds.insets;
            }
        }
        Rect rect2 = new Rect(rect);
        this.mDp.updateInsets(rect2);
        LayoutInflater from = LayoutInflater.from(new ContextThemeWrapper(this, (int) R.style.HomeScreenElementTheme));
        this.mHomeElementInflater = from;
        from.setFactory2(this);
        InsettableFrameLayout insettableFrameLayout = (InsettableFrameLayout) from.inflate(this.mDp.isTwoPanels ? R.layout.launcher_preview_two_panel_layout : R.layout.launcher_preview_layout, (ViewGroup) null, false);
        this.mRootView = insettableFrameLayout;
        insettableFrameLayout.setInsets(rect2);
        DeviceProfile deviceProfile = this.mDp;
        measureView(deviceProfile.widthPx, insettableFrameLayout, deviceProfile.heightPx);
        Hotseat hotseat = (Hotseat) insettableFrameLayout.findViewById(R.id.hotseat);
        this.mHotseat = hotseat;
        hotseat.resetLayout(false);
        this.mLauncherWidgetSpanInfo = sparseArray == null ? new SparseArray() : sparseArray;
        CellLayout cellLayout = (CellLayout) insettableFrameLayout.findViewById(R.id.workspace);
        DeviceProfile deviceProfile2 = this.mDp;
        Rect rect3 = deviceProfile2.workspacePadding;
        int i4 = rect3.left;
        Rect rect4 = deviceProfile2.cellLayoutPaddingPx;
        cellLayout.setPadding(i4 + rect4.left, rect3.top + rect4.top, (deviceProfile2.isTwoPanels ? deviceProfile2.cellLayoutBorderSpacePx.x / 2 : rect3.right) + rect4.right, rect3.bottom + rect4.bottom);
        ((HashMap) this.mWorkspaceScreens).put(0, cellLayout);
        if (this.mDp.isTwoPanels) {
            CellLayout cellLayout2 = (CellLayout) insettableFrameLayout.findViewById(R.id.workspace_right);
            DeviceProfile deviceProfile3 = this.mDp;
            Rect rect5 = deviceProfile3.cellLayoutPaddingPx;
            Rect rect6 = deviceProfile3.workspacePadding;
            cellLayout2.setPadding((deviceProfile3.cellLayoutBorderSpacePx.x / 2) + rect5.left, rect6.top + rect5.top, rect6.right + rect5.right, rect6.bottom + rect5.bottom);
            ((HashMap) this.mWorkspaceScreens).put(1, cellLayout2);
        }
        if (Utilities.ATLEAST_S) {
            wallpaperColors = wallpaperColors == null ? WallpaperManager.getInstance(context).getWallpaperColors(1) : wallpaperColors;
            this.mWallpaperColorResources = wallpaperColors != null ? ((LocalColorExtractor) ResourceBasedOverride.Overrides.getObject(R.string.local_colors_extraction_class, context.getApplicationContext(), LocalColorExtractor.class)).generateColorsOverride(wallpaperColors) : null;
        } else {
            this.mWallpaperColorResources = null;
        }
        this.mAppWidgetHost = new LauncherPreviewAppWidgetHost(context);
    }

    public static PointF a(LauncherPreviewRenderer launcherPreviewRenderer, ItemInfo itemInfo) {
        launcherPreviewRenderer.getClass();
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            Size size = (Size) launcherPreviewRenderer.mLauncherWidgetSpanInfo.get(launcherAppWidgetInfo.appWidgetId);
            if (size == null) {
                return DeviceProfile.DEFAULT_SCALE;
            }
            Size widgetSizePx = WidgetSizes.getWidgetSizePx(launcherPreviewRenderer.mDpOrig, size.getWidth(), size.getHeight());
            Size widgetSizePx2 = WidgetSizes.getWidgetSizePx(launcherPreviewRenderer.mDp, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
            return new PointF(widgetSizePx2.getWidth() / widgetSizePx.getWidth(), widgetSizePx2.getHeight() / widgetSizePx.getHeight());
        }
        return DeviceProfile.DEFAULT_SCALE;
    }

    public static /* synthetic */ void b(LauncherPreviewRenderer launcherPreviewRenderer, boolean z4) {
        if (!launcherPreviewRenderer.mDp.isTaskbarPresent) {
            launcherPreviewRenderer.mHotseat.setQsbAlpha(z4 ? 0.0f : 1.0f);
            return;
        }
        launcherPreviewRenderer.mHotseat.setIconsAlpha(z4 ? 0.0f : 1.0f);
        if (launcherPreviewRenderer.mDp.isQsbInline) {
            launcherPreviewRenderer.mHotseat.setQsbAlpha(z4 ? 0.0f : 1.0f);
        }
    }

    private static void dispatchVisibilityAggregated(View view, boolean z4) {
        boolean z5 = true;
        boolean z6 = view.getVisibility() == 0;
        if (z6 || !z4) {
            view.onVisibilityAggregated(z4);
        }
        if (view instanceof ViewGroup) {
            z5 = (z6 && z4) ? false : false;
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                dispatchVisibilityAggregated(viewGroup.getChildAt(i4), z5);
            }
        }
    }

    private static void measureView(int i4, InsettableFrameLayout insettableFrameLayout, int i5) {
        insettableFrameLayout.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i5, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        insettableFrameLayout.layout(0, 0, i4, i5);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final CellPosMapper getCellPosMapper() {
        return CellPosMapper.DEFAULT;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DeviceProfile getDeviceProfile() {
        return this.mDp;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final Hotseat getHotseat() {
        return this.mHotseat;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final List getOnDeviceProfileChangeListeners() {
        return this.mDpChangeListeners;
    }

    public final InsettableFrameLayout getRenderedView(BgDataModel bgDataModel, Map map) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Set keySet = ((HashMap) this.mWorkspaceScreens).keySet();
        IntSet intSet = new IntSet();
        keySet.forEach(new C0480m(intSet, 1));
        ModelUtils.filterCurrentWorkspaceItems(intSet, bgDataModel.workspaceItems, arrayList, arrayList2);
        ModelUtils.filterCurrentWorkspaceItems(intSet, bgDataModel.appWidgets, arrayList3, arrayList4);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            int i4 = itemInfo.itemType;
            if (i4 != 0) {
                if (i4 != 2) {
                    if (i4 != 6) {
                        if (i4 != 10) {
                        }
                    }
                }
                FolderInfo folderInfo = (FolderInfo) itemInfo;
                ViewGroup viewGroup = folderInfo.container == -100 ? (CellLayout) ((HashMap) this.mWorkspaceScreens).get(Integer.valueOf(folderInfo.screenId)) : this.mHotseat;
                addInScreenFromBind(folderInfo.itemType == 2 ? FolderIcon.inflateIcon(R.layout.folder_icon, this, viewGroup, folderInfo) : AppPairIcon.inflateIcon(this, viewGroup, folderInfo), folderInfo);
            }
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
            BubbleTextView bubbleTextView = (BubbleTextView) this.mHomeElementInflater.inflate(R.layout.app_icon, (ViewGroup) ((CellLayout) ((HashMap) this.mWorkspaceScreens).get(Integer.valueOf(workspaceItemInfo.screenId))), false);
            bubbleTextView.applyFromWorkspaceItem(0, workspaceItemInfo, false);
            addInScreenFromBind(bubbleTextView, workspaceItemInfo);
        }
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            ItemInfo itemInfo2 = (ItemInfo) it2.next();
            int i5 = itemInfo2.itemType;
            if (i5 == 4 || i5 == 5) {
                if (map != null) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo2;
                    AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) ((ArrayMap) map).get(new ComponentKey(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user));
                    if (appWidgetProviderInfo != null) {
                        AppWidgetHostView createView = this.mAppWidgetHost.createView(this.mContext, launcherAppWidgetInfo.appWidgetId, LauncherAppWidgetProviderInfo.fromProviderInfo(getApplicationContext(), appWidgetProviderInfo));
                        SparseIntArray sparseIntArray = this.mWallpaperColorResources;
                        if (sparseIntArray != null) {
                            createView.setColorResources(sparseIntArray);
                        }
                        createView.setTag(launcherAppWidgetInfo);
                        addInScreenFromBind(createView, launcherAppWidgetInfo);
                    }
                } else {
                    LauncherAppWidgetInfo launcherAppWidgetInfo2 = (LauncherAppWidgetInfo) itemInfo2;
                    WidgetItem widgetProviderInfoByProviderName = bgDataModel.widgetsModel.getWidgetProviderInfoByProviderName(launcherAppWidgetInfo2.providerName, launcherAppWidgetInfo2.user);
                    if (widgetProviderInfoByProviderName != null) {
                        AppWidgetHostView createView2 = this.mAppWidgetHost.createView(this.mContext, launcherAppWidgetInfo2.appWidgetId, widgetProviderInfoByProviderName.widgetInfo);
                        SparseIntArray sparseIntArray2 = this.mWallpaperColorResources;
                        if (sparseIntArray2 != null) {
                            createView2.setColorResources(sparseIntArray2);
                        }
                        createView2.setTag(launcherAppWidgetInfo2);
                        addInScreenFromBind(createView2, launcherAppWidgetInfo2);
                    }
                }
            }
        }
        int i6 = this.mDp.numShownHotseatIcons;
        final IntSet intSet2 = new IntSet();
        arrayList.stream().filter(new C0380n0(1)).forEach(new Consumer() { // from class: com.android.launcher3.model.p0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IntSet.this.add(((ItemInfo) obj).screenId);
            }
        });
        final IntArray intArray = new IntArray(i6);
        IntStream.range(0, i6).filter(new IntPredicate() { // from class: com.android.launcher3.model.q0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i7) {
                return !IntSet.this.contains(i7);
            }
        }).forEach(new IntConsumer() { // from class: com.android.launcher3.model.r0
            @Override // java.util.function.IntConsumer
            public final void accept(int i7) {
                IntArray.this.add(i7);
            }
        });
        BgDataModel.FixedContainerItems fixedContainerItems = (BgDataModel.FixedContainerItems) bgDataModel.extraItems.get(-103);
        List emptyList = fixedContainerItems == null ? Collections.emptyList() : fixedContainerItems.items;
        int min = Math.min(intArray.size(), emptyList.size());
        for (int i7 = 0; i7 < min; i7++) {
            int i8 = intArray.get(i7);
            WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo((WorkspaceItemInfo) emptyList.get(i7));
            workspaceItemInfo2.container = -103;
            workspaceItemInfo2.rank = i8;
            workspaceItemInfo2.cellX = this.mHotseat.getCellXFromOrder(i8);
            workspaceItemInfo2.cellY = this.mHotseat.getCellYFromOrder(i8);
            workspaceItemInfo2.screenId = i8;
            PredictedAppIcon predictedAppIcon = (PredictedAppIcon) this.mHomeElementInflater.inflate(R.layout.predicted_app_icon, (ViewGroup) ((CellLayout) ((HashMap) this.mWorkspaceScreens).get(Integer.valueOf(i8))), false);
            predictedAppIcon.applyFromWorkspaceItem(0, workspaceItemInfo2, false);
            addInScreenFromBind(predictedAppIcon, workspaceItemInfo2);
        }
        CellLayout cellLayout = (CellLayout) ((HashMap) this.mWorkspaceScreens).get(0);
        View inflate = this.mHomeElementInflater.inflate(R.layout.qsb_preview, (ViewGroup) cellLayout, false);
        CellLayoutLayoutParams cellLayoutLayoutParams = new CellLayoutLayoutParams(0, 0, cellLayout.getCountX(), 1);
        cellLayoutLayoutParams.canReorder = false;
        cellLayout.addViewToCellLayout(inflate, 0, R.id.search_container_workspace, cellLayoutLayoutParams, true);
        InsettableFrameLayout insettableFrameLayout = this.mRootView;
        DeviceProfile deviceProfile = this.mDp;
        measureView(deviceProfile.widthPx, insettableFrameLayout, deviceProfile.heightPx);
        dispatchVisibilityAggregated(this.mRootView, true);
        InsettableFrameLayout insettableFrameLayout2 = this.mRootView;
        DeviceProfile deviceProfile2 = this.mDp;
        measureView(deviceProfile2.widthPx, insettableFrameLayout2, deviceProfile2.heightPx);
        InsettableFrameLayout insettableFrameLayout3 = this.mRootView;
        DeviceProfile deviceProfile3 = this.mDp;
        measureView(deviceProfile3.widthPx, insettableFrameLayout3, deviceProfile3.heightPx);
        return this.mRootView;
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final CellLayout getScreenWithId(int i4) {
        return (CellLayout) ((HashMap) this.mWorkspaceScreens).get(Integer.valueOf(i4));
    }

    public final void hideBottomRow(final boolean z4) {
        this.mUiHandler.post(new Runnable() { // from class: K0.e
            @Override // java.lang.Runnable
            public final void run() {
                LauncherPreviewRenderer.b(LauncherPreviewRenderer.this, z4);
            }
        });
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if ("TextClock".equals(str)) {
            return new TextClock(context, attributeSet) { // from class: com.android.launcher3.graphics.LauncherPreviewRenderer.1
                @Override // android.view.View
                public final Handler getHandler() {
                    return LauncherPreviewRenderer.this.mUiHandler;
                }
            };
        }
        if ("fragment".equals(str)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PreviewFragment);
            FragmentWithPreview fragmentWithPreview = (FragmentWithPreview) Fragment.instantiate(context, obtainStyledAttributes.getString(0));
            fragmentWithPreview.enterPreviewMode(context);
            fragmentWithPreview.onInit();
            View onCreateView = fragmentWithPreview.onCreateView(LayoutInflater.from(context), (ViewGroup) view, null);
            onCreateView.setId(obtainStyledAttributes.getInt(1, -1));
            return onCreateView;
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
