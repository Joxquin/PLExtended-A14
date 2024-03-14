package com.android.launcher3.dragndrop;

import android.app.ActivityOptions;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.RemoteViews;
import android.widget.TextView;
import android.window.RemoteTransition;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.dragndrop.AddItemActivity;
import com.android.launcher3.dragndrop.PinShortcutRequestActivityInfo;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.AddItemWidgetsBottomSheet;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.launcher3.widget.NavigableAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.WidgetCellPreview;
import com.android.launcher3.widget.WidgetImageView;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.launcher3.widget.WidgetSections;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.quickstep.util.FadeOutRemoteTransition;
import com.android.systemui.shared.R;
import f1.C0857g;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class AddItemActivity extends BaseActivity implements View.OnLongClickListener, View.OnTouchListener, AbstractSlideInView.OnCloseListener {
    private AccessibilityManager mAccessibilityManager;
    private LauncherAppState mApp;
    private WidgetManagerHelper mAppWidgetManager;
    private BaseDragLayer mDragLayer;
    private InvariantDeviceProfile mIdp;
    private int mPendingBindWidgetId;
    private LauncherApps.PinItemRequest mRequest;
    private AddItemWidgetsBottomSheet mSlideInView;
    private WidgetCell mWidgetCell;
    private Bundle mWidgetOptions;
    private final PointF mLastTouchPos = new PointF();
    private LauncherWidgetHolder mAppWidgetHolder = null;
    private boolean mFinishOnPause = false;

    /* renamed from: com.android.launcher3.dragndrop.AddItemActivity$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends View.DragShadowBuilder {
        @Override // android.view.View.DragShadowBuilder
        public final void onDrawShadow(Canvas canvas) {
        }

        @Override // android.view.View.DragShadowBuilder
        public final void onProvideShadowMetrics(Point point, Point point2) {
            point.set(10, 10);
            point2.set(5, 5);
        }
    }

    private void acceptWidget(int i4) {
        ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).queueItem(i4, this.mRequest.getAppWidgetProviderInfo(this));
        this.mWidgetOptions.putInt("appWidgetId", i4);
        this.mRequest.accept(this.mWidgetOptions);
        logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY);
        this.mSlideInView.close(true);
    }

    public static /* synthetic */ WidgetItem b(AddItemActivity addItemActivity, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        return new WidgetItem(launcherAppWidgetProviderInfo, addItemActivity.mIdp, addItemActivity.mApp.getIconCache(), addItemActivity.mApp.getContext());
    }

    public static /* synthetic */ WidgetItem d(AddItemActivity addItemActivity, PinShortcutRequestActivityInfo pinShortcutRequestActivityInfo) {
        return new WidgetItem(pinShortcutRequestActivityInfo, addItemActivity.mApp.getIconCache(), addItemActivity.getPackageManager());
    }

    private void logCommand(StatsLogManager.LauncherEvent launcherEvent) {
        getStatsLogManager().logger().withItemInfo((ItemInfo) this.mWidgetCell.getWidgetView().getTag()).log(launcherEvent);
    }

    private void sendWidgetAddedToScreenAccessibilityEvent(String str) {
        if (this.mAccessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
            obtain.setContentDescription(getApplicationContext().getResources().getString(R.string.added_to_home_screen_accessibility_text, str));
            this.mAccessibilityManager.sendAccessibilityEvent(obtain);
        }
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onActivityResult(int i4, int i5, Intent intent) {
        if (i4 != 1) {
            super.onActivityResult(i4, i5, intent);
            return;
        }
        int intExtra = intent != null ? intent.getIntExtra("appWidgetId", this.mPendingBindWidgetId) : this.mPendingBindWidgetId;
        if (i5 == -1) {
            acceptWidget(intExtra);
            return;
        }
        this.mAppWidgetHolder.deleteAppWidgetId(intExtra);
        this.mPendingBindWidgetId = -1;
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_BACK);
        this.mSlideInView.close(true);
    }

    public void onCancelClick(View view) {
        logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED);
        this.mSlideInView.close(true);
    }

    /* JADX WARN: Type inference failed for: r6v19, types: [J0.a] */
    /* JADX WARN: Type inference failed for: r6v3, types: [J0.a] */
    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        PackageItemInfo packageItemInfo;
        super.onCreate(bundle);
        Parcelable parcelableExtra = getIntent().getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        LauncherApps.PinItemRequest pinItemRequest = parcelableExtra instanceof LauncherApps.PinItemRequest ? (LauncherApps.PinItemRequest) parcelableExtra : null;
        this.mRequest = pinItemRequest;
        if (pinItemRequest == null) {
            finish();
            return;
        }
        LauncherAppState launcherAppState = LauncherAppState.getInstance(this);
        this.mApp = launcherAppState;
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
        this.mIdp = invariantDeviceProfile;
        this.mDeviceProfile = invariantDeviceProfile.getDeviceProfile(getApplicationContext());
        setContentView(R.layout.add_item_confirmation_activity);
        getWindow().setFlags(512, 512);
        BaseDragLayer baseDragLayer = (BaseDragLayer) findViewById(R.id.add_item_drag_layer);
        this.mDragLayer = baseDragLayer;
        baseDragLayer.recreateControllers();
        this.mWidgetCell = (WidgetCell) findViewById(R.id.widget_cell);
        this.mAccessibilityManager = (AccessibilityManager) getApplicationContext().getSystemService(AccessibilityManager.class);
        int requestType = this.mRequest.getRequestType();
        if (requestType != 1) {
            if (requestType == 2) {
                final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this, this.mRequest.getAppWidgetProviderInfo(this));
                int i4 = fromProviderInfo.minSpanX;
                InvariantDeviceProfile invariantDeviceProfile2 = this.mIdp;
                if (i4 <= invariantDeviceProfile2.numColumns && fromProviderInfo.minSpanY <= invariantDeviceProfile2.numRows) {
                    WidgetCell widgetCell = this.mWidgetCell;
                    Bundle extras = this.mRequest.getExtras();
                    widgetCell.setRemoteViewsPreview((extras == null || !(extras.get("appWidgetPreview") instanceof RemoteViews)) ? null : (RemoteViews) extras.get("appWidgetPreview"));
                    this.mAppWidgetManager = new WidgetManagerHelper(this);
                    this.mAppWidgetHolder = ((LauncherWidgetHolder.HolderFactory) ResourceBasedOverride.Overrides.getObject(R.string.widget_holder_factory_class, this, LauncherWidgetHolder.HolderFactory.class)).newInstance(this, null);
                    PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(fromProviderInfo, -113);
                    pendingAddWidgetInfo.spanX = Math.min(this.mIdp.numColumns, fromProviderInfo.spanX);
                    int min = Math.min(this.mIdp.numRows, fromProviderInfo.spanY);
                    pendingAddWidgetInfo.spanY = min;
                    this.mWidgetOptions = WidgetSizes.getWidgetSizeOptions(this, pendingAddWidgetInfo.componentName, pendingAddWidgetInfo.spanX, min);
                    this.mWidgetCell.getWidgetView().setTag(pendingAddWidgetInfo);
                    final ?? r6 = new Supplier(this) { // from class: J0.a

                        /* renamed from: b  reason: collision with root package name */
                        public final /* synthetic */ AddItemActivity f615b;

                        {
                            this.f615b = this;
                        }

                        @Override // java.util.function.Supplier
                        public final Object get() {
                            switch (r3) {
                                case 0:
                                    return AddItemActivity.d(this.f615b, (PinShortcutRequestActivityInfo) fromProviderInfo);
                                default:
                                    return AddItemActivity.b(this.f615b, (LauncherAppWidgetProviderInfo) fromProviderInfo);
                            }
                        }
                    };
                    new AsyncTask() { // from class: com.android.launcher3.dragndrop.AddItemActivity.2
                        @Override // android.os.AsyncTask
                        public final Object doInBackground(Object[] objArr) {
                            Void[] voidArr = (Void[]) objArr;
                            return (WidgetItem) r6.get();
                        }

                        @Override // android.os.AsyncTask
                        public final void onPostExecute(Object obj) {
                            WidgetCell widgetCell2 = AddItemActivity.this.mWidgetCell;
                            widgetCell2.getClass();
                            widgetCell2.applyFromCellItem((WidgetItem) obj, 1.0f, new C0857g(widgetCell2), null);
                        }
                    }.executeOnExecutor(Executors.MODEL_EXECUTOR, new Void[0]);
                    packageItemInfo = WidgetsModel.newPendingItemInfo(this, ((AppWidgetProviderInfo) fromProviderInfo).provider, fromProviderInfo.getProfile());
                }
            }
            packageItemInfo = null;
        } else {
            final PinShortcutRequestActivityInfo pinShortcutRequestActivityInfo = new PinShortcutRequestActivityInfo(this.mRequest, this);
            this.mWidgetCell.getWidgetView().setTag(new PendingAddShortcutInfo(pinShortcutRequestActivityInfo));
            final ?? r62 = new Supplier(this) { // from class: J0.a

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ AddItemActivity f615b;

                {
                    this.f615b = this;
                }

                @Override // java.util.function.Supplier
                public final Object get() {
                    switch (r3) {
                        case 0:
                            return AddItemActivity.d(this.f615b, (PinShortcutRequestActivityInfo) pinShortcutRequestActivityInfo);
                        default:
                            return AddItemActivity.b(this.f615b, (LauncherAppWidgetProviderInfo) pinShortcutRequestActivityInfo);
                    }
                }
            };
            new AsyncTask() { // from class: com.android.launcher3.dragndrop.AddItemActivity.2
                @Override // android.os.AsyncTask
                public final Object doInBackground(Object[] objArr) {
                    Void[] voidArr = (Void[]) objArr;
                    return (WidgetItem) r62.get();
                }

                @Override // android.os.AsyncTask
                public final void onPostExecute(Object obj) {
                    WidgetCell widgetCell2 = AddItemActivity.this.mWidgetCell;
                    widgetCell2.getClass();
                    widgetCell2.applyFromCellItem((WidgetItem) obj, 1.0f, new C0857g(widgetCell2), null);
                }
            }.executeOnExecutor(Executors.MODEL_EXECUTOR, new Void[0]);
            packageItemInfo = new PackageItemInfo(-1, this.mRequest.getShortcutInfo().getUserHandle(), this.mRequest.getShortcutInfo().getPackage());
        }
        if (packageItemInfo == null) {
            finish();
            return;
        }
        ApplicationInfo applicationInfo = new PackageManagerHelper(this).getApplicationInfo(0, packageItemInfo.user, packageItemInfo.packageName);
        if (applicationInfo == null) {
            finish();
            return;
        }
        WidgetCellPreview widgetCellPreview = (WidgetCellPreview) this.mWidgetCell.findViewById(R.id.widget_preview_container);
        widgetCellPreview.setOnTouchListener(this);
        widgetCellPreview.setOnLongClickListener(this);
        if (bundle == null) {
            logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_START);
        }
        TextView textView = (TextView) findViewById(R.id.widget_appName);
        int i5 = packageItemInfo.widgetCategory;
        WidgetSections.WidgetSection widgetSection = i5 != -1 ? (WidgetSections.WidgetSection) WidgetSections.getWidgetSections(this).get(i5) : null;
        textView.setText(widgetSection == null ? applicationInfo.loadLabel(getPackageManager()) : getString(widgetSection.mSectionTitle));
        AddItemWidgetsBottomSheet addItemWidgetsBottomSheet = (AddItemWidgetsBottomSheet) findViewById(R.id.add_item_bottom_sheet);
        this.mSlideInView = addItemWidgetsBottomSheet;
        addItemWidgetsBottomSheet.addOnCloseListener(this);
        this.mSlideInView.show();
        getSystemUiController().updateUiState(0, (getApplicationContext().getResources().getConfiguration().uiMode & 48) == 32 ? 2 : 1);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        LauncherWidgetHolder launcherWidgetHolder = this.mAppWidgetHolder;
        if (launcherWidgetHolder != null) {
            launcherWidgetHolder.destroy();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        PinItemDragListener pinItemDragListener;
        WidgetImageView widgetView = this.mWidgetCell.getWidgetView();
        NavigableAppWidgetHostView appWidgetHostViewPreview = this.mWidgetCell.getAppWidgetHostViewPreview();
        if (widgetView.getDrawable() == null && appWidgetHostViewPreview == null) {
            return false;
        }
        if (appWidgetHostViewPreview != null) {
            Rect rect = new Rect();
            appWidgetHostViewPreview.getWorkspaceVisualDragBounds(rect);
            float appWidgetHostViewScale = this.mWidgetCell.getAppWidgetHostViewScale();
            rect.offset(appWidgetHostViewPreview.getLeft() - ((int) (this.mLastTouchPos.x * appWidgetHostViewScale)), appWidgetHostViewPreview.getTop() - ((int) (this.mLastTouchPos.y * appWidgetHostViewScale)));
            pinItemDragListener = new PinItemDragListener(this.mRequest, rect, appWidgetHostViewPreview.getMeasuredWidth(), appWidgetHostViewPreview.getMeasuredWidth(), appWidgetHostViewScale);
        } else {
            Rect bitmapBounds = widgetView.getBitmapBounds();
            bitmapBounds.offset(widgetView.getLeft() - ((int) this.mLastTouchPos.x), widgetView.getTop() - ((int) this.mLastTouchPos.y));
            pinItemDragListener = new PinItemDragListener(this.mRequest, bitmapBounds, widgetView.getDrawable().getIntrinsicWidth(), widgetView.getWidth(), 1.0f);
        }
        view.startDragAndDrop(new ClipData(new ClipDescription("", new String[]{pinItemDragListener.a()}), new ClipData.Item("")), new AnonymousClass1(view), null, 256);
        Intent flags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(getPackageName()).setFlags(268435456);
        Launcher.ACTIVITY_TRACKER.registerCallback(pinItemDragListener);
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        makeBasic.setRemoteTransition(new RemoteTransition(new FadeOutRemoteTransition()));
        startActivity(flags, makeBasic.toBundle());
        logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED);
        this.mFinishOnPause = true;
        return false;
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.mFinishOnPause) {
            finish();
        }
    }

    public void onPlaceAutomaticallyClick(View view) {
        if (this.mRequest.getRequestType() == 1) {
            ShortcutInfo shortcutInfo = this.mRequest.getShortcutInfo();
            ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(this)).queueItem(shortcutInfo);
            logCommand(StatsLogManager.LauncherEvent.LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY);
            this.mRequest.accept();
            CharSequence longLabel = shortcutInfo.getLongLabel();
            if (TextUtils.isEmpty(longLabel)) {
                longLabel = shortcutInfo.getShortLabel();
            }
            sendWidgetAddedToScreenAccessibilityEvent(longLabel.toString());
            this.mSlideInView.close(true);
            return;
        }
        this.mPendingBindWidgetId = this.mAppWidgetHolder.allocateAppWidgetId();
        AppWidgetProviderInfo appWidgetProviderInfo = this.mRequest.getAppWidgetProviderInfo(this);
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(this.mPendingBindWidgetId, appWidgetProviderInfo, this.mWidgetOptions)) {
            sendWidgetAddedToScreenAccessibilityEvent(appWidgetProviderInfo.label);
            acceptWidget(this.mPendingBindWidgetId);
            return;
        }
        LauncherWidgetHolder launcherWidgetHolder = this.mAppWidgetHolder;
        int i4 = this.mPendingBindWidgetId;
        AppWidgetProviderInfo appWidgetProviderInfo2 = this.mRequest.getAppWidgetProviderInfo(this);
        launcherWidgetHolder.getClass();
        LauncherWidgetHolder.startBindFlow(this, i4, appWidgetProviderInfo2, 1);
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mPendingBindWidgetId = bundle.getInt("state.widget.id", this.mPendingBindWidgetId);
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("state.widget.id", this.mPendingBindWidgetId);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.mLastTouchPos.set(motionEvent.getX(), motionEvent.getY());
        return false;
    }
}
