package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.systemui.shared.R;
import java.net.URISyntaxException;
/* loaded from: classes.dex */
public class SecondaryDropTarget extends ButtonDropTarget implements OnAlarmListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4493d = 0;
    private final Alarm mCacheExpireAlarm;
    protected int mCurrentAccessibilityAction;
    private boolean mHadPendingAlarm;
    private final StatsLogManager mStatsLogManager;
    private final ArrayMap mUninstallDisabledCache;

    /* loaded from: classes.dex */
    public final class DeferredOnComplete implements DragSource {
        private final Context mContext;
        private DropTarget.DragObject mDragObject;
        private final DragSource mOriginal;
        protected String mPackageName;

        public DeferredOnComplete(DragSource dragSource, Context context) {
            this.mOriginal = dragSource;
            this.mContext = context;
        }

        @Override // com.android.launcher3.DragSource
        public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
            this.mDragObject = dragObject;
        }

        public final void onLauncherResume() {
            ApplicationInfo applicationInfo = new PackageManagerHelper(this.mContext).getApplicationInfo(8192, this.mDragObject.dragInfo.user, this.mPackageName);
            SecondaryDropTarget secondaryDropTarget = SecondaryDropTarget.this;
            if (applicationInfo != null) {
                sendFailure();
                secondaryDropTarget.mStatsLogManager.logger().withInstanceId(this.mDragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_UNINSTALL_CANCELLED);
                return;
            }
            DropTarget.DragObject dragObject = this.mDragObject;
            DragSource dragSource = this.mOriginal;
            dragObject.dragSource = dragSource;
            dragSource.onDropCompleted(secondaryDropTarget, dragObject, true);
            secondaryDropTarget.mStatsLogManager.logger().withInstanceId(this.mDragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_UNINSTALL_COMPLETED);
        }

        public final void sendFailure() {
            DropTarget.DragObject dragObject = this.mDragObject;
            DragSource dragSource = this.mOriginal;
            dragObject.dragSource = dragSource;
            dragObject.cancelled = true;
            dragSource.onDropCompleted(SecondaryDropTarget.this, dragObject, false);
        }
    }

    public SecondaryDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void doLog(InstanceId instanceId, ItemInfo itemInfo) {
        StatsLogManager.StatsLogger withInstanceId = this.mStatsLogManager.logger().withInstanceId(instanceId);
        if (itemInfo != null) {
            withInstanceId.withItemInfo(itemInfo);
        }
        int i4 = this.mCurrentAccessibilityAction;
        int i5 = LauncherAccessibilityDelegate.f4526d;
        if (i4 == R.id.action_uninstall) {
            withInstanceId.log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_UNINSTALL);
        } else if (i4 == R.id.action_dismiss_prediction) {
            withInstanceId.log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST);
        }
    }

    private int getButtonType(View view, ItemInfo itemInfo) {
        if (view instanceof AppWidgetHostView) {
            if (getReconfigurableWidgetId(view) != 0) {
                int i4 = LauncherAccessibilityDelegate.f4526d;
                return R.id.action_reconfigure;
            }
            return -1;
        } else if (itemInfo.isPredictedItem()) {
            int i5 = LauncherAccessibilityDelegate.f4526d;
            return R.id.action_dismiss_prediction;
        } else {
            Boolean bool = (Boolean) this.mUninstallDisabledCache.get(itemInfo.user);
            if (bool == null) {
                Bundle userRestrictions = ((UserManager) getContext().getSystemService("user")).getUserRestrictions(itemInfo.user);
                boolean z4 = false;
                bool = Boolean.valueOf((userRestrictions.getBoolean("no_control_apps", false) || userRestrictions.getBoolean("no_uninstall_apps", false)) ? true : true);
                this.mUninstallDisabledCache.put(itemInfo.user, bool);
            }
            this.mCacheExpireAlarm.setAlarm(5000L);
            this.mCacheExpireAlarm.setOnAlarmListener(this);
            if (bool.booleanValue()) {
                return -1;
            }
            if (itemInfo instanceof ItemInfoWithIcon) {
                int i6 = ((ItemInfoWithIcon) itemInfo).runtimeStatusFlags;
                if ((i6 & 192) != 0 && (i6 & 128) == 0) {
                    return -1;
                }
            }
            if (getUninstallTarget(itemInfo) == null) {
                return -1;
            }
            int i7 = LauncherAccessibilityDelegate.f4526d;
            return R.id.action_uninstall;
        }
    }

    private int getReconfigurableWidgetId(View view) {
        AppWidgetHostView appWidgetHostView;
        AppWidgetProviderInfo appWidgetInfo;
        if (!(view instanceof AppWidgetHostView) || (appWidgetInfo = (appWidgetHostView = (AppWidgetHostView) view).getAppWidgetInfo()) == null || appWidgetInfo.configure == null) {
            return 0;
        }
        if (((Utilities.ATLEAST_P ? ((AppWidgetProviderInfo) LauncherAppWidgetProviderInfo.fromProviderInfo(getContext(), appWidgetInfo)).widgetFeatures : 0) & 1) == 0) {
            return 0;
        }
        return appWidgetHostView.getAppWidgetId();
    }

    private ComponentName getUninstallTarget(ItemInfo itemInfo) {
        UserHandle userHandle;
        Intent intent;
        LauncherActivityInfo resolveActivity;
        if (itemInfo == null || itemInfo.itemType != 0) {
            userHandle = null;
            intent = null;
        } else {
            intent = itemInfo.getIntent();
            userHandle = itemInfo.user;
        }
        if (intent == null || (resolveActivity = ((LauncherApps) getContext().getSystemService(LauncherApps.class)).resolveActivity(intent, userHandle)) == null || (resolveActivity.getApplicationInfo().flags & 1) != 0) {
            return null;
        }
        return resolveActivity.getComponentName();
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void completeDrop(DropTarget.DragObject dragObject) {
        this.mDropTargetHandler.onSecondaryTargetCompleteDrop(performDropAction(this.mDropTargetHandler.getViewUnderDrag(dragObject.dragInfo), dragObject.dragInfo, dragObject.logInstanceId), dragObject);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final int getAccessibilityAction() {
        return this.mCurrentAccessibilityAction;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void onAccessibilityDrop(View view, ItemInfo itemInfo) {
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        doLog(newInstanceId, itemInfo);
        performDropAction(view, itemInfo, newInstanceId);
    }

    @Override // com.android.launcher3.OnAlarmListener
    public final void onAlarm(Alarm alarm) {
        this.mUninstallDisabledCache.clear();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHadPendingAlarm) {
            this.mCacheExpireAlarm.setAlarm(5000L);
            this.mCacheExpireAlarm.setOnAlarmListener(this);
            this.mHadPendingAlarm = false;
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mCacheExpireAlarm.alarmPending()) {
            this.mCacheExpireAlarm.cancelAlarm();
            this.mCacheExpireAlarm.setOnAlarmListener(null);
            this.mHadPendingAlarm = true;
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public final void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        dragObject.dragSource = new DeferredOnComplete(dragObject.dragSource, getContext());
        super.onDrop(dragObject, dragOptions);
        doLog(dragObject.logInstanceId, dragObject.originalDragInfo);
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i4 = LauncherAccessibilityDelegate.f4526d;
        setupUi(R.id.action_uninstall);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.launcher3.L0] */
    public final ComponentName performDropAction(View view, final ItemInfo itemInfo, final InstanceId instanceId) {
        int i4 = this.mCurrentAccessibilityAction;
        int i5 = LauncherAccessibilityDelegate.f4526d;
        if (i4 == R.id.action_reconfigure) {
            int reconfigurableWidgetId = getReconfigurableWidgetId(view);
            if (reconfigurableWidgetId != 0) {
                this.mDropTargetHandler.reconfigureWidget(reconfigurableWidgetId, itemInfo);
            }
            return null;
        } else if (i4 == R.id.action_dismiss_prediction) {
            if (FeatureFlags.ENABLE_DISMISS_PREDICTION_UNDO.get()) {
                this.mDropTargetHandler.dismissPrediction(getContext().getString(R.string.item_removed), new K0(), new Runnable() { // from class: com.android.launcher3.L0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecondaryDropTarget secondaryDropTarget = SecondaryDropTarget.this;
                        secondaryDropTarget.mStatsLogManager.logger().withInstanceId(instanceId).withItemInfo(itemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_DISMISS_PREDICTION_UNDO);
                    }
                });
            }
            return null;
        } else {
            ComponentName uninstallTarget = getUninstallTarget(itemInfo);
            if (uninstallTarget == null) {
                Toast.makeText(getContext(), (int) R.string.uninstall_system_app_text, 0).show();
                return null;
            }
            try {
                getContext().startActivity(Intent.parseUri(getContext().getString(R.string.delete_package_intent), 0).setData(Uri.fromParts("package", uninstallTarget.getPackageName(), uninstallTarget.getClassName())).putExtra("android.intent.extra.USER", itemInfo.user));
                FileLog.d("SecondaryDropTarget", "start uninstall activity " + uninstallTarget.getPackageName());
                return uninstallTarget;
            } catch (URISyntaxException unused) {
                Log.e("SecondaryDropTarget", "Failed to parse intent to start uninstall activity for item=" + itemInfo);
                return null;
            }
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void setupItemInfo(ItemInfo itemInfo) {
        int buttonType = getButtonType(this.mDropTargetHandler.getViewUnderDrag(itemInfo), itemInfo);
        if (buttonType != -1) {
            setupUi(buttonType);
        }
    }

    public final void setupUi(int i4) {
        if (i4 == this.mCurrentAccessibilityAction) {
            return;
        }
        this.mCurrentAccessibilityAction = i4;
        int i5 = LauncherAccessibilityDelegate.f4526d;
        if (i4 == R.id.action_uninstall) {
            setDrawable(R.drawable.ic_uninstall_no_shadow);
            setText(R.string.uninstall_drop_target_label);
            CharSequence text = getText();
            this.mText = text;
            setContentDescription(text);
        } else if (i4 == R.id.action_dismiss_prediction) {
            setDrawable(R.drawable.ic_block_no_shadow);
            setText(R.string.dismiss_prediction_label);
            CharSequence text2 = getText();
            this.mText = text2;
            setContentDescription(text2);
        } else if (i4 == R.id.action_reconfigure) {
            setDrawable(R.drawable.ic_setting);
            setText(R.string.gadget_setup_text);
            CharSequence text3 = getText();
            this.mText = text3;
            setContentDescription(text3);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final boolean supportsAccessibilityDrop(View view, ItemInfo itemInfo) {
        return getButtonType(view, itemInfo) != -1;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final boolean supportsDrop(ItemInfo itemInfo) {
        return getButtonType(this.mDropTargetHandler.getViewUnderDrag(itemInfo), itemInfo) != -1;
    }

    public SecondaryDropTarget(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mUninstallDisabledCache = new ArrayMap(1);
        this.mCurrentAccessibilityAction = -1;
        this.mCacheExpireAlarm = new Alarm();
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }
}
