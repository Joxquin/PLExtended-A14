package com.android.launcher3;

import android.animation.Animator;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import com.android.launcher3.DropTarget;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.allapps.BaseSearchConfig;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.LauncherDragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderGridOrganizer;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StartupLatencyLogger;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.pm.PinRequestHelper;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.AllAppsSwipeController;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.util.ActivityResultInfo;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.C0484q;
import com.android.launcher3.util.CannedAnimationCoordinator;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.util.LockedUserState;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.ScreenOnTracker;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.util.Themes;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.ComposeInitializer;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.views.FloatingSurfaceView;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.views.ScrimView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.launcher3.widget.picker.WidgetsFullSheet;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.NexusLauncher;
import com.google.android.apps.nexuslauncher.allapps.SharedPreferences$OnSharedPreferenceChangeListenerC0725z2;
import com.google.android.apps.nexuslauncher.qsb.QsbTransitionManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import q1.InterfaceC1361a;
import q1.InterfaceC1362b;
import q1.InterfaceC1364d;
import t.C1395a;
/* loaded from: classes.dex */
public class Launcher extends StatefulActivity implements InterfaceC1361a, BgDataModel.Callbacks, InvariantDeviceProfile.OnIDPChangeListener, n1.k {
    public static final int NEW_APPS_ANIMATION_DELAY = 500;
    public static final int NEW_APPS_PAGE_MOVE_DELAY = 500;
    private LauncherAccessibilityDelegate mAccessibilityDelegate;
    AllAppsTransitionController mAllAppsController;
    protected InstanceId mAllAppsSessionLogId;
    private LauncherWidgetHolder mAppWidgetHolder;
    private WidgetManagerHelper mAppWidgetManager;
    ActivityAllAppsContainerView mAppsView;
    private BaseSearchConfig mBaseSearchConfig;
    private boolean mDeferOverlayCallbacks;
    protected LauncherDragController mDragController;
    DragLayer mDragLayer;
    private DropTargetBar mDropTargetBar;
    private ViewGroupFocusHelper mFocusHandler;
    Hotseat mHotseat;
    private IconCache mIconCache;
    private NexusLauncher mLauncherCallbacks;
    private LauncherModel mModel;
    private ModelWriter mModelWriter;
    private Runnable mOnDeferredActivityLaunchCallback;
    private Q mOnInitialBindListener;
    private OnboardingPrefs mOnboardingPrefs;
    protected InterfaceC1364d mOverlayManager;
    private View mOverviewPanel;
    private ActivityResultInfo mPendingActivityResult;
    private ViewOnDrawExecutor mPendingExecutor;
    private PendingRequestArgs mPendingRequestArgs;
    private PopupDataProvider mPopupDataProvider;
    private LauncherState mPrevLauncherState;
    private RotationHelper mRotationHelper;
    ScrimView mScrimView;
    private SharedPreferences mSharedPrefs;
    private StartupLatencyLogger mStartupLatencyLogger;
    private StateManager mStateManager;
    private StringCache mStringCache;
    private boolean mTouchInProgress;
    Workspace mWorkspace;
    public static final ActivityTracker ACTIVITY_TRACKER = new ActivityTracker();
    private static boolean sIsNewProcess = true;
    private static final FloatProperty WORKSPACE_WIDGET_SCALE = LauncherAnimUtils.WORKSPACE_SCALE_PROPERTY_FACTORY.get(4);
    private static final FloatProperty HOTSEAT_WIDGET_SCALE = LauncherAnimUtils.HOTSEAT_SCALE_PROPERTY_FACTORY.get(4);
    private static final boolean DESKTOP_MODE_1_SUPPORTED = "1".equals(Utilities.getSystemProperty("persist.wm.debug.desktop_mode", "0"));
    private static final boolean DESKTOP_MODE_2_SUPPORTED = "1".equals(Utilities.getSystemProperty("persist.wm.debug.desktop_mode_2", "0"));
    private final int[] mTmpAddItemCellCoordinates = new int[2];
    boolean mWorkspaceLoading = true;
    private IntSet mSynchronouslyBoundPages = new IntSet();
    private IntSet mPagesToBindSynchronously = new IntSet();
    protected int mPendingActivityRequestCode = -1;
    private final W mDeferredOverlayCallbacks = new W(this, 0);
    protected long mLastTouchUpTime = -1;
    private CellPosMapper mCellPosMapper = CellPosMapper.DEFAULT;
    private final CannedAnimationCoordinator mAnimationCoordinator = new CannedAnimationCoordinator(this);
    private final H mScreenOnListener = new ScreenOnTracker.ScreenOnListener() { // from class: com.android.launcher3.H
        @Override // com.android.launcher3.util.ScreenOnTracker.ScreenOnListener
        public final void onScreenOnChanged(boolean z4) {
            Launcher.this.onScreenOnChanged(z4);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.Launcher$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements InterfaceC1364d {
    }

    /* renamed from: com.android.launcher3.Launcher$8  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass8 implements ViewTreeObserver.OnDrawListener {
        public AnonymousClass8() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            StartupLatencyLogger startupLatencyLogger = Launcher.this.mStartupLatencyLogger;
            startupLatencyLogger.logEnd(StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION);
            startupLatencyLogger.log().reset();
            Executors.MAIN_EXECUTOR.getHandler().postAtFrontOfQueue(new X(0, this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class NonConfigInstance {
        public Configuration config;

        private NonConfigInstance() {
        }

        public /* synthetic */ NonConfigInstance(int i4) {
            this();
        }
    }

    private void bindAddScreens(IntArray intArray) {
        if (this.mDeviceProfile.isTwoPanels) {
            if (FeatureFlags.FOLDABLE_SINGLE_PAGE.get()) {
                final IntSet wrap = IntSet.wrap(intArray);
                intArray.forEach(new Consumer(this) { // from class: com.android.launcher3.M

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ Launcher f4464b;

                    {
                        this.f4464b = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r3) {
                            case 0:
                                Launcher launcher = this.f4464b;
                                IntSet intSet = wrap;
                                Workspace workspace = launcher.mWorkspace;
                                int intValue = ((Integer) obj).intValue();
                                workspace.getClass();
                                intSet.add(Workspace.getScreenPair(intValue));
                                return;
                            default:
                                Launcher launcher2 = this.f4464b;
                                IntSet intSet2 = wrap;
                                Integer num = (Integer) obj;
                                launcher2.getClass();
                                if (num.intValue() % 2 == 1) {
                                    intSet2.remove(num.intValue());
                                    if (launcher2.mWorkspace.mWorkspaceScreens.containsKey(num.intValue() - 1)) {
                                        return;
                                    }
                                    intSet2.add(num.intValue() - 1);
                                    return;
                                }
                                return;
                        }
                    }
                });
                intArray = wrap.getArray();
            } else {
                final IntSet wrap2 = IntSet.wrap(intArray);
                intArray.forEach(new Consumer(this) { // from class: com.android.launcher3.M

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ Launcher f4464b;

                    {
                        this.f4464b = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r3) {
                            case 0:
                                Launcher launcher = this.f4464b;
                                IntSet intSet = wrap2;
                                Workspace workspace = launcher.mWorkspace;
                                int intValue = ((Integer) obj).intValue();
                                workspace.getClass();
                                intSet.add(Workspace.getScreenPair(intValue));
                                return;
                            default:
                                Launcher launcher2 = this.f4464b;
                                IntSet intSet2 = wrap2;
                                Integer num = (Integer) obj;
                                launcher2.getClass();
                                if (num.intValue() % 2 == 1) {
                                    intSet2.remove(num.intValue());
                                    if (launcher2.mWorkspace.mWorkspaceScreens.containsKey(num.intValue() - 1)) {
                                        return;
                                    }
                                    intSet2.add(num.intValue() - 1);
                                    return;
                                }
                                return;
                        }
                    }
                });
                intArray = wrap2.getArray();
            }
        }
        int size = intArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = intArray.get(i4);
            if (i5 != 0) {
                Workspace workspace = this.mWorkspace;
                int indexOf = workspace.mScreenOrder.indexOf(-201);
                if (indexOf < 0) {
                    indexOf = workspace.mScreenOrder.size();
                }
                workspace.insertNewWorkspaceScreen(i5, indexOf);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfOverlayStillDeferred() {
        if (this.mDeferOverlayCallbacks) {
            if (!isStarted() || (hasBeenResumed() && !((LauncherState) this.mStateManager.getState()).hasFlag(1))) {
                this.mDeferOverlayCallbacks = false;
                if (isStarted()) {
                    this.mOverlayManager.onActivityStarted(this);
                }
                if (hasBeenResumed()) {
                    this.mOverlayManager.onActivityResumed(this);
                } else {
                    this.mOverlayManager.onActivityPaused(this);
                }
                if (isStarted()) {
                    return;
                }
                this.mOverlayManager.onActivityStopped(this);
            }
        }
    }

    private void completeAdd(int i4, Intent intent, int i5, PendingRequestArgs pendingRequestArgs) {
        LauncherAppWidgetProviderInfo launcherAppWidgetInfo;
        CellPosMapper.CellPos mapModelToPresenter = this.mCellPosMapper.mapModelToPresenter(pendingRequestArgs);
        int i6 = mapModelToPresenter.screenId;
        if (pendingRequestArgs.container == -100) {
            i6 = ensurePendingDropLayoutExists(i6);
        }
        int i7 = i6;
        if (i4 == 1) {
            completeAddShortcut(intent, pendingRequestArgs.container, i7, mapModelToPresenter.cellX, mapModelToPresenter.cellY, pendingRequestArgs);
            this.mDragLayer.announceForAccessibility(getString(R.string.item_added_to_workspace));
        } else if (i4 == 5) {
            completeAddAppWidget(i5, pendingRequestArgs, null, null);
        } else if (i4 != 12) {
            if (i4 != 13) {
                return;
            }
            getStatsLogManager().logger().withItemInfo(pendingRequestArgs).log(StatsLogManager.LauncherEvent.LAUNCHER_WIDGET_RECONFIGURED);
            completeRestoreAppWidget(i5, 0);
        } else {
            LauncherAppWidgetInfo completeRestoreAppWidget = completeRestoreAppWidget(i5, 4);
            if (completeRestoreAppWidget == null || (launcherAppWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(i5)) == null) {
                return;
            }
            new WidgetAddFlowHandler(launcherAppWidgetInfo).startConfigActivity(this, completeRestoreAppWidget.appWidgetId, completeRestoreAppWidget, 13);
        }
    }

    private LauncherAppWidgetInfo completeRestoreAppWidget(int i4, int i5) {
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) workspace.getFirstMatch(new N0(i4, 1));
        if (launcherAppWidgetHostView == null || !(launcherAppWidgetHostView instanceof PendingAppWidgetHostView)) {
            Log.e("Launcher", "Widget update called, when the widget no longer exists.");
            return null;
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) launcherAppWidgetHostView.getTag();
        launcherAppWidgetInfo.restoreStatus = i5;
        if (i5 == 0) {
            launcherAppWidgetInfo.pendingItemInfo = null;
        }
        if (((PendingAppWidgetHostView) launcherAppWidgetHostView).isReinflateIfNeeded()) {
            launcherAppWidgetHostView.reInflate();
        }
        this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
        return launcherAppWidgetInfo;
    }

    private int ensurePendingDropLayoutExists(int i4) {
        if (this.mWorkspace.getScreenWithId(i4) == null) {
            this.mWorkspace.addExtraEmptyScreens();
            IntSet commitExtraEmptyScreens = this.mWorkspace.commitExtraEmptyScreens();
            if (commitExtraEmptyScreens.isEmpty()) {
                return -1;
            }
            return commitExtraEmptyScreens.getArray().get(0);
        }
        return i4;
    }

    public static /* synthetic */ void f(Launcher launcher, int i4, PendingRequestArgs pendingRequestArgs, AppWidgetHostView appWidgetHostView) {
        launcher.completeAddAppWidget(i4, pendingRequestArgs, appWidgetHostView, null);
        if (launcher.isInState(LauncherState.EDIT_MODE)) {
            return;
        }
        launcher.mStateManager.goToState$1(LauncherState.NORMAL);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0034, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.View getFirstMatch(java.lang.Iterable r11, java.util.function.Predicate... r12) {
        /*
            int r0 = r12.length
            r1 = 0
            r2 = r1
        L3:
            r3 = 0
            if (r2 >= r0) goto L3a
            r4 = r12[r2]
            java.util.Iterator r5 = r11.iterator()
        Lc:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L37
            java.lang.Object r6 = r5.next()
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            int r7 = r6.getChildCount()
            r8 = r1
        L1d:
            if (r8 >= r7) goto L33
            android.view.View r9 = r6.getChildAt(r8)
            java.lang.Object r10 = r9.getTag()
            com.android.launcher3.model.data.ItemInfo r10 = (com.android.launcher3.model.data.ItemInfo) r10
            boolean r10 = r4.test(r10)
            if (r10 == 0) goto L30
            goto L34
        L30:
            int r8 = r8 + 1
            goto L1d
        L33:
            r9 = r3
        L34:
            if (r9 == 0) goto Lc
            return r9
        L37:
            int r2 = r2 + 1
            goto L3
        L3a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.getFirstMatch(java.lang.Iterable, java.util.function.Predicate[]):android.view.View");
    }

    public static Launcher getLauncher(Context context) {
        return (Launcher) BaseActivity.fromContext(context);
    }

    private void handleActivityResult(int i4, final int i5, Intent intent) {
        if (this.mWorkspaceLoading) {
            this.mPendingActivityResult = new ActivityResultInfo(i4, i5, intent);
            return;
        }
        this.mPendingActivityResult = null;
        final PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        this.mPendingRequestArgs = null;
        if (pendingRequestArgs == null) {
            return;
        }
        int widgetId = pendingRequestArgs.getWidgetId();
        W w4 = FeatureFlags.MULTI_SELECT_EDIT_MODE.get() ? null : new W(this, 1);
        if (i4 == 11) {
            int intExtra = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (i5 == 0) {
                completeTwoStageWidgetDrop(0, intExtra, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, w4);
                return;
            } else if (i5 == -1) {
                addAppWidgetImpl(intExtra, pendingRequestArgs, null, pendingRequestArgs.getWidgetHandler(), 500);
                return;
            } else {
                return;
            }
        }
        if (i4 == 9 || i4 == 5) {
            int intExtra2 = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            final int i6 = intExtra2 < 0 ? widgetId : intExtra2;
            if (i6 < 0 || i5 == 0) {
                Log.e("Launcher", "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity.");
                completeTwoStageWidgetDrop(0, i6, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new W(this, 2));
                return;
            }
            CellPosMapper.CellPos mapModelToPresenter = this.mCellPosMapper.mapModelToPresenter(pendingRequestArgs);
            if (pendingRequestArgs.container == -100) {
                pendingRequestArgs.screenId = this.mCellPosMapper.mapPresenterToModel(mapModelToPresenter.cellX, mapModelToPresenter.cellY, ensurePendingDropLayoutExists(mapModelToPresenter.screenId), -100).screenId;
            }
            final CellLayout screenWithId = this.mWorkspace.getScreenWithId(mapModelToPresenter.screenId);
            screenWithId.setDropPending(true);
            this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new Runnable() { // from class: com.android.launcher3.Launcher.3
                @Override // java.lang.Runnable
                public final void run() {
                    Launcher.this.completeTwoStageWidgetDrop(i5, i6, pendingRequestArgs);
                    screenWithId.setDropPending(false);
                }
            });
        } else if (i4 == 13 || i4 == 12) {
            if (i5 == -1) {
                completeAdd(i4, intent, widgetId, pendingRequestArgs);
            }
        } else {
            if (i4 == 1) {
                if (i5 == -1 && pendingRequestArgs.container != -1) {
                    completeAdd(i4, intent, -1, pendingRequestArgs);
                    this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, w4);
                } else if (i5 == 0) {
                    this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, w4);
                }
            }
            this.mDragLayer.clearAnimatedView();
        }
    }

    private View inflateAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo) {
        LauncherAppWidgetProviderInfo launcherAppWidgetInfo2;
        AppWidgetHostView pendingAppWidgetHostView;
        Intent intent;
        if ((launcherAppWidgetInfo.options & 1) != 0) {
            ComponentName searchComponentName = QsbContainerView.getSearchComponentName(this);
            launcherAppWidgetInfo.providerName = searchComponentName;
            if (searchComponentName == null) {
                this.mModelWriter.deleteItemFromDatabase(launcherAppWidgetInfo, "search widget removed because search component cannot be found");
                return null;
            }
        }
        if (this.mIsSafeModeEnabled) {
            PendingAppWidgetHostView pendingAppWidgetHostView2 = new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, true);
            pendingAppWidgetHostView2.setTag(launcherAppWidgetInfo);
            launcherAppWidgetInfo.onBindAppWidget(this, pendingAppWidgetHostView2);
            pendingAppWidgetHostView2.setFocusable(true);
            pendingAppWidgetHostView2.setOnFocusChangeListener(this.mFocusHandler);
            return pendingAppWidgetHostView2;
        }
        TraceHelper.INSTANCE.beginSection("BIND_WIDGET_id=" + launcherAppWidgetInfo.appWidgetId);
        try {
            String str = "";
            if (launcherAppWidgetInfo.hasRestoreFlag(2)) {
                str = "the provider isn't ready.";
                launcherAppWidgetInfo2 = null;
            } else if (launcherAppWidgetInfo.hasRestoreFlag(1)) {
                launcherAppWidgetInfo2 = this.mAppWidgetManager.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
                if (launcherAppWidgetInfo2 == null) {
                    str = "WidgetManagerHelper cannot find a provider from provider info.";
                }
            } else {
                launcherAppWidgetInfo2 = this.mAppWidgetManager.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId);
                if (launcherAppWidgetInfo2 == null) {
                    str = launcherAppWidgetInfo.appWidgetId <= -100 ? "CustomWidgetManager cannot find provider from that widget id." : "AppWidgetManager cannot find provider for that widget id. It could be because AppWidgetService is not available, or the appWidgetId has not been bound to a the provider yet, or you don't have access to that appWidgetId.";
                }
            }
            if (!launcherAppWidgetInfo.hasRestoreFlag(2) && launcherAppWidgetInfo.restoreStatus != 0) {
                if (launcherAppWidgetInfo2 == null) {
                    this.mModelWriter.deleteItemFromDatabase(launcherAppWidgetInfo, "Removing restored widget: id=" + launcherAppWidgetInfo.appWidgetId + " belongs to component " + launcherAppWidgetInfo.providerName + " user " + launcherAppWidgetInfo.user + ", as the provider is null and " + str);
                    return null;
                }
                int i4 = 4;
                if (launcherAppWidgetInfo.hasRestoreFlag(1)) {
                    if (!launcherAppWidgetInfo.hasRestoreFlag(16)) {
                        launcherAppWidgetInfo.appWidgetId = this.mAppWidgetHolder.allocateAppWidgetId();
                        launcherAppWidgetInfo.restoreStatus = 16 | launcherAppWidgetInfo.restoreStatus;
                        PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(launcherAppWidgetInfo2, launcherAppWidgetInfo.sourceContainer);
                        int i5 = launcherAppWidgetInfo.spanX;
                        pendingAddWidgetInfo.spanX = i5;
                        int i6 = launcherAppWidgetInfo.spanY;
                        pendingAddWidgetInfo.spanY = i6;
                        pendingAddWidgetInfo.minSpanX = launcherAppWidgetInfo.minSpanX;
                        pendingAddWidgetInfo.minSpanY = launcherAppWidgetInfo.minSpanY;
                        Bundle widgetSizeOptions = WidgetSizes.getWidgetSizeOptions(this, pendingAddWidgetInfo.componentName, i5, i6);
                        boolean hasRestoreFlag = launcherAppWidgetInfo.hasRestoreFlag(32);
                        if (hasRestoreFlag && (intent = launcherAppWidgetInfo.bindOptions) != null) {
                            Bundle extras = intent.getExtras();
                            extras.putAll(widgetSizeOptions);
                            widgetSizeOptions = extras;
                        }
                        boolean bindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo2, widgetSizeOptions);
                        launcherAppWidgetInfo.bindOptions = null;
                        launcherAppWidgetInfo.restoreStatus &= -33;
                        if (bindAppWidgetIdIfAllowed) {
                            if (((AppWidgetProviderInfo) launcherAppWidgetInfo2).configure == null || hasRestoreFlag) {
                                i4 = 0;
                            }
                            launcherAppWidgetInfo.restoreStatus = i4;
                        }
                        this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                    }
                } else if (launcherAppWidgetInfo.hasRestoreFlag(4) && ((AppWidgetProviderInfo) launcherAppWidgetInfo2).configure == null) {
                    launcherAppWidgetInfo.restoreStatus = 0;
                    this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                } else if (launcherAppWidgetInfo.hasRestoreFlag(4) && ((AppWidgetProviderInfo) launcherAppWidgetInfo2).configure != null && this.mAppWidgetManager.isAppWidgetRestored(launcherAppWidgetInfo.appWidgetId)) {
                    launcherAppWidgetInfo.restoreStatus = 0;
                    this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                }
            }
            if (launcherAppWidgetInfo.restoreStatus == 0) {
                if (launcherAppWidgetInfo2 == null) {
                    FileLog.e("Launcher", "Removing invalid widget: id=" + launcherAppWidgetInfo.appWidgetId);
                    this.mModelWriter.deleteWidgetInfo(launcherAppWidgetInfo, this.mAppWidgetHolder, str);
                    return null;
                }
                launcherAppWidgetInfo.minSpanX = launcherAppWidgetInfo2.minSpanX;
                launcherAppWidgetInfo.minSpanY = launcherAppWidgetInfo2.minSpanY;
                pendingAppWidgetHostView = this.mAppWidgetHolder.createView(this, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo2);
            } else if (launcherAppWidgetInfo.hasRestoreFlag(1) || launcherAppWidgetInfo2 == null) {
                pendingAppWidgetHostView = new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, false);
            } else {
                this.mAppWidgetHolder.addPendingView(launcherAppWidgetInfo.appWidgetId, new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, false));
                pendingAppWidgetHostView = this.mAppWidgetHolder.createView(this, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo2);
            }
            pendingAppWidgetHostView.setTag(launcherAppWidgetInfo);
            launcherAppWidgetInfo.onBindAppWidget(this, pendingAppWidgetHostView);
            pendingAppWidgetHostView.setFocusable(true);
            pendingAppWidgetHostView.setOnFocusChangeListener(this.mFocusHandler);
            return pendingAppWidgetHostView;
        } finally {
            TraceHelper.INSTANCE.endSection();
        }
    }

    private void logStopAndResume(boolean z4) {
        StatsLogManager.LauncherEvent launcherEvent;
        if (this.mPendingExecutor != null) {
            return;
        }
        int currentPage = this.mWorkspace.isOverlayShown() ? -1 : this.mWorkspace.getCurrentPage();
        int i4 = ((LauncherState) this.mStateManager.getState()).statsLogOrdinal;
        StatsLogManager.StatsLogger logger = getStatsLogManager().logger();
        if (z4) {
            logger.withSrcState(1).withDstState(((LauncherState) this.mStateManager.getState()).statsLogOrdinal);
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ONRESUME;
        } else {
            logger.withSrcState(((LauncherState) this.mStateManager.getState()).statsLogOrdinal).withDstState(1);
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ONSTOP;
        }
        if (i4 == 2 && this.mWorkspace != null) {
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex$1(currentPage);
            newBuilder.setWorkspace(newBuilder2);
            logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build());
        }
        logger.log(launcherEvent);
    }

    private void restoreState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        LauncherState launcherState = LauncherState.values()[bundle.getInt("launcher.state", LauncherState.NORMAL.ordinal)];
        NonConfigInstance nonConfigInstance = (NonConfigInstance) getLastNonConfigurationInstance();
        if (((nonConfigInstance == null || (nonConfigInstance.config.diff(this.mOldConfig) & 512) == 0) ? false : true) || !launcherState.hasFlag(2)) {
            this.mStateManager.goToState(launcherState, false);
        }
        PendingRequestArgs pendingRequestArgs = (PendingRequestArgs) bundle.getParcelable("launcher.request_args");
        if (pendingRequestArgs != null) {
            this.mPendingRequestArgs = pendingRequestArgs;
        }
        this.mPendingActivityRequestCode = bundle.getInt("launcher.request_code");
        this.mPendingActivityResult = (ActivityResultInfo) bundle.getParcelable("launcher.activity_result");
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("launcher.widget_panel");
        if (sparseParcelableArray != null) {
            WidgetsFullSheet.show(this, false).restoreHierarchyState(sparseParcelableArray);
        }
    }

    private void switchOverlay(Supplier supplier) {
        InterfaceC1364d interfaceC1364d = this.mOverlayManager;
        if (interfaceC1364d != null) {
            interfaceC1364d.onActivityDestroyed(this);
        }
        this.mOverlayManager = (InterfaceC1364d) supplier.get();
        if (getRootView().isAttachedToWindow()) {
            this.mOverlayManager.onAttachedToWindow();
        }
        this.mDeferOverlayCallbacks = true;
        checkIfOverlayStillDeferred();
    }

    private void updateDisallowBack() {
        LauncherRootView rootView;
        if (DESKTOP_MODE_1_SUPPORTED || DESKTOP_MODE_2_SUPPORTED || (rootView = getRootView()) == null) {
            return;
        }
        rootView.setDisallowBackGesture(getStateManager().getState() == LauncherState.NORMAL && AbstractFloatingView.getTopOpenView(this) == null);
    }

    public final void addAppWidgetImpl(int i4, ItemInfo itemInfo, AppWidgetHostView appWidgetHostView, WidgetAddFlowHandler widgetAddFlowHandler, int i5) {
        if (widgetAddFlowHandler.startConfigActivity(this, i4, itemInfo, 5)) {
            return;
        }
        W w4 = FeatureFlags.MULTI_SELECT_EDIT_MODE.get() ? null : new W(this, 3);
        completeAddAppWidget(i4, itemInfo, appWidgetHostView, widgetAddFlowHandler.getProviderInfo(this));
        this.mWorkspace.removeExtraEmptyScreenDelayed(i5, false, w4);
    }

    public final FolderIcon addFolder(CellLayout cellLayout, int i4, int i5, int i6, int i7) {
        FolderInfo folderInfo = new FolderInfo();
        this.mModelWriter.addItemToDatabase(folderInfo, i4, i5, i6, i7);
        FolderIcon inflateFolderAndIcon = FolderIcon.inflateFolderAndIcon(R.layout.folder_icon, this, cellLayout, folderInfo);
        this.mWorkspace.addInScreen(inflateFolderAndIcon, folderInfo);
        this.mWorkspace.getParentCellLayoutForView(inflateFolderAndIcon).mShortcutsAndWidgets.measureChild(inflateFolderAndIcon);
        return inflateFolderAndIcon;
    }

    public final void addPendingItem(PendingAddItemInfo pendingAddItemInfo, int i4, int i5, int[] iArr, int i6, int i7) {
        if (iArr == null) {
            pendingAddItemInfo.screenId = this.mCellPosMapper.mapPresenterToModel(0, 0, i5, i4).screenId;
        } else {
            CellPosMapper.CellPos mapPresenterToModel = this.mCellPosMapper.mapPresenterToModel(iArr[0], iArr[1], i5, i4);
            pendingAddItemInfo.screenId = mapPresenterToModel.screenId;
            pendingAddItemInfo.cellX = mapPresenterToModel.cellX;
            pendingAddItemInfo.cellY = mapPresenterToModel.cellY;
        }
        pendingAddItemInfo.container = i4;
        pendingAddItemInfo.spanX = i6;
        pendingAddItemInfo.spanY = i7;
        if (!(pendingAddItemInfo instanceof PendingAddWidgetInfo)) {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) pendingAddItemInfo;
            this.mPendingRequestArgs = PendingRequestArgs.forIntent(new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(pendingAddShortcutInfo.componentName), pendingAddShortcutInfo);
            TestLogging.recordEvent("Main", "start: processShortcutFromDrop");
            if (pendingAddShortcutInfo.getActivityInfo(this).startConfigActivity(this)) {
                return;
            }
            handleActivityResult(1, 0, null);
            return;
        }
        PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
        AppWidgetHostView appWidgetHostView = pendingAddWidgetInfo.boundWidget;
        WidgetAddFlowHandler handler = pendingAddWidgetInfo.getHandler();
        if (appWidgetHostView != null) {
            this.mDragLayer.removeView(appWidgetHostView);
            addAppWidgetImpl(appWidgetHostView.getAppWidgetId(), pendingAddWidgetInfo, appWidgetHostView, handler, 0);
            pendingAddWidgetInfo.boundWidget = null;
            return;
        }
        int widgetIdForCustomProvider = pendingAddWidgetInfo.itemType == 5 ? ((CustomWidgetManager) CustomWidgetManager.INSTANCE.get(this)).getWidgetIdForCustomProvider(pendingAddWidgetInfo.componentName) : this.mAppWidgetHolder.allocateAppWidgetId();
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(widgetIdForCustomProvider, pendingAddWidgetInfo.info, pendingAddWidgetInfo.bindOptions)) {
            addAppWidgetImpl(widgetIdForCustomProvider, pendingAddWidgetInfo, null, handler, 0);
        } else {
            handler.startBindFlow(this, widgetIdForCustomProvider, pendingAddWidgetInfo, 11);
        }
    }

    public boolean areFreeformTasksVisible() {
        return false;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAllApplications(AppInfo[] appInfoArr, int i4, Map map) {
        boolean shouldShowTabs = this.mAppsView.shouldShowTabs();
        this.mAppsView.getAppsStore().setApps(appInfoArr, i4, map);
        PopupContainerWithArrow.dismissInvalidPopup(this);
        if (shouldShowTabs != this.mAppsView.shouldShowTabs()) {
            getStateManager().goToState(LauncherState.NORMAL);
        }
        if (Utilities.ATLEAST_S) {
            Trace.endAsyncSection("DisplayAllApps", 1);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAllWidgets(List list) {
        this.mPopupDataProvider.setAllWidgets(list);
    }

    public final void bindAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo) {
        View inflateAppWidget = inflateAppWidget(launcherAppWidgetInfo);
        if (inflateAppWidget != null) {
            this.mWorkspace.addInScreen(inflateAppWidget, launcherAppWidgetInfo);
            this.mWorkspace.requestLayout();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2) {
        if (intArray != null) {
            intArray.removeAllValues(this.mWorkspace.mScreenOrder);
            bindAddScreens(intArray);
        }
        if (!arrayList.isEmpty()) {
            bindItems(arrayList, false, false);
        }
        if (!arrayList2.isEmpty()) {
            bindItems(arrayList2, true, false);
        }
        this.mWorkspace.removeExtraEmptyScreenDelayed(0, false, null);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindDeepShortcutMap(HashMap hashMap) {
        this.mPopupDataProvider.setDeepShortcutMap(hashMap);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindIncrementalDownloadProgressUpdated(AppInfo appInfo) {
        this.mAppsView.getAppsStore().updateProgressBar(appInfo);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindItems(List list) {
        bindItems(list, false, false);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindRestoreItemsChange(HashSet hashSet) {
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        C0484q c0484q = new C0484q(hashSet, 1);
        workspace.mapOverItems(c0484q);
        Folder open = Folder.getOpen(this);
        if (open != null) {
            open.iterateOverItems(c0484q);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindScreens(IntArray intArray) {
        ((PageIndicator) this.mWorkspace.mPageIndicator).setAreScreensBinding(true);
        if (intArray.indexOf(0) != 0) {
            intArray.removeValue(0);
            intArray.add(0, 0);
        }
        bindAddScreens(intArray);
        this.mWorkspace.unlockWallpaperFromDefaultPageOnNextLayout();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindStringCache(StringCache stringCache) {
        this.mStringCache = stringCache;
        this.mAppsView.updateWorkUI();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindWidgetsRestored(final ArrayList arrayList) {
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        if (arrayList.isEmpty()) {
            return;
        }
        Workspace.DeferredWidgetRefresh deferredWidgetRefresh = new Workspace.DeferredWidgetRefresh(arrayList, workspace.mLauncher.mAppWidgetHolder);
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) arrayList.get(0);
        WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(workspace.getContext());
        if ((launcherAppWidgetInfo.hasRestoreFlag(1) ? widgetManagerHelper.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user) : widgetManagerHelper.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId)) != null) {
            deferredWidgetRefresh.run();
        } else {
            workspace.mapOverItems(new LauncherBindableItemsContainer$ItemOperator() { // from class: com.android.launcher3.Workspace.9
                @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
                public final boolean evaluate(View view, ItemInfo itemInfo) {
                    if ((view instanceof PendingAppWidgetHostView) && arrayList.contains(itemInfo)) {
                        ((LauncherAppWidgetInfo) itemInfo).installProgress = 100;
                        ((PendingAppWidgetHostView) view).applyState();
                        return false;
                    }
                    return false;
                }
            });
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceComponentsRemoved(Predicate predicate) {
        this.mWorkspace.removeItemsByMatcher(predicate);
        this.mDragController.onAppsRemoved(predicate);
        PopupContainerWithArrow.dismissInvalidPopup(this);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindWorkspaceItemsChanged(List list) {
        if (list.isEmpty()) {
            return;
        }
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        C0484q c0484q = new C0484q(new HashSet(list), 0);
        workspace.mapOverItems(c0484q);
        Folder open = Folder.getOpen(this);
        if (open != null) {
            open.iterateOverItems(c0484q);
        }
        PopupContainerWithArrow.dismissInvalidPopup(this);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final boolean canUseMultipleShadesForPopup() {
        return AbstractFloatingView.getTopOpenViewWithType(this, 1) == null && getStateManager().getState() != LauncherState.ALL_APPS;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void clearPendingBinds() {
        ViewOnDrawExecutor viewOnDrawExecutor = this.mPendingExecutor;
        if (viewOnDrawExecutor != null) {
            viewOnDrawExecutor.cancel();
            this.mPendingExecutor = null;
            this.mAppsView.getAppsStore().disableDeferUpdatesSilently();
        }
    }

    public final void clearPendingExecutor(ViewOnDrawExecutor viewOnDrawExecutor) {
        if (this.mPendingExecutor == viewOnDrawExecutor) {
            this.mPendingExecutor = null;
        }
    }

    public void closeOpenViews(boolean z4) {
        AbstractFloatingView.closeAllOpenViews(this, z4);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void collectStateHandlers(List list) {
        list.add(this.mAllAppsController);
        list.add(this.mWorkspace);
    }

    public final void completeAddAppWidget(int i4, ItemInfo itemInfo, AppWidgetHostView appWidgetHostView, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (launcherAppWidgetProviderInfo == null) {
            launcherAppWidgetProviderInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(i4);
        }
        if (appWidgetHostView == null) {
            appWidgetHostView = this.mAppWidgetHolder.createView(this, i4, launcherAppWidgetProviderInfo);
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(i4, ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider, launcherAppWidgetProviderInfo, appWidgetHostView);
        launcherAppWidgetInfo.spanX = itemInfo.spanX;
        launcherAppWidgetInfo.spanY = itemInfo.spanY;
        launcherAppWidgetInfo.minSpanX = itemInfo.minSpanX;
        launcherAppWidgetInfo.minSpanY = itemInfo.minSpanY;
        launcherAppWidgetInfo.user = launcherAppWidgetProviderInfo.getProfile();
        if (itemInfo instanceof PendingAddWidgetInfo) {
            launcherAppWidgetInfo.sourceContainer = ((PendingAddWidgetInfo) itemInfo).sourceContainer;
        } else if (itemInfo instanceof PendingRequestArgs) {
            launcherAppWidgetInfo.sourceContainer = ((PendingRequestArgs) itemInfo).getWidgetSourceContainer();
        }
        CellPosMapper.CellPos mapModelToPresenter = this.mCellPosMapper.mapModelToPresenter(itemInfo);
        this.mModelWriter.addItemToDatabase(launcherAppWidgetInfo, itemInfo.container, mapModelToPresenter.screenId, mapModelToPresenter.cellX, mapModelToPresenter.cellY);
        appWidgetHostView.setVisibility(0);
        appWidgetHostView.setTag(launcherAppWidgetInfo);
        launcherAppWidgetInfo.onBindAppWidget(this, appWidgetHostView);
        appWidgetHostView.setFocusable(true);
        appWidgetHostView.setOnFocusChangeListener(this.mFocusHandler);
        this.mWorkspace.addInScreen(appWidgetHostView, launcherAppWidgetInfo);
        this.mDragLayer.announceForAccessibility(getString(R.string.item_added_to_workspace));
        if (appWidgetHostView instanceof LauncherAppWidgetHostView) {
            final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) appWidgetHostView;
            final CellLayout cellLayout = getCellLayout(launcherAppWidgetInfo.container, mapModelToPresenter.screenId);
            if (this.mStateManager.getState() == LauncherState.NORMAL) {
                AppWidgetResizeFrame.showForWidget(launcherAppWidgetHostView, cellLayout);
            } else {
                this.mStateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.launcher3.Launcher.4
                    @Override // com.android.launcher3.statemanager.StateManager.StateListener
                    public final void onStateTransitionComplete(Object obj) {
                        LauncherState launcherState = (LauncherState) obj;
                        Launcher launcher = Launcher.this;
                        if ((launcher.mPrevLauncherState == LauncherState.SPRING_LOADED || launcher.mPrevLauncherState == LauncherState.EDIT_MODE) && launcherState == LauncherState.NORMAL) {
                            AppWidgetResizeFrame.showForWidget(launcherAppWidgetHostView, cellLayout);
                            launcher.mStateManager.removeStateListener(this);
                        }
                    }
                });
            }
        }
    }

    public void completeAddShortcut(Intent intent, int i4, int i5, int i6, int i7, PendingRequestArgs pendingRequestArgs) {
        BubbleTextView bubbleTextView;
        int[] iArr;
        boolean findCellForSpan;
        if (pendingRequestArgs.getRequestCode() != 1) {
            return;
        }
        CellLayout cellLayout = getCellLayout(i4, i5);
        Parcelable parcelableExtra = intent.getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        WorkspaceItemInfo createWorkspaceItemFromPinItemRequest = PinRequestHelper.createWorkspaceItemFromPinItemRequest(this, parcelableExtra instanceof LauncherApps.PinItemRequest ? (LauncherApps.PinItemRequest) parcelableExtra : null, 0L);
        if (createWorkspaceItemFromPinItemRequest == null) {
            Log.e("Launcher", "Unable to parse a valid shortcut result");
        } else if (i4 >= 0) {
            FolderIcon findFolderIcon = findFolderIcon(i4);
            if (findFolderIcon != null) {
                ((FolderInfo) findFolderIcon.getTag()).add(pendingRequestArgs.rank, createWorkspaceItemFromPinItemRequest, false);
                return;
            }
            Log.e("Launcher", "Could not find folder with id " + i4 + " to add shortcut.");
        } else {
            BubbleTextView createShortcut = createShortcut((ViewGroup) this.mWorkspace.getChildAt(0), createWorkspaceItemFromPinItemRequest);
            int[] iArr2 = this.mTmpAddItemCellCoordinates;
            if (i6 < 0 || i7 < 0) {
                bubbleTextView = createShortcut;
                iArr = iArr2;
                findCellForSpan = cellLayout.findCellForSpan(1, 1, iArr);
            } else {
                iArr2[0] = i6;
                iArr2[1] = i7;
                DropTarget.DragObject dragObject = new DropTarget.DragObject(getApplicationContext());
                dragObject.dragInfo = createWorkspaceItemFromPinItemRequest;
                bubbleTextView = createShortcut;
                if (this.mWorkspace.createUserFolderIfNecessary(createShortcut, i4, cellLayout, iArr2, 0.0f, true, dragObject) || this.mWorkspace.addToExistingFolderIfNecessary(cellLayout, iArr2, 0.0f, dragObject, true)) {
                    return;
                }
                iArr = iArr2;
                findCellForSpan = true;
            }
            if (!findCellForSpan) {
                this.mWorkspace.onNoCellFound(cellLayout, createWorkspaceItemFromPinItemRequest, null);
                return;
            }
            this.mModelWriter.addItemToDatabase(createWorkspaceItemFromPinItemRequest, i4, i5, iArr[0], iArr[1]);
            this.mWorkspace.addInScreen(bubbleTextView, createWorkspaceItemFromPinItemRequest);
        }
    }

    public final void completeTwoStageWidgetDrop(int i4, final int i5, final PendingRequestArgs pendingRequestArgs) {
        int i6;
        int i7;
        Runnable runnable;
        AppWidgetHostView appWidgetHostView;
        CellLayout screenWithId = this.mWorkspace.getScreenWithId(this.mCellPosMapper.mapModelToPresenter(pendingRequestArgs).screenId);
        if (i4 == -1) {
            final AppWidgetHostView createView = this.mAppWidgetHolder.createView(this, i5, pendingRequestArgs.getWidgetHandler().getProviderInfo(this));
            appWidgetHostView = createView;
            i7 = 3;
            runnable = new Runnable() { // from class: com.android.launcher3.L
                @Override // java.lang.Runnable
                public final void run() {
                    Launcher.f(Launcher.this, i5, pendingRequestArgs, createView);
                }
            };
        } else {
            if (i4 == 0) {
                this.mAppWidgetHolder.deleteAppWidgetId(i5);
                i6 = 4;
            } else {
                i6 = 0;
            }
            i7 = i6;
            runnable = null;
            appWidgetHostView = null;
        }
        if (this.mDragLayer.getAnimatedView() != null) {
            this.mWorkspace.animateWidgetDrop(pendingRequestArgs, screenWithId, this.mDragLayer.getAnimatedView(), runnable, i7, appWidgetHostView, true);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public LauncherAccessibilityDelegate createAccessibilityDelegate() {
        return new LauncherAccessibilityDelegate(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.K] */
    public LauncherWidgetHolder createAppWidgetHolder() {
        return ((LauncherWidgetHolder.HolderFactory) ResourceBasedOverride.Overrides.getObject(R.string.widget_holder_factory_class, this, LauncherWidgetHolder.HolderFactory.class)).newInstance(this, new IntConsumer() { // from class: com.android.launcher3.K
            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                Workspace workspace = Launcher.this.mWorkspace;
                workspace.getClass();
                workspace.mapOverItems(new V0(workspace, i4));
            }
        });
    }

    public OnboardingPrefs createOnboardingPrefs(SharedPreferences sharedPreferences) {
        return new OnboardingPrefs(this, sharedPreferences);
    }

    public final BubbleTextView createShortcut(ViewGroup viewGroup, WorkspaceItemInfo workspaceItemInfo) {
        BubbleTextView bubbleTextView = (BubbleTextView) LayoutInflater.from(viewGroup != null ? viewGroup.getContext() : this).inflate(R.layout.app_icon, viewGroup, false);
        bubbleTextView.applyFromWorkspaceItem(0, workspaceItemInfo, false);
        bubbleTextView.setOnClickListener(getItemOnClickListener());
        bubbleTextView.setOnFocusChangeListener(this.mFocusHandler);
        return bubbleTextView;
    }

    public StartupLatencyLogger createStartupLatencyLogger(StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        return new StartupLatencyLogger(latencyType);
    }

    public TouchController[] createTouchControllers() {
        return new TouchController[]{this.mDragController, new AllAppsSwipeController(this)};
    }

    public final void deferOverlayCallbacksUntilNextResumeOrStop() {
        this.mDeferOverlayCallbacks = true;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
        this.mOverlayManager.h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        TestLogging.recordKeyEvent(keyEvent);
        return keyEvent.getKeyCode() == 3 || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean dispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        List<CharSequence> text = accessibilityEvent.getText();
        text.clear();
        text.add(this.mWorkspace == null ? getString(R.string.home_screen) : ((LauncherState) this.mStateManager.getState()).getDescription(this));
        return dispatchPopulateAccessibilityEvent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000a, code lost:
        if (r0 != 3) goto L7;
     */
    @Override // android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r3) {
        /*
            r2 = this;
            int r0 = r3.getAction()
            r1 = 1
            if (r0 == 0) goto L17
            if (r0 == r1) goto Ld
            r1 = 3
            if (r0 == r1) goto L13
            goto L19
        Ld:
            long r0 = android.os.SystemClock.uptimeMillis()
            r2.mLastTouchUpTime = r0
        L13:
            r0 = 0
            r2.mTouchInProgress = r0
            goto L19
        L17:
            r2.mTouchInProgress = r1
        L19:
            java.lang.String r0 = "Main"
            java.lang.String r1 = "Touch event"
            com.android.launcher3.testing.TestLogging.recordMotionEvent(r0, r1, r3)
            boolean r2 = super.dispatchTouchEvent(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (strArr.length > 0) {
            if (TextUtils.equals(strArr[0], "--all")) {
                printWriter.println(str + "Workspace Items");
                for (int i4 = 0; i4 < this.mWorkspace.getPageCount(); i4++) {
                    printWriter.println(str + "  Homescreen " + i4);
                    ShortcutAndWidgetContainer shortcutAndWidgetContainer = ((CellLayout) this.mWorkspace.getPageAt(i4)).mShortcutsAndWidgets;
                    for (int i5 = 0; i5 < shortcutAndWidgetContainer.getChildCount(); i5++) {
                        Object tag = shortcutAndWidgetContainer.getChildAt(i5).getTag();
                        if (tag != null) {
                            StringBuilder a4 = t.j.a(str, "    ");
                            a4.append(tag.toString());
                            printWriter.println(a4.toString());
                        }
                    }
                }
                printWriter.println(str + "  Hotseat");
                ShortcutAndWidgetContainer shortcutAndWidgetContainer2 = this.mHotseat.mShortcutsAndWidgets;
                for (int i6 = 0; i6 < shortcutAndWidgetContainer2.getChildCount(); i6++) {
                    Object tag2 = shortcutAndWidgetContainer2.getChildAt(i6).getTag();
                    if (tag2 != null) {
                        StringBuilder a5 = t.j.a(str, "    ");
                        a5.append(tag2.toString());
                        printWriter.println(a5.toString());
                    }
                }
            }
        }
        printWriter.println(str + "Misc:");
        dumpMisc(str + "\t", printWriter);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmWorkspaceLoading=");
        StringBuilder c4 = C0410q.c(sb, this.mWorkspaceLoading, printWriter, str, "\tmPendingRequestArgs=");
        c4.append(this.mPendingRequestArgs);
        c4.append(" mPendingActivityResult=");
        c4.append(this.mPendingActivityResult);
        printWriter.println(c4.toString());
        printWriter.println(str + "\tmRotationHelper: " + this.mRotationHelper);
        printWriter.println(str + "\tmAppWidgetHolder.isListening: " + this.mAppWidgetHolder.isListening());
        this.mDragLayer.dump(str, printWriter);
        this.mStateManager.dump(str, printWriter);
        this.mPopupDataProvider.dump(str, printWriter);
        this.mDeviceProfile.dump(this, str, printWriter);
        try {
            int i7 = FileLog.f4698a;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Message.obtain(FileLog.getHandler(), 3, Pair.create(printWriter, countDownLatch)).sendToTarget();
            countDownLatch.await(2L, TimeUnit.SECONDS);
            countDownLatch.getCount();
        } catch (Exception unused) {
        }
        this.mModel.dumpState(str, fileDescriptor, printWriter, strArr);
        NexusLauncher nexusLauncher = this.mLauncherCallbacks;
        if (nexusLauncher != null) {
            nexusLauncher.getClass();
            if (FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
                printWriter.println(str + "DeviceSearchSettings:");
                HashMap hashMap = new HashMap();
                SharedPreferences$OnSharedPreferenceChangeListenerC0725z2.b(hashMap);
                for (String str2 : hashMap.keySet()) {
                    int i8 = ((int[]) hashMap.get(str2))[1];
                    StringBuilder a6 = C1395a.a(str);
                    a6.append(str2.replace("pref_allow", "  "));
                    a6.append(":");
                    Launcher launcher = nexusLauncher.f6470a;
                    a6.append(launcher.getSharedPrefs().getBoolean(str2, launcher.getResources().getBoolean(i8)));
                    printWriter.println(a6.toString());
                }
            }
        }
        this.mOverlayManager.dump(str, printWriter);
    }

    public void enableHotseatEdu(boolean z4) {
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final FolderIcon findFolderIcon(int i4) {
        return (FolderIcon) this.mWorkspace.getHomescreenIconByItemId(i4);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishBindingItems(IntSet intSet) {
        TraceHelper.INSTANCE.beginSection("finishBindingItems");
        this.mWorkspace.restoreInstanceStateForRemainingPages();
        this.mWorkspaceLoading = false;
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            handleActivityResult(activityResultInfo.requestCode, activityResultInfo.resultCode, activityResultInfo.data);
            this.mPendingActivityResult = null;
        }
        int pageIndexForScreenId = (intSet == null || intSet.isEmpty()) ? -1 : this.mWorkspace.getPageIndexForScreenId(intSet.getArray().get(0));
        this.mWorkspace.setCurrentPage(pageIndexForScreenId, pageIndexForScreenId);
        this.mPagesToBindSynchronously = new IntSet();
        ViewCache viewCache = getViewCache();
        InvariantDeviceProfile invariantDeviceProfile = this.mDeviceProfile.inv;
        viewCache.setCacheSize(R.layout.folder_application, invariantDeviceProfile.numFolderColumns * invariantDeviceProfile.numFolderRows);
        getViewCache().setCacheSize(R.layout.folder_page, 2);
        TraceHelper.INSTANCE.endSection();
        this.mWorkspace.removeExtraEmptyScreenDelayed(0, true, null);
        ((PageIndicator) this.mWorkspace.mPageIndicator).setAreScreensBinding(false);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public final AllAppsTransitionController getAllAppsController() {
        return this.mAllAppsController;
    }

    public Optional getAllAppsEntryEvent() {
        return Optional.of(FeatureFlags.ENABLE_DEVICE_SEARCH.get() ? StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH : StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_ENTRY);
    }

    public Optional getAllAppsExitEvent() {
        return Optional.of(StatsLogManager.LauncherEvent.LAUNCHER_ALLAPPS_EXIT);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.OnLongClickListener getAllAppsItemLongClickListener() {
        return ItemLongClickListener.INSTANCE_ALL_APPS;
    }

    public final CannedAnimationCoordinator getAnimationCoordinator() {
        return this.mAnimationCoordinator;
    }

    public final LauncherWidgetHolder getAppWidgetHolder() {
        return this.mAppWidgetHolder;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final ActivityAllAppsContainerView getAppsView() {
        return this.mAppsView;
    }

    public final CellLayout getCellLayout(int i4, int i5) {
        return i4 == -101 ? this.mHotseat : this.mWorkspace.getScreenWithId(i5);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final CellPosMapper getCellPosMapper() {
        return this.mCellPosMapper;
    }

    public InterfaceC1364d getDefaultOverlay() {
        return new AnonymousClass2();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return this.mPopupDataProvider.getDotInfoForItem(itemInfo);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DragController getDragController() {
        return this.mDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DragLayer getDragLayer() {
        return this.mDragLayer;
    }

    public final DropTargetBar getDropTargetBar() {
        return this.mDropTargetBar;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DropTargetHandler getDropTargetHandler() {
        return new DropTargetHandler(this);
    }

    public final View getFirstMatchForAppClose(final int i4, final String str, final UserHandle userHandle, boolean z4) {
        Predicate predicate = new Predicate() { // from class: com.android.launcher3.T
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                ItemInfo itemInfo = (ItemInfo) obj;
                return itemInfo != null && itemInfo.id == i4;
            }
        };
        Predicate predicate2 = new Predicate() { // from class: com.android.launcher3.U
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                ItemInfo itemInfo = (ItemInfo) obj;
                return itemInfo != null && itemInfo.itemType == 0 && itemInfo.user.equals(userHandle) && itemInfo.getTargetComponent() != null && TextUtils.equals(itemInfo.getTargetComponent().getPackageName(), str);
            }
        };
        if (z4 && isInState(LauncherState.ALL_APPS)) {
            AllAppsRecyclerView activeRecyclerView = this.mAppsView.getActiveRecyclerView();
            View firstMatch = getFirstMatch(Collections.singletonList(activeRecyclerView), predicate, predicate2);
            if (firstMatch != null && activeRecyclerView.computeVerticalScrollOffset() > 0) {
                RectF rectF = new RectF();
                FloatingIconView.getLocationBoundsForView(this, firstMatch, false, rectF, new Rect());
                if (rectF.top < this.mAppsView.getHeaderBottom()) {
                    return null;
                }
            }
            return firstMatch;
        }
        Folder open = Folder.getOpen(this);
        if (open != null) {
            View firstMatch2 = getFirstMatch(Collections.singletonList(open.getContent().getCurrentCellLayout().mShortcutsAndWidgets), predicate, predicate2);
            if (firstMatch2 != null) {
                return firstMatch2;
            }
            open.close(isStarted() && !isForceInvisible());
        }
        ArrayList arrayList = new ArrayList(this.mWorkspace.getPanelCount() + 1);
        arrayList.add(this.mWorkspace.mLauncher.mHotseat.mShortcutsAndWidgets);
        this.mWorkspace.forEachVisiblePage(new V(0, arrayList));
        int i5 = ItemInfoMatcher.f5271a;
        return getFirstMatch(arrayList, predicate, new C0481n(2, predicate), predicate2, new C0481n(2, predicate2));
    }

    public final ViewGroupFocusHelper getFocusHandler() {
        return this.mFocusHandler;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final Rect getFolderBoundingBox() {
        CellLayout cellLayout;
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        Rect rect = new Rect();
        int nextPage = workspace.getNextPage();
        int panelCount = workspace.getPanelCount();
        for (int i4 = nextPage; i4 < nextPage + panelCount && (cellLayout = (CellLayout) workspace.getChildAt(i4)) != null; i4++) {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            Rect rect2 = new Rect();
            workspace.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(shortcutAndWidgetContainer, rect2);
            rect.union(rect2);
        }
        return rect;
    }

    public final Hotseat getHotseat() {
        return this.mHotseat;
    }

    public final LauncherModel getModel() {
        return this.mModel;
    }

    public final ModelWriter getModelWriter() {
        return this.mModelWriter;
    }

    public final OnBackAnimationCallback getOnBackAnimationCallback() {
        if (isInAutoCancelActionMode()) {
            return new OnBackAnimationCallback() { // from class: com.android.launcher3.O
                public final void onBackInvoked() {
                    switch (r1) {
                        case 0:
                            ((Launcher) this).finishAutoCancelActionMode();
                            return;
                        default:
                            ((DragController) this).cancelDrag();
                            return;
                    }
                }
            };
        }
        if (!this.mDragController.isDragging()) {
            AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
            return (topOpenView == null || !topOpenView.canHandleBack()) ? new OnBackAnimationCallback() { // from class: com.android.launcher3.Launcher.1
                public final void onBackCancelled() {
                    Launcher launcher = Launcher.this;
                    ((LauncherState) Launcher.this.mStateManager.getState()).getClass();
                    StateManager stateManager = launcher.getStateManager();
                    LauncherState launcherState = (LauncherState) stateManager.getLastState();
                    for (StateManager.StateHandler stateHandler : stateManager.getStateHandlers()) {
                        stateHandler.onBackCancelled(launcherState);
                    }
                }

                public final void onBackInvoked() {
                    Launcher.this.onStateBack();
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    Launcher launcher = Launcher.this;
                    float progress = backEvent.getProgress();
                    ((LauncherState) Launcher.this.mStateManager.getState()).getClass();
                    StateManager stateManager = launcher.getStateManager();
                    LauncherState launcherState = (LauncherState) stateManager.getLastState();
                    for (StateManager.StateHandler stateHandler : stateManager.getStateHandlers()) {
                        stateHandler.onBackProgressed(launcherState, progress);
                    }
                }
            } : topOpenView;
        }
        final LauncherDragController launcherDragController = this.mDragController;
        Objects.requireNonNull(launcherDragController);
        return new OnBackAnimationCallback() { // from class: com.android.launcher3.O
            public final void onBackInvoked() {
                switch (r1) {
                    case 0:
                        ((Launcher) launcherDragController).finishAutoCancelActionMode();
                        return;
                    default:
                        ((DragController) launcherDragController).cancelDrag();
                        return;
                }
            }
        };
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final OnboardingPrefs getOnboardingPrefs() {
        return this.mOnboardingPrefs;
    }

    public ArrowPopup getOptionsPopup() {
        return (ArrowPopup) findViewById(R.id.popup_container);
    }

    public final int getOrientation() {
        return this.mOldConfig.orientation;
    }

    public final InterfaceC1364d getOverlayManager() {
        return this.mOverlayManager;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final View getOverviewPanel() {
        return this.mOverviewPanel;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final IntSet getPagesToBindSynchronously(IntArray intArray) {
        IntSet currentPageScreenIds = !this.mPagesToBindSynchronously.isEmpty() ? this.mPagesToBindSynchronously : !this.mWorkspaceLoading ? this.mWorkspace.getCurrentPageScreenIds() : this.mSynchronouslyBoundPages;
        IntArray intArray2 = new IntArray();
        IntSet intSet = new IntSet();
        if (currentPageScreenIds.isEmpty()) {
            return intSet;
        }
        for (int i4 : intArray.toArray()) {
            intArray2.add(i4);
        }
        int i5 = currentPageScreenIds.getArray().get(0);
        this.mWorkspace.getClass();
        int screenPair = Workspace.getScreenPair(i5);
        if (intArray2.contains(i5)) {
            intSet.add(i5);
            if (this.mDeviceProfile.isTwoPanels && intArray2.contains(screenPair)) {
                intSet.add(screenPair);
            }
        } else if (LauncherAppState.getIDP(this).supportedProfiles.stream().anyMatch(new J()) && intArray2.contains(screenPair)) {
            intSet.add(screenPair);
        }
        return intSet;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final PopupDataProvider getPopupDataProvider() {
        return this.mPopupDataProvider;
    }

    public final RectF getPopupTarget(float f4, float f5) {
        float dimension = getResources().getDimension(R.dimen.options_menu_thumb_size) / 2.0f;
        if (f4 < 0.0f || f5 < 0.0f) {
            f4 = this.mDragLayer.getWidth() / 2;
            f5 = this.mDragLayer.getHeight() / 2;
        }
        return new RectF(f4 - dimension, f5 - dimension, f4 + dimension, f5 + dimension);
    }

    public final RotationHelper getRotationHelper() {
        return this.mRotationHelper;
    }

    @Override // com.android.launcher3.BaseActivity
    public final ScrimView getScrimView() {
        return this.mScrimView;
    }

    public BaseSearchConfig getSearchConfig() {
        return this.mBaseSearchConfig;
    }

    public final SharedPreferences getSharedPrefs() {
        return this.mSharedPrefs;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final StateManager getStateManager() {
        return this.mStateManager;
    }

    @Override // com.android.launcher3.BaseActivity, com.android.launcher3.views.ActivityContext
    public final StatsLogManager getStatsLogManager() {
        return super.getStatsLogManager().withDefaultInstanceId(this.mAllAppsSessionLogId);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final StringCache getStringCache() {
        return this.mStringCache;
    }

    public Stream getSupportedShortcuts() {
        return Stream.of((Object[]) new SystemShortcut.Factory[]{SystemShortcut.APP_INFO, SystemShortcut.WIDGETS, SystemShortcut.INSTALL});
    }

    public final Workspace getWorkspace() {
        return this.mWorkspace;
    }

    public void handleGestureContract(Intent intent) {
        Bundle bundleExtra;
        GestureNavContract gestureNavContract = null;
        if (Utilities.ATLEAST_R && (bundleExtra = intent.getBundleExtra("gesture_nav_contract_v1")) != null) {
            intent.removeExtra("gesture_nav_contract_v1");
            ComponentName componentName = (ComponentName) bundleExtra.getParcelable("android.intent.extra.COMPONENT_NAME");
            UserHandle userHandle = (UserHandle) bundleExtra.getParcelable("android.intent.extra.USER");
            Message message = (Message) bundleExtra.getParcelable("android.intent.extra.REMOTE_CALLBACK");
            if (componentName != null && userHandle != null && message != null && message.replyTo != null) {
                gestureNavContract = new GestureNavContract(componentName, userHandle, message);
            }
        }
        if (gestureNavContract != null) {
            AbstractFloatingView.closeOpenViews(this, false, 8192);
            FloatingSurfaceView.show(this, gestureNavContract);
        }
    }

    public void handleSplitAnimationGoingToHome() {
    }

    public final boolean initDeviceProfile(InvariantDeviceProfile invariantDeviceProfile) {
        DeviceProfile deviceProfile = invariantDeviceProfile.getDeviceProfile(this);
        if (this.mDeviceProfile == deviceProfile) {
            return false;
        }
        this.mDeviceProfile = deviceProfile;
        if (isInMultiWindowMode()) {
            this.mDeviceProfile = this.mDeviceProfile.getMultiWindowProfile(this, getMultiWindowDisplaySize());
        }
        onDeviceProfileInitiated();
        if (FeatureFlags.FOLDABLE_SINGLE_PAGE.get()) {
            DeviceProfile deviceProfile2 = this.mDeviceProfile;
            if (deviceProfile2.isTwoPanels) {
                this.mCellPosMapper = new CellPosMapper.TwoPanelCellPosMapper(deviceProfile2.inv.numColumns);
                this.mModelWriter = this.mModel.getWriter(getDeviceProfile().isVerticalBarLayout(), true, this.mCellPosMapper, this);
                return true;
            }
        }
        this.mCellPosMapper = CellPosMapper.DEFAULT;
        this.mModelWriter = this.mModel.getWriter(getDeviceProfile().isVerticalBarLayout(), true, this.mCellPosMapper, this);
        return true;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void invalidateParent(ItemInfo itemInfo) {
        int i4 = itemInfo.container;
        if (i4 >= 0) {
            View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(i4);
            if ((homescreenIconByItemId instanceof FolderIcon) && (homescreenIconByItemId.getTag() instanceof FolderInfo)) {
                FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(getDeviceProfile().inv);
                folderGridOrganizer.setFolderInfo((FolderInfo) homescreenIconByItemId.getTag());
                if (folderGridOrganizer.isItemInPreview(0, itemInfo.rank)) {
                    homescreenIconByItemId.invalidate();
                }
            }
        }
    }

    public final boolean isDraggingEnabled() {
        return !this.mWorkspaceLoading;
    }

    public final boolean isHotseatLayout(View view) {
        Hotseat hotseat = this.mHotseat;
        return hotseat != null && view == hotseat;
    }

    public final boolean isTouchInProgress() {
        return this.mTouchInProgress;
    }

    public final boolean isWorkspaceLoading() {
        return this.mWorkspaceLoading;
    }

    public final boolean isWorkspaceLocked() {
        return this.mWorkspaceLoading || this.mPendingRequestArgs != null;
    }

    public void launchAppPair(WorkspaceItemInfo workspaceItemInfo, WorkspaceItemInfo workspaceItemInfo2) {
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, Intent intent) {
        this.mPendingActivityRequestCode = -1;
        handleActivityResult(i4, i5, intent);
    }

    public void onAllAppsTransition(float f4) {
    }

    public final void onAssistantVisibilityChanged(float f4) {
        this.mHotseat.getQsb().setAlpha(1.0f - f4);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mOverlayManager.onAttachedToWindow();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        getOnBackAnimationCallback().onBackInvoked();
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [com.android.launcher3.Q] */
    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        StatsLogManager.StatsLatencyLogger.LatencyType latencyType;
        int[] intArray;
        if (sIsNewProcess) {
            MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
            latencyType = LockedUserState.Companion.get(this).isUserUnlockedAtLauncherStartup() ? StatsLogManager.StatsLatencyLogger.LatencyType.COLD : StatsLogManager.StatsLatencyLogger.LatencyType.COLD_DEVICE_REBOOTING;
        } else {
            latencyType = StatsLogManager.StatsLatencyLogger.LatencyType.WARM;
        }
        StartupLatencyLogger createStartupLatencyLogger = createStartupLatencyLogger(latencyType);
        this.mStartupLatencyLogger = createStartupLatencyLogger;
        sIsNewProcess = false;
        StatsLogManager.LauncherLatencyEvent launcherLatencyEvent = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION;
        createStartupLatencyLogger.getClass();
        createStartupLatencyLogger.logStart(launcherLatencyEvent, SystemClock.elapsedRealtime());
        StatsLogManager.LauncherLatencyEvent launcherLatencyEvent2 = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE;
        createStartupLatencyLogger.logStart(launcherLatencyEvent2, SystemClock.elapsedRealtime());
        if (Utilities.ATLEAST_S) {
            Trace.beginAsyncSection("DisplayWorkspaceFirstFrame", 0);
            Trace.beginAsyncSection("DisplayAllApps", 1);
        }
        TraceHelper.INSTANCE.beginSection("Launcher.onCreate");
        super.onCreate(bundle);
        LauncherAppState launcherAppState = LauncherAppState.getInstance(this);
        this.mModel = launcherAppState.getModel();
        this.mRotationHelper = new RotationHelper(this);
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
        initDeviceProfile(invariantDeviceProfile);
        invariantDeviceProfile.addOnChangeListener(this);
        this.mSharedPrefs = LauncherPrefs.getPrefs(this);
        this.mIconCache = launcherAppState.getIconCache();
        this.mAccessibilityDelegate = createAccessibilityDelegate();
        this.mDragController = new LauncherDragController(this);
        this.mAllAppsController = new AllAppsTransitionController(this);
        this.mStateManager = new StateManager(this, LauncherState.NORMAL);
        this.mOnboardingPrefs = createOnboardingPrefs(this.mSharedPrefs);
        this.mBaseSearchConfig = new BaseSearchConfig();
        setupViews();
        this.mAppWidgetManager = new WidgetManagerHelper(this);
        LauncherWidgetHolder createAppWidgetHolder = createAppWidgetHolder();
        this.mAppWidgetHolder = createAppWidgetHolder;
        createAppWidgetHolder.startListening();
        this.mPopupDataProvider = new PopupDataProvider(new G(this, 1));
        boolean handleCreate = ACTIVITY_TRACKER.handleCreate(this);
        if (handleCreate && bundle != null) {
            bundle.remove("launcher.state");
        }
        restoreState(bundle);
        this.mStateManager.reapplyState(false);
        if (bundle != null && (intArray = bundle.getIntArray("launcher.current_screen_ids")) != null) {
            this.mPagesToBindSynchronously = IntSet.wrap(intArray);
        }
        StartupLatencyLogger startupLatencyLogger = this.mStartupLatencyLogger;
        startupLatencyLogger.getClass();
        startupLatencyLogger.logWorkspaceLoadStartTime(SystemClock.elapsedRealtime());
        if (!this.mModel.addCallbacksAndLoad(this) && !handleCreate) {
            final Boolean bool = Boolean.FALSE;
            Objects.requireNonNull(bool);
            this.mOnInitialBindListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher3.Q
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return bool.booleanValue();
                }
            };
        }
        setDefaultKeyMode(3);
        setContentView(getRootView());
        ComposeInitializer.initCompose(this);
        if (this.mOnInitialBindListener != null) {
            getRootView().getViewTreeObserver().addOnPreDrawListener(this.mOnInitialBindListener);
        }
        getRootView().dispatchInsets();
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this)).addListener(this.mScreenOnListener);
        SystemUiController systemUiController = getSystemUiController();
        boolean attrBoolean = Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, this);
        systemUiController.getClass();
        systemUiController.updateUiState(0, attrBoolean ? 5 : 10);
        NexusLauncher nexusLauncher = this.mLauncherCallbacks;
        if (nexusLauncher != null) {
            nexusLauncher.f6471b = new QsbTransitionManager(nexusLauncher.f6470a);
        }
        this.mOverlayManager = getDefaultOverlay();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(this)).addPluginListener(this, n1.i.class, false);
        this.mRotationHelper.initialize();
        TraceHelper.INSTANCE.endSection();
        if (Utilities.ATLEAST_R) {
            getWindow().setSoftInputMode(48);
        }
        setTitle(R.string.home_screen);
        this.mStartupLatencyLogger.logEnd(launcherLatencyEvent2);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return (FeatureFlags.SHOW_DOT_PAGINATION.get() && WorkspacePageIndicator.class.getName().equals(str)) ? LayoutInflater.from(context).inflate(R.layout.page_indicator_dots, (ViewGroup) view, false) : super.onCreateView(view, str, context, attributeSet);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onDeferredResumed() {
        logStopAndResume(true);
        ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).resumeModelPush(1);
        this.mModel.validateModelDataOnResume();
        NotificationListener.addNotificationsChangedListener(this.mPopupDataProvider);
        DiscoveryBounce.showForHomeIfNeeded(this);
        this.mAppWidgetHolder.setActivityResumed(true);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ACTIVITY_TRACKER.onActivityDestroyed(this);
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this)).removeListener(this.mScreenOnListener);
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        workspace.mapOverItems(new Workspace.AnonymousClass6(workspace, 0));
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(this)).removePluginListener(this);
        this.mModel.removeCallbacks(this);
        this.mRotationHelper.destroy();
        try {
            this.mAppWidgetHolder.stopListening();
        } catch (NullPointerException e4) {
            Log.w("Launcher", "problem while stopping AppWidgetHost during Launcher destruction", e4);
        }
        this.mAppWidgetHolder.destroy();
        TextKeyListener.getInstance().release();
        clearPendingBinds();
        LauncherAppState.getIDP(this).removeOnChangeListener(this);
        this.mOverlayManager.onActivityDestroyed(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mOverlayManager.onDetachedFromWindow();
        closeContextMenu();
    }

    public final void onDragLayerHierarchyChanged() {
        updateDisallowBack();
    }

    @Override // android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        this.mRotationHelper.setCurrentTransitionRequest();
        if (Utilities.ATLEAST_S) {
            return;
        }
        AbstractFloatingView.closeOpenViews(this, false, 8192);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final void onHandleConfigurationChanged() {
        Trace.beginSection("Launcher#onHandleconfigurationChanged");
        try {
            if (initDeviceProfile(this.mDeviceProfile.inv)) {
                dispatchDeviceProfileChanged();
                reapplyUi();
                this.mDragLayer.recreateControllers();
                onSaveInstanceState(new Bundle());
                this.mModel.rebindCallbacks();
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void onInitialBindComplete(IntSet intSet, RunnableList runnableList, int i4, boolean z4) {
        this.mSynchronouslyBoundPages = intSet;
        this.mPagesToBindSynchronously = new IntSet();
        clearPendingBinds();
        ViewOnDrawExecutor viewOnDrawExecutor = new ViewOnDrawExecutor(runnableList);
        this.mPendingExecutor = viewOnDrawExecutor;
        if (!isInState(LauncherState.ALL_APPS)) {
            this.mAppsView.getAppsStore().enableDeferUpdates(1);
            runnableList.add(new W(this, 4));
        }
        if (this.mOnInitialBindListener != null) {
            getRootView().getViewTreeObserver().removeOnPreDrawListener(this.mOnInitialBindListener);
            this.mOnInitialBindListener = null;
        }
        viewOnDrawExecutor.onLoadAnimationCompleted();
        viewOnDrawExecutor.attachTo(this);
        if (Utilities.ATLEAST_S) {
            Trace.endAsyncSection("DisplayWorkspaceFirstFrame", 0);
        }
        StartupLatencyLogger startupLatencyLogger = this.mStartupLatencyLogger;
        startupLatencyLogger.logCardinality(i4);
        startupLatencyLogger.logEnd(z4 ? StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC : StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC);
        getRootView().getViewTreeObserver().addOnDrawListener(new AnonymousClass8());
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 111) {
            closeOpenViews(true);
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // android.app.Activity
    public final boolean onKeyShortcut(int i4, KeyEvent keyEvent) {
        if (keyEvent.hasModifiers(4096)) {
            if (i4 != 29) {
                if (i4 != 51) {
                    for (BaseAccessibilityDelegate.LauncherAction launcherAction : LauncherAccessibilityDelegate.getSupportedActions(this, getCurrentFocus())) {
                        if (launcherAction.keyCode == i4) {
                            return launcherAction.invokeFromKeyboard(getCurrentFocus());
                        }
                    }
                } else if (isInState(LauncherState.NORMAL)) {
                    OptionsPopupView.openWidgets(this);
                    return true;
                }
            } else if (isInState(LauncherState.NORMAL)) {
                getStateManager().goToState(LauncherState.ALL_APPS);
                return true;
            }
        }
        return super.onKeyShortcut(i4, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 == 82) {
            if (!this.mDragController.isDragging() && !this.mWorkspace.isSwitchingState() && isInState(LauncherState.NORMAL)) {
                closeOpenViews(true);
                if (Utilities.isRunningInTestHarness()) {
                    Log.d("TaplTarget", "Opening options popup on key up");
                }
                showDefaultOptions(-1.0f, -1.0f);
            }
            return true;
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z4, Configuration configuration) {
        super.onMultiWindowModeChanged(z4, configuration);
        initDeviceProfile(this.mDeviceProfile.inv);
        dispatchDeviceProfileChanged();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        if (Utilities.isRunningInTestHarness()) {
            Log.d("TaplTarget", "Launcher.onNewIntent: " + intent);
        }
        TraceHelper.INSTANCE.beginSection("Launcher.onNewIntent");
        super.onNewIntent(intent);
        boolean z4 = false;
        boolean z5 = hasWindowFocus() && (intent.getFlags() & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 4194304;
        boolean z6 = z5 && isInState(LauncherState.NORMAL) && AbstractFloatingView.getTopOpenView(this) == null;
        boolean equals = "android.intent.action.MAIN".equals(intent.getAction());
        boolean handleNewIntent = ACTIVITY_TRACKER.handleNewIntent(this);
        if (equals) {
            if (!handleNewIntent) {
                AbstractFloatingView.closeAllOpenViewsExcept(this, isStarted(), 256);
                LauncherState launcherState = LauncherState.NORMAL;
                if (!isInState(launcherState)) {
                    StateManager stateManager = this.mStateManager;
                    stateManager.goToState(launcherState, stateManager.shouldAnimateStateChange());
                }
                if (!z5) {
                    this.mAppsView.reset(isStarted(), true);
                }
                if (z6 && !this.mWorkspace.isHandlingTouch()) {
                    Workspace workspace = this.mWorkspace;
                    Objects.requireNonNull(workspace);
                    workspace.post(new X(2, workspace));
                }
            }
            NexusLauncher nexusLauncher = this.mLauncherCallbacks;
            if (nexusLauncher != null && !handleNewIntent && nexusLauncher.f6471b.f7530f) {
                nexusLauncher.f6470a.getStateManager().goToState(LauncherState.NORMAL, false);
            }
            if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
                handleSplitAnimationGoingToHome();
            }
            InterfaceC1364d interfaceC1364d = this.mOverlayManager;
            if (isStarted() && !isForceInvisible()) {
                z4 = true;
            }
            interfaceC1364d.k(z4);
            handleGestureContract(intent);
        } else if ("android.intent.action.ALL_APPS".equals(intent.getAction())) {
            showAllAppsFromIntent(z5);
        } else if ("launcher.intent_action_all_apps_toggle".equals(intent.getAction())) {
            StateManager stateManager2 = getStateManager();
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            if (stateManager2.isInStableState(allAppsState)) {
                getStateManager().goToState(LauncherState.NORMAL, z5);
            } else {
                AbstractFloatingView.closeAllOpenViews(this);
                getStateManager().goToState((BaseState) allAppsState, true, (Animator.AnimatorListener) new AnimationSuccessListener() { // from class: com.android.launcher3.Launcher.5
                    @Override // com.android.launcher3.anim.AnimationSuccessListener
                    public final void onAnimationSuccess(Animator animator) {
                        if (Launcher.this.mAppsView.getSearchUiManager().getEditText() != null) {
                            Launcher.this.mAppsView.getSearchUiManager().getEditText().requestFocus();
                        }
                    }
                });
            }
        } else if ("android.intent.action.SHOW_WORK_APPS".equals(intent.getAction())) {
            showAllAppsFromIntent(z5);
            this.mAppsView.switchToTab();
        }
        TraceHelper.INSTANCE.endSection();
    }

    public void onOverlayVisibilityChanged(boolean z4) {
        StatsLogManager.StatsLogger withDstState = getStatsLogManager().logger().withSrcState(2).withDstState(2);
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
        newBuilder2.setPageIndex$1(z4 ? 0 : -1);
        newBuilder.setWorkspace(newBuilder2);
        withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(z4 ? StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT : StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT);
    }

    public void onPageEndTransition() {
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onPause() {
        ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).pauseModelPush(1);
        super.onPause();
        this.mDragController.cancelDrag();
        this.mLastTouchUpTime = -1L;
        this.mDropTargetBar.animateToVisibility(false);
        if (!this.mDeferOverlayCallbacks) {
            this.mOverlayManager.onActivityPaused(this);
        }
        this.mAppWidgetHolder.setActivityResumed(false);
    }

    @Override // n1.k
    public final void onPluginConnected(n1.j jVar, Context context) {
        final n1.i iVar = (n1.i) jVar;
        switchOverlay(new Supplier() { // from class: com.android.launcher3.P
            @Override // java.util.function.Supplier
            public final Object get() {
                Launcher launcher = Launcher.this;
                n1.i iVar2 = iVar;
                launcher.getClass();
                return iVar2.b();
            }
        });
    }

    @Override // n1.k
    public final /* bridge */ /* synthetic */ void onPluginDisconnected(n1.j jVar) {
        n1.i iVar = (n1.i) jVar;
        onPluginDisconnected();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i4) {
        ArrayList arrayList = new ArrayList();
        if (isInState(LauncherState.NORMAL)) {
            arrayList.add(new KeyboardShortcutInfo(getString(R.string.all_apps_button_label), 29, 4096));
            arrayList.add(new KeyboardShortcutInfo(getString(R.string.widget_button_text), 51, 4096));
        }
        LauncherAccessibilityDelegate.getSupportedActions(this, getCurrentFocus()).forEach(new V(2, arrayList));
        if (!arrayList.isEmpty()) {
            list.add(new KeyboardShortcutGroup(getString(R.string.home_screen), arrayList));
        }
        super.onProvideKeyboardShortcuts(list, menu, i4);
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        IntSet intSet = this.mSynchronouslyBoundPages;
        if (intSet != null) {
            intSet.forEach(new G(this, 0));
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        TraceHelper.INSTANCE.beginSection("Launcher.onResume");
        super.onResume();
        if (this.mDeferOverlayCallbacks) {
            Handler handler = this.mHandler;
            W w4 = this.mDeferredOverlayCallbacks;
            handler.removeCallbacks(w4);
            Utilities.postAsyncCallback(this.mHandler, w4);
        } else {
            this.mOverlayManager.onActivityResumed(this);
        }
        int i4 = DragView.f4582d;
        BaseDragLayer dragLayer = getDragLayer();
        int childCount = dragLayer.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                TraceHelper.INSTANCE.endSection();
                return;
            }
            View childAt = dragLayer.getChildAt(childCount);
            if (childAt instanceof DragView) {
                dragLayer.removeView(childAt);
            }
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        NonConfigInstance nonConfigInstance = new NonConfigInstance(0);
        nonConfigInstance.config = new Configuration(this.mOldConfig);
        return nonConfigInstance;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putIntArray("launcher.current_screen_ids", this.mWorkspace.getCurrentPageScreenIds().getArray().toArray());
        bundle.putInt("launcher.state", ((LauncherState) this.mStateManager.getState()).ordinal);
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
        if (openView != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            openView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("launcher.widget_panel", sparseArray);
        } else {
            bundle.remove("launcher.widget_panel");
        }
        AbstractFloatingView.closeAllOpenViewsExcept(this, isStarted() && !isForceInvisible(), AbstractFloatingView.TYPE_REBIND_SAFE);
        finishAutoCancelActionMode();
        PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        if (pendingRequestArgs != null) {
            bundle.putParcelable("launcher.request_args", pendingRequestArgs);
        }
        bundle.putInt("launcher.request_code", this.mPendingActivityRequestCode);
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            bundle.putParcelable("launcher.activity_result", activityResultInfo);
        }
        super.onSaveInstanceState(bundle);
        this.mOverlayManager.onActivitySaveInstanceState(this, bundle);
    }

    public void onScreenOnChanged(boolean z4) {
        if (z4 || this.mPendingRequestArgs != null) {
            return;
        }
        LauncherState launcherState = LauncherState.NORMAL;
        if (!isInState(launcherState)) {
            onUiChangedWhileSleeping();
        }
        this.mStateManager.goToState(launcherState);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onStart() {
        TraceHelper.INSTANCE.beginSection("Launcher.onStart");
        super.onStart();
        if (!this.mDeferOverlayCallbacks) {
            this.mOverlayManager.onActivityStarted(this);
        }
        this.mAppWidgetHolder.setActivityStarted(true);
        TraceHelper.INSTANCE.endSection();
    }

    public void onStateBack() {
        ((LauncherState) this.mStateManager.getState()).onBackPressed(this);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public final void onStateSetStart(BaseState baseState) {
        LauncherState launcherState = (LauncherState) baseState;
        super.onStateSetStart(launcherState);
        if (this.mDeferOverlayCallbacks) {
            Handler handler = this.mHandler;
            W w4 = this.mDeferredOverlayCallbacks;
            handler.removeCallbacks(w4);
            Utilities.postAsyncCallback(this.mHandler, w4);
        }
        addActivityFlags(64);
        if (launcherState == LauncherState.SPRING_LOADED || launcherState == LauncherState.EDIT_MODE) {
            ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).pauseModelPush(4);
            this.mRotationHelper.setCurrentStateRequest(2);
            this.mWorkspace.showPageIndicatorAtCurrentScroll();
            this.mWorkspace.setClipChildren(false);
        }
        ((PageIndicator) this.mWorkspace.getPageIndicator()).setShouldAutoHide(!launcherState.hasFlag(4));
        LauncherState launcherState2 = (LauncherState) this.mStateManager.getCurrentStableState();
        this.mPrevLauncherState = launcherState2;
        if (launcherState2 != launcherState && LauncherState.ALL_APPS.equals(launcherState) && this.mAllAppsSessionLogId == null) {
            this.mAllAppsSessionLogId = new InstanceIdSequence().newInstanceId();
            if (getAllAppsEntryEvent().isPresent()) {
                StatsLogManager.StatsLogger logger = getStatsLogManager().logger();
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
                newBuilder2.setPageIndex$1(this.mWorkspace.getCurrentPage());
                newBuilder.setWorkspace(newBuilder2);
                logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log((StatsLogManager.EventEnum) getAllAppsEntryEvent().get());
            }
        }
        updateDisallowBack();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.mDeferOverlayCallbacks) {
            checkIfOverlayStillDeferred();
        } else {
            this.mOverlayManager.onActivityStopped(this);
        }
        hideKeyboard();
        logStopAndResume(false);
        this.mAppWidgetHolder.setActivityStarted(false);
        NotificationListener.removeNotificationsChangedListener(this.mPopupDataProvider);
        FloatingIconView.resetIconLoadResult();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        super.onTrimMemory(i4);
        if (i4 >= 20) {
            SQLiteDatabase.releaseMemory();
        }
    }

    public void onWidgetsTransition(float f4) {
        float mapToRange = Utilities.mapToRange(f4, 0.0f, 1.0f, 1.0f, this.mDeviceProfile.bottomSheetWorkspaceScale, y0.e.f12937a);
        WORKSPACE_WIDGET_SCALE.set((FloatProperty) this.mWorkspace, Float.valueOf(mapToRange));
        HOTSEAT_WIDGET_SCALE.set((FloatProperty) this.mHotseat, Float.valueOf(mapToRange));
    }

    public void pauseExpensiveViewUpdates() {
        ((PageIndicator) this.mWorkspace.getPageIndicator()).pauseAnimations();
        this.mWorkspace.mapOverItems(new I(1));
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void preAddApps() {
        this.mModelWriter.commitDelete();
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 128);
        if (openView != null) {
            openView.post(new X(5, openView));
        }
    }

    public final void refreshAndBindWidgetsForPackageUser(PackageUserKey packageUserKey) {
        LauncherModel launcherModel = this.mModel;
        launcherModel.getClass();
        launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass2(packageUserKey, 2));
    }

    public final void removeItem(View view, ItemInfo itemInfo, boolean z4, String str) {
        if (itemInfo instanceof WorkspaceItemInfo) {
            View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(itemInfo.container);
            if (homescreenIconByItemId instanceof FolderIcon) {
                FolderInfo folderInfo = (FolderInfo) homescreenIconByItemId.getTag();
                folderInfo.getClass();
                folderInfo.removeAll(Collections.singletonList((WorkspaceItemInfo) itemInfo), true);
            } else {
                this.mWorkspace.removeWorkspaceItem(view);
            }
            if (z4) {
                this.mModelWriter.deleteItemFromDatabase(itemInfo, str);
            }
        } else if (itemInfo instanceof FolderInfo) {
            FolderInfo folderInfo2 = (FolderInfo) itemInfo;
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).removeListeners();
            }
            this.mWorkspace.removeWorkspaceItem(view);
            if (z4) {
                this.mModelWriter.deleteFolderAndContentsFromDatabase(folderInfo2);
            }
        } else if (itemInfo instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            this.mWorkspace.removeWorkspaceItem(view);
            if (z4) {
                this.mModelWriter.deleteWidgetInfo(launcherAppWidgetInfo, this.mAppWidgetHolder, str);
            }
        }
    }

    public void resumeExpensiveViewUpdates() {
        ((PageIndicator) this.mWorkspace.getPageIndicator()).skipAnimationsToEnd();
        this.mWorkspace.mapOverItems(new I(0));
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final void returnToHomescreen() {
        super.returnToHomescreen();
        getStateManager().goToState(LauncherState.NORMAL);
    }

    public final void setLauncherCallbacks(NexusLauncher nexusLauncher) {
        this.mLauncherCallbacks = nexusLauncher;
    }

    public final void setLauncherOverlay(InterfaceC1362b interfaceC1362b) {
        this.mWorkspace.setLauncherOverlay(interfaceC1362b);
    }

    public final void setOnDeferredActivityLaunchCallback(Runnable runnable) {
        this.mOnDeferredActivityLaunchCallback = runnable;
    }

    public final void setPagesToBindSynchronously(IntSet intSet) {
        this.mPagesToBindSynchronously = intSet;
    }

    public final void setWaitingForResult(PendingRequestArgs pendingRequestArgs) {
        this.mPendingRequestArgs = pendingRequestArgs;
    }

    public void setupViews() {
        StartupLatencyLogger startupLatencyLogger = this.mStartupLatencyLogger;
        StatsLogManager.LauncherLatencyEvent launcherLatencyEvent = StatsLogManager.LauncherLatencyEvent.LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION;
        startupLatencyLogger.getClass();
        startupLatencyLogger.logStart(launcherLatencyEvent, SystemClock.elapsedRealtime());
        inflateRootView(R.layout.launcher);
        this.mStartupLatencyLogger.logEnd(launcherLatencyEvent);
        DragLayer dragLayer = (DragLayer) findViewById(R.id.drag_layer);
        this.mDragLayer = dragLayer;
        this.mFocusHandler = dragLayer.getFocusIndicatorHelper();
        Workspace workspace = (Workspace) this.mDragLayer.findViewById(R.id.workspace);
        this.mWorkspace = workspace;
        workspace.initParentViews(this.mDragLayer);
        this.mOverviewPanel = findViewById(R.id.overview_panel);
        Hotseat hotseat = (Hotseat) findViewById(R.id.hotseat);
        this.mHotseat = hotseat;
        hotseat.setWorkspace(this.mWorkspace);
        this.mDragLayer.setup(this.mDragController, this.mWorkspace);
        this.mWorkspace.setup(this.mDragController);
        this.mWorkspace.mWallpaperOffset.setLockToDefaultPage(true);
        this.mWorkspace.bindAndInitFirstWorkspaceScreen();
        this.mDragController.addDragListener(this.mWorkspace);
        this.mDropTargetBar = (DropTargetBar) this.mDragLayer.findViewById(R.id.drop_target_bar);
        ActivityAllAppsContainerView activityAllAppsContainerView = (ActivityAllAppsContainerView) findViewById(R.id.apps_view);
        this.mAppsView = activityAllAppsContainerView;
        activityAllAppsContainerView.setAllAppsTransitionController(this.mAllAppsController);
        this.mScrimView = (ScrimView) findViewById(R.id.scrim_view);
        this.mDropTargetBar.setup(this.mDragController);
        this.mAllAppsController.setupViews(this.mScrimView, this.mAppsView);
        if (FeatureFlags.SHOW_DOT_PAGINATION.get()) {
            ((PageIndicator) this.mWorkspace.getPageIndicator()).setShouldAutoHide(true);
            ((PageIndicator) this.mWorkspace.getPageIndicator()).setPaintColor(Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, this) ? -16777216 : -1);
        }
    }

    public void showAllAppsFromIntent(boolean z4) {
        AbstractFloatingView.closeAllOpenViews(this);
        getStateManager().goToState(LauncherState.ALL_APPS, z4);
    }

    public void showDefaultOptions(float f4, float f5) {
        OptionsPopupView.show(this, getPopupTarget(f4, f5), OptionsPopupView.getOptions(this), false);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i4, Bundle bundle) {
        if (i4 != -1) {
            this.mPendingActivityRequestCode = i4;
        }
        super.startActivityForResult(intent, i4, bundle);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public RunnableList startActivitySafely(final View view, final Intent intent, final ItemInfo itemInfo) {
        if (hasBeenResumed()) {
            RunnableList startActivitySafely = super.startActivitySafely(view, intent, itemInfo);
            if (startActivitySafely != null && (view instanceof BubbleTextView)) {
                BubbleTextView bubbleTextView = (BubbleTextView) view;
                bubbleTextView.setStayPressed(true);
                startActivitySafely.add(new X(1, bubbleTextView));
            }
            return startActivitySafely;
        }
        final RunnableList runnableList = new RunnableList();
        addOnResumeCallback(new Runnable() { // from class: com.android.launcher3.N
            @Override // java.lang.Runnable
            public final void run() {
                Launcher launcher = Launcher.this;
                View view2 = view;
                Intent intent2 = intent;
                ItemInfo itemInfo2 = itemInfo;
                RunnableList runnableList2 = runnableList;
                RunnableList startActivitySafely2 = launcher.startActivitySafely(view2, intent2, itemInfo2);
                if (startActivitySafely2 == null) {
                    runnableList2.executeAllAndDestroy();
                    return;
                }
                Objects.requireNonNull(runnableList2);
                startActivitySafely2.add(new X(3, runnableList2));
            }
        });
        Runnable runnable = this.mOnDeferredActivityLaunchCallback;
        if (runnable != null) {
            runnable.run();
            this.mOnDeferredActivityLaunchCallback = null;
        }
        return runnableList;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void startBinding() {
        TraceHelper.INSTANCE.beginSection("startBinding");
        AbstractFloatingView.closeOpenViews(this, true, 2661771);
        this.mWorkspaceLoading = true;
        this.mDragController.cancelDrag();
        Workspace workspace = this.mWorkspace;
        workspace.getClass();
        workspace.mapOverItems(new Workspace.AnonymousClass6(workspace, 1));
        this.mWorkspace.removeAllWorkspaceScreens();
        this.mAppWidgetHolder.clearViews();
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            hotseat.resetLayout(getDeviceProfile().isVerticalBarLayout());
        }
        TraceHelper.INSTANCE.endSection();
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i4, Intent intent, int i5, int i6, int i7, Bundle bundle) {
        if (i4 != -1) {
            this.mPendingActivityRequestCode = i4;
        }
        try {
            super.startIntentSenderForResult(intentSender, i4, intent, i5, i6, i7, bundle);
        } catch (IntentSender.SendIntentException unused) {
            throw new ActivityNotFoundException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r6 == false) goto L13;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startSearch(java.lang.String r3, boolean r4, android.os.Bundle r5, boolean r6) {
        /*
            r2 = this;
            if (r5 != 0) goto Le
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r6 = "source"
            java.lang.String r0 = "launcher-search"
            r5.putString(r6, r0)
        Le:
            com.google.android.apps.nexuslauncher.NexusLauncher r6 = r2.mLauncherCallbacks
            r0 = 1
            if (r6 == 0) goto L2c
            com.android.launcher3.Launcher r6 = r6.f6470a
            r1 = 2131362512(0x7f0a02d0, float:1.8344807E38)
            android.view.View r6 = r6.findViewById(r1)
            boolean r1 = r6 instanceof W1.p
            if (r1 == 0) goto L29
            W1.p r6 = (W1.p) r6
            com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget r1 = com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget.NONE
            r6.b(r3, r1)
            r6 = r0
            goto L2a
        L29:
            r6 = 0
        L2a:
            if (r6 != 0) goto L2f
        L2c:
            super.startSearch(r3, r4, r5, r0)
        L2f:
            com.android.launcher3.statemanager.StateManager r2 = r2.mStateManager
            com.android.launcher3.LauncherState r3 = com.android.launcher3.LauncherState.NORMAL
            r2.goToState(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.startSearch(java.lang.String, boolean, android.os.Bundle, boolean):void");
    }

    public boolean supportsAdaptiveIconAnimation() {
        return false;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void updateOpenFolderPosition(int[] iArr, Rect rect, int i4, int i5) {
        int max;
        int i6;
        int i7 = iArr[0];
        int i8 = iArr[1];
        DeviceProfile deviceProfile = getDeviceProfile();
        int paddingLeft = this.mWorkspace.getPaddingLeft();
        if (deviceProfile.isPhone && (i6 = deviceProfile.availableWidthPx - i4) < paddingLeft * 4) {
            i7 = i6 / 2;
        } else if (i4 >= rect.width()) {
            i7 = ((rect.width() - i4) / 2) + rect.left;
        }
        if (i5 >= rect.height()) {
            max = ((rect.height() - i5) / 2) + rect.top;
        } else {
            Rect absoluteOpenFolderBounds = deviceProfile.getAbsoluteOpenFolderBounds();
            i7 = Math.max(absoluteOpenFolderBounds.left, Math.min(i7, absoluteOpenFolderBounds.right - i4));
            max = Math.max(absoluteOpenFolderBounds.top, Math.min(i8, absoluteOpenFolderBounds.bottom - i5));
        }
        iArr[0] = i7;
        iArr[1] = max;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0135 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bindItems(java.util.List r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.bindItems(java.util.List, boolean, boolean):void");
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    public final void onPluginDisconnected() {
        switchOverlay(new Supplier() { // from class: com.android.launcher3.S
            @Override // java.util.function.Supplier
            public final Object get() {
                return Launcher.this.getDefaultOverlay();
            }
        });
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetEnd(LauncherState launcherState) {
        super.onStateSetEnd((BaseState) launcherState);
        LauncherWidgetHolder launcherWidgetHolder = this.mAppWidgetHolder;
        LauncherState launcherState2 = LauncherState.NORMAL;
        launcherWidgetHolder.setStateIsNormal(launcherState == launcherState2);
        this.mWorkspace.setClipChildren(!launcherState.hasFlag(4));
        finishAutoCancelActionMode();
        removeActivityFlags(64);
        getWindow().getDecorView().sendAccessibilityEvent(32);
        AccessibilityManagerCompat.sendStateEventToTest(launcherState.ordinal, this);
        if (launcherState == launcherState2) {
            ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).resumeModelPush(4);
            this.mRotationHelper.setCurrentStateRequest(0);
        }
        AllAppsState allAppsState = LauncherState.ALL_APPS;
        if (!allAppsState.equals(this.mPrevLauncherState) || allAppsState.equals(launcherState) || this.mAllAppsSessionLogId == null) {
            return;
        }
        this.mAppsView.reset(false, true);
        Optional allAppsExitEvent = getAllAppsExitEvent();
        StatsLogManager.StatsLogger logger = getStatsLogManager().logger();
        Objects.requireNonNull(logger);
        allAppsExitEvent.ifPresent(new V(1, logger));
        this.mAllAppsSessionLogId = null;
    }
}
